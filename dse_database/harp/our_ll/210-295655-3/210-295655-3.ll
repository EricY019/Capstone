; ModuleID = 'code/210-295655-3.c'
source_filename = "code/210-295655-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"sabonis\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %s = alloca [100 x i8], align 16
  %t = alloca i8*, align 8
  %0 = bitcast [100 x i8]* %s to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false)
  %1 = bitcast i8* %0 to [100 x i8]*
  %2 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i32 0, i32 0
  store i8 102, i8* %2, align 16
  %3 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i32 0, i32 1
  store i8 117, i8* %3, align 1
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i32 0, i32 2
  store i8 99, i8* %4, align 2
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i32 0, i32 3
  store i8 107, i8* %5, align 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %t, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %s, i64 0, i64 0
  %6 = load i8*, i8** %t, align 8
  call void @strcat2(i8* %arraydecay, i8* %6)
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %s, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay1)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strcat2(i8* %s, i8* %t) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body5, %while.end
  %3 = load i8*, i8** %t.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr2, i8** %t.addr, align 8
  %4 = load i8, i8* %3, align 1
  %5 = load i8*, i8** %s.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr3, i8** %s.addr, align 8
  store i8 %4, i8* %5, align 1
  %tobool4 = icmp ne i8 %4, 0
  br i1 %tobool4, label %while.body5, label %while.end6

while.body5:                                      ; preds = %while.cond1
  br label %while.cond1, !llvm.loop !6

while.end6:                                       ; preds = %while.cond1
  %6 = load i8*, i8** %s.addr, align 8
  store i8 0, i8* %6, align 1
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
