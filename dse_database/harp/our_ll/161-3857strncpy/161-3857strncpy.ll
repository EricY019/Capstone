; ModuleID = 'code/161-3857strncpy.c'
source_filename = "code/161-3857strncpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.buf = private unnamed_addr constant [64 x i8] c"abcdefghijklmnopqrstuvwxyz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [11 x i8] c"helloworld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strncpy(i8* %dst, i8* %src, i64 %n) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %d = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %dst.addr, align 8
  store i8* %0, i8** %d, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %src.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %6 = load i8, i8* %5, align 1
  %7 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr3, i8** %dst.addr, align 8
  store i8 %6, i8* %7, align 1
  %8 = load i64, i64* %n.addr, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %n.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  br label %while.cond4

while.cond4:                                      ; preds = %while.body7, %while.end
  %9 = load i64, i64* %n.addr, align 8
  %cmp5 = icmp ne i64 %9, 0
  br i1 %cmp5, label %while.body7, label %while.end10

while.body7:                                      ; preds = %while.cond4
  %10 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr8, i8** %dst.addr, align 8
  store i8 0, i8* %10, align 1
  %11 = load i64, i64* %n.addr, align 8
  %dec9 = add i64 %11, -1
  store i64 %dec9, i64* %n.addr, align 8
  br label %while.cond4, !llvm.loop !6

while.end10:                                      ; preds = %while.cond4
  %12 = load i8*, i8** %d, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %buf = alloca [64 x i8], align 16
  %src = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [64 x i8]* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([64 x i8], [64 x i8]* @__const.main.buf, i32 0, i32 0), i64 64, i1 false)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %src, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %1 = load i8*, i8** %src, align 8
  %call = call i8* @strncpy(i8* %arraydecay, i8* %1, i64 0)
  %arraydecay1 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %2 = load i8*, i8** %src, align 8
  %call2 = call i8* @strncpy(i8* %arraydecay1, i8* %2, i64 5)
  %arraydecay3 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %3 = load i8*, i8** %src, align 8
  %call4 = call i8* @strncpy(i8* %arraydecay3, i8* %3, i64 10)
  %arraydecay5 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %4 = load i8*, i8** %src, align 8
  %call6 = call i8* @strncpy(i8* %arraydecay5, i8* %4, i64 11)
  %arraydecay7 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %5 = load i8*, i8** %src, align 8
  %call8 = call i8* @strncpy(i8* %arraydecay7, i8* %5, i64 12)
  %arraydecay9 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %6 = load i8*, i8** %src, align 8
  %call10 = call i8* @strncpy(i8* %arraydecay9, i8* %6, i64 20)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
