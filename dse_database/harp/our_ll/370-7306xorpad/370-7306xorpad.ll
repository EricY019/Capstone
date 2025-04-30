; ModuleID = 'code/370-7306xorpad.c'
source_filename = "code/370-7306xorpad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@__const.main.pad = private unnamed_addr constant [3 x i8] c"\02\03\04", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"String: \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @padit(i8** %memtobepadded, i32 %memsize, i8* %pad, i32 %size) #0 {
entry:
  %memtobepadded.addr = alloca i8**, align 8
  %memsize.addr = alloca i32, align 4
  %pad.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %padme = alloca i8*, align 8
  %i = alloca i32, align 4
  %current = alloca i32, align 4
  store i8** %memtobepadded, i8*** %memtobepadded.addr, align 8
  store i32 %memsize, i32* %memsize.addr, align 4
  store i8* %pad, i8** %pad.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8**, i8*** %memtobepadded.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %padme, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %current, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %memsize.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %current, align 4
  %5 = load i32, i32* %size.addr, align 4
  %cmp1 = icmp sge i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %current, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load i8*, i8** %padme, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = load i8*, i8** %pad.addr, align 8
  %10 = load i32, i32* %current, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %current, align 4
  %idxprom2 = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 %idxprom2
  %11 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %11 to i32
  %xor = xor i32 %conv, %conv4
  %conv5 = trunc i32 %xor to i8
  %12 = load i8*, i8** %padme, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  store i8 %conv5, i8* %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tohex(i8* %num_buf, i32 %size) #0 {
entry:
  %num_buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %str_buf = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %num_buf, i8** %num_buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %call = call noalias align 16 i8* @calloc(i64 %conv, i64 0) #4
  store i8* %call, i8** %str_buf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %str_buf, align 8
  %4 = load i32, i32* %i, align 4
  %mul2 = mul nsw i32 %4, 2
  %idxprom = sext i32 %mul2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8*, i8** %num_buf.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %7 to i32
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %conv5) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %9 = load i8*, i8** %str_buf, align 8
  ret i8* %9
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %memory = alloca i8*, align 8
  %pad = alloca [3 x i8], align 1
  %hex = alloca i8*, align 8
  %call = call noalias align 16 i8* @calloc(i64 5, i64 1) #4
  store i8* %call, i8** %memory, align 8
  %0 = bitcast [3 x i8]* %pad to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.main.pad, i32 0, i32 0), i64 3, i1 false)
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %pad, i64 0, i64 0
  call void @padit(i8** %memory, i32 5, i8* %arraydecay, i32 3)
  %1 = load i8*, i8** %memory, align 8
  %call1 = call i8* @tohex(i8* %1, i32 5)
  store i8* %call1, i8** %hex, align 8
  %2 = load i8*, i8** %hex, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %2)
  %3 = load i8*, i8** %hex, align 8
  call void @free(i8* %3) #4
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
