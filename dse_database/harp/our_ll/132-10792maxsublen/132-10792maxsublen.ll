; ModuleID = 'code/132-10792maxsublen.c'
source_filename = "code/132-10792maxsublen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"map[%d] = %d\0A\00", align 1
@__const.main.str = private unnamed_addr constant [18 x i8] c"abcdefgegcsgcasse\00", align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"str: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ret: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @max_substr_len(i8* %str, i64 %len) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %max_len = alloca i32, align 4
  %map = alloca [256 x i32], align 16
  store i8* %str, i8** %str.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 0, i32* %max_len, align 4
  %0 = bitcast [256 x i32]* %map to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 1024, i1 false)
  %1 = bitcast i8* %0 to <{ i32, [255 x i32] }>*
  %2 = getelementptr inbounds <{ i32, [255 x i32] }>, <{ i32, [255 x i32] }>* %1, i32 0, i32 0
  store i32 -1, i32* %2, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %map, i64 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %max_len, align 4
  ret i32 %8
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %str = alloca [18 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = bitcast [18 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([18 x i8], [18 x i8]* @__const.main.str, i32 0, i32 0), i64 18, i1 false)
  %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %str, i64 0, i64 0
  %call = call i32 @max_substr_len(i8* %arraydecay, i64 18)
  store i32 %call, i32* %ret, align 4
  %arraydecay1 = getelementptr inbounds [18 x i8], [18 x i8]* %str, i64 0, i64 0
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay1)
  %1 = load i32, i32* %ret, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %1)
  %2 = load i32, i32* %ret, align 4
  ret i32 %2
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
