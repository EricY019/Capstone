; ModuleID = 'code/232-5707ho_strncat.c'
source_filename = "code/232-5707ho_strncat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"aaa\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0123\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ho_strncat(i8* %s1, i8* %s2, i32 %n) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8*, i8** %s1.addr, align 8
  store i8* %0, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %s1.addr, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body6, %while.end
  %4 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %5 = load i8*, i8** %s2.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr3, i8** %s2.addr, align 8
  %6 = load i8, i8* %5, align 1
  %7 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr4, i8** %s1.addr, align 8
  store i8 %6, i8* %7, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %8 = phi i1 [ false, %while.cond1 ], [ %cmp, %land.rhs ]
  br i1 %8, label %while.body6, label %while.end7

while.body6:                                      ; preds = %land.end
  br label %while.cond1, !llvm.loop !6

while.end7:                                       ; preds = %land.end
  %9 = load i8*, i8** %s1.addr, align 8
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** %s, align 8
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca [128 x i8], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [128 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 128, i1 false)
  %1 = bitcast i8* %0 to [128 x i8]*
  %2 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i32 0, i32 0
  store i8 48, i8* %2, align 16
  %3 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i32 0, i32 1
  store i8 49, i8* %3, align 1
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i32 0, i32 2
  store i8 50, i8* %4, align 2
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i32 0, i32 3
  store i8 51, i8* %5, align 1
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0
  store i8 0, i8* %arrayidx, align 16
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0
  %call = call i8* @ho_strncat(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %call)
  %arraydecay2 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0
  %call3 = call i8* @strcpy(i8* %arraydecay2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #4
  %arrayidx4 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0
  store i8 0, i8* %arrayidx4, align 16
  %arraydecay5 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0
  %call6 = call i8* @strncat(i8* %arraydecay5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 2) #4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %call6)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
