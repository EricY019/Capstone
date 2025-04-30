; ModuleID = 'code/392-32672memcmp.c'
source_filename = "code/392-32672memcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"compare : \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" => [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_mem(i8* %p, i64 %n) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %pz = alloca i8*, align 8
  %c = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %cmp = icmp eq i8* null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8
  store i8* %1, i8** %pz, align 8
  store i64 0, i64* %c, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i64, i64* %c, align 8
  %3 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp ne i64 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %pz, align 8
  %5 = load i64, i64* %c, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %c, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %c, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fflush(%struct._IO_FILE* %8)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext_memcmp(i8* %s1, i8* %s2, i64 %n) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  %2 = load i64, i64* %n.addr, align 8
  %call = call i32 @memcmp(i8* %0, i8* %1, i64 %2) #4
  store i32 %call, i32* %ret, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %3 = load i8*, i8** %s1.addr, align 8
  %4 = load i64, i64* %n.addr, align 8
  call void @show_mem(i8* %3, i64 %4)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %5 = load i8*, i8** %s2.addr, align 8
  %6 = load i64, i64* %n.addr, align 8
  call void @show_mem(i8* %5, i64 %6)
  %7 = load i32, i32* %ret, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %7)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %s1 = alloca [32 x i8], align 16
  %s2 = alloca [32 x i8], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [32 x i8]* %s1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 32, i1 false)
  %1 = bitcast [32 x i8]* %s2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %s1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 0, i64 32, i1 false)
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %s2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay1, i8 0, i64 32, i1 false)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %conv = trunc i32 %3 to i8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %s1, i64 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %5 = load i32, i32* %i, align 4
  %conv2 = trunc i32 %5 to i8
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [32 x i8], [32 x i8]* %s2, i64 0, i64 %idxprom3
  store i8 %conv2, i8* %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc16, %for.end
  %8 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %8, 20
  br i1 %cmp6, label %for.body8, label %for.end18

for.body8:                                        ; preds = %for.cond5
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 20
  %conv9 = trunc i32 %add to i8
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [32 x i8], [32 x i8]* %s1, i64 0, i64 %idxprom10
  store i8 %conv9, i8* %arrayidx11, align 1
  %11 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %11, 50
  %conv13 = trunc i32 %add12 to i8
  %12 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [32 x i8], [32 x i8]* %s2, i64 0, i64 %idxprom14
  store i8 %conv13, i8* %arrayidx15, align 1
  br label %for.inc16

for.inc16:                                        ; preds = %for.body8
  %13 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %13, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond5, !llvm.loop !7

for.end18:                                        ; preds = %for.cond5
  %arraydecay19 = getelementptr inbounds [32 x i8], [32 x i8]* %s1, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [32 x i8], [32 x i8]* %s2, i64 0, i64 0
  %call = call i32 @ext_memcmp(i8* %arraydecay19, i8* %arraydecay20, i64 10)
  %arraydecay21 = getelementptr inbounds [32 x i8], [32 x i8]* %s1, i64 0, i64 0
  %arraydecay22 = getelementptr inbounds [32 x i8], [32 x i8]* %s2, i64 0, i64 0
  %call23 = call i32 @ext_memcmp(i8* %arraydecay21, i8* %arraydecay22, i64 12)
  %arraydecay24 = getelementptr inbounds [32 x i8], [32 x i8]* %s1, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [32 x i8], [32 x i8]* %s2, i64 0, i64 0
  %call26 = call i32 @ext_memcmp(i8* %arraydecay24, i8* %arraydecay25, i64 16)
  %arraydecay27 = getelementptr inbounds [32 x i8], [32 x i8]* %s1, i64 0, i64 0
  %arraydecay28 = getelementptr inbounds [32 x i8], [32 x i8]* %s2, i64 0, i64 0
  %call29 = call i32 @ext_memcmp(i8* %arraydecay27, i8* %arraydecay28, i64 20)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
