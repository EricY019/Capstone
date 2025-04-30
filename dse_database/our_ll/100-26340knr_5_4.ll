; ModuleID = 'code/100-26340knr_5_4.c'
source_filename = "code/100-26340knr_5_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.s = private unnamed_addr constant [18 x i8] c"Je veux lui dire,\00", align 16
@__const.main.t = private unnamed_addr constant [6 x i8] c"dire,\00", align 1
@.str = private unnamed_addr constant [45 x i8] c"\0AThe string \0A\09%s\0Aappears at the end of \0A\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"\0AThe string \0A\09%s\0Adoes not appear at the end of \0A\09%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %s = alloca [18 x i8], align 16
  %t = alloca [6 x i8], align 1
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %ret, align 4
  %0 = bitcast [18 x i8]* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([18 x i8], [18 x i8]* @__const.main.s, i32 0, i32 0), i64 18, i1 false)
  %1 = bitcast [6 x i8]* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.t, i32 0, i32 0), i64 6, i1 false)
  %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %s, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [6 x i8], [6 x i8]* %t, i64 0, i64 0
  %call = call i32 @strend(i8* %arraydecay, i8* %arraydecay1)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [6 x i8], [6 x i8]* %t, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [18 x i8], [18 x i8]* %s, i64 0, i64 0
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %arraydecay2, i8* %arraydecay3)
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay5 = getelementptr inbounds [6 x i8], [6 x i8]* %t, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [18 x i8], [18 x i8]* %s, i64 0, i64 0
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay5, i8* %arraydecay6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %ret, align 4
  ret i32 %2
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strend(i8* %str, i8* %tail) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %tail.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8* %tail, i8** %tail.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %1) #4
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %call
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %3 = load i8*, i8** %tail.addr, align 8
  %4 = load i8*, i8** %tail.addr, align 8
  %call1 = call i64 @strlen(i8* %4) #4
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 %call1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, %conv3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %6 = load i8*, i8** %tail.addr, align 8
  %call5 = call i64 @strlen(i8* %6) #4
  %cmp6 = icmp ne i64 %call5, 0
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load i8*, i8** %str.addr, align 8
  %call8 = call i64 @strlen(i8* %7) #4
  %cmp9 = icmp ne i64 %call8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp9, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 -1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %10 = load i8*, i8** %tail.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr11, i8** %tail.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %11 = load i8*, i8** %tail.addr, align 8
  %call12 = call i64 @strlen(i8* %11) #4
  %cmp13 = icmp eq i64 %call12, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
