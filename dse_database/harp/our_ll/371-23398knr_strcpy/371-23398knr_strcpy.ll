; ModuleID = 'code/371-23398knr_strcpy.c'
source_filename = "code/371-23398knr_strcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.source = private unnamed_addr constant [55 x i8] c"Pouvez vous me dire quelle e la correct pronontiation?\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %source = alloca [55 x i8], align 16
  %dest = alloca [0 x i8], align 1
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %ret, align 4
  %0 = bitcast [55 x i8]* %source to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([55 x i8], [55 x i8]* @__const.main.source, i32 0, i32 0), i64 55, i1 false)
  %1 = bitcast [0 x i8]* %dest to i8*
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %dest, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [55 x i8], [55 x i8]* %source, i64 0, i64 0
  call void @strcpy(i8* %arraydecay, i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [0 x i8], [0 x i8]* %dest, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %arraydecay2)
  %2 = load i32, i32* %ret, align 4
  ret i32 %2
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strcpy(i8* %dest, i8* %source) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %source.addr = alloca i8*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %source, i8** %source.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %source.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %source.addr, align 8
  %1 = load i8, i8* %0, align 1
  %2 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr1, i8** %dest.addr, align 8
  store i8 %1, i8* %2, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
