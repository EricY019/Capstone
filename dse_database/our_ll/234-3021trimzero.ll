; ModuleID = 'code/234-3021trimzero.c'
source_filename = "code/234-3021trimzero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.buf = private unnamed_addr constant [9 x i8] c"00001234\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"lu8char: %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"tmpbuf: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"buf: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca [9 x i8], align 1
  %i = alloca i32, align 4
  %bufSize = alloca i32, align 4
  %lu8pBuf = alloca i8*, align 8
  %tmpBuf = alloca [512 x i8], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [9 x i8]* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.main.buf, i32 0, i32 0), i64 9, i1 false)
  store i32 0, i32* %i, align 4
  store i32 9, i32* %bufSize, align 4
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  store i8* %arraydecay, i8** %lu8pBuf, align 8
  %1 = bitcast [512 x i8]* %tmpBuf to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 512, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %bufSize, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %lu8pBuf, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %8 = load i8*, i8** %lu8pBuf, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %lu8pBuf, align 8
  %9 = load i8*, i8** %lu8pBuf, align 8
  %10 = load i8, i8* %9, align 1
  %conv3 = sext i8 %10 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %conv3)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %arraydecay4 = getelementptr inbounds [512 x i8], [512 x i8]* %tmpBuf, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %11 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay5, i64 %idx.ext
  %12 = load i32, i32* %bufSize, align 4
  %13 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, %13
  %conv6 = sext i32 %sub to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %arraydecay4, i8* align 1 %add.ptr, i64 %conv6, i1 false)
  %arraydecay7 = getelementptr inbounds [512 x i8], [512 x i8]* %tmpBuf, i64 0, i64 0
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay7)
  %arraydecay9 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %14 = load i32, i32* %bufSize, align 4
  %conv10 = sext i32 %14 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %arraydecay9, i8 0, i64 %conv10, i1 false)
  %arraydecay11 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [512 x i8], [512 x i8]* %tmpBuf, i64 0, i64 0
  %15 = load i32, i32* %bufSize, align 4
  %16 = load i32, i32* %i, align 4
  %sub13 = sub nsw i32 %15, %16
  %conv14 = sext i32 %sub13 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arraydecay11, i8* align 16 %arraydecay12, i64 %conv14, i1 false)
  %arraydecay15 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay15)
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
