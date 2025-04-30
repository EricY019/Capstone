; ModuleID = 'code/216-5214structs.c'
source_filename = "code/216-5214structs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Huge = type { i8, i32, i64, i64, i8, i32, i64, i64 }

@__const.main.test1 = private unnamed_addr constant %struct.Huge { i8 121, i32 -75647, i64 -756478, i64 79647801, i8 122, i32 75641, i64 258454, i64 12345678901 }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %test1 = alloca %struct.Huge, align 8
  %test2 = alloca %struct.Huge, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.Huge* %test1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 getelementptr inbounds (%struct.Huge, %struct.Huge* @__const.main.test1, i32 0, i32 0), i64 48, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %a = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 0
  %1 = load i8, i8* %a, align 8
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 121
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %b = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 1
  %2 = load i32, i32* %b, align 4
  %cmp3 = icmp eq i32 %2, -75647
  br i1 %cmp3, label %if.end6, label %if.then5

if.then5:                                         ; preds = %do.body2
  store i32 2, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %do.body2
  br label %do.end7

do.end7:                                          ; preds = %if.end6
  br label %do.body8

do.body8:                                         ; preds = %do.end7
  %c = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 2
  %3 = load i64, i64* %c, align 8
  %cmp9 = icmp eq i64 %3, -756478
  br i1 %cmp9, label %if.end12, label %if.then11

if.then11:                                        ; preds = %do.body8
  store i32 3, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %do.body8
  br label %do.end13

do.end13:                                         ; preds = %if.end12
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %d = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 3
  %4 = load i64, i64* %d, align 8
  %cmp15 = icmp eq i64 %4, 79647801
  br i1 %cmp15, label %if.end18, label %if.then17

if.then17:                                        ; preds = %do.body14
  store i32 4, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %do.body14
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  br label %do.body20

do.body20:                                        ; preds = %do.end19
  %e = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 4
  %5 = load i8, i8* %e, align 8
  %conv21 = zext i8 %5 to i32
  %cmp22 = icmp eq i32 %conv21, 122
  br i1 %cmp22, label %if.end25, label %if.then24

if.then24:                                        ; preds = %do.body20
  store i32 5, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %do.body20
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %f = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 5
  %6 = load i32, i32* %f, align 4
  %cmp28 = icmp eq i32 %6, 75641
  br i1 %cmp28, label %if.end31, label %if.then30

if.then30:                                        ; preds = %do.body27
  store i32 6, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %do.body27
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  br label %do.body33

do.body33:                                        ; preds = %do.end32
  %g = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 6
  %7 = load i64, i64* %g, align 8
  %cmp34 = icmp eq i64 %7, 258454
  br i1 %cmp34, label %if.end37, label %if.then36

if.then36:                                        ; preds = %do.body33
  store i32 7, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %do.body33
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  br label %do.body39

do.body39:                                        ; preds = %do.end38
  %h = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 7
  %8 = load i64, i64* %h, align 8
  %cmp40 = icmp eq i64 %8, 12345678901
  br i1 %cmp40, label %if.end43, label %if.then42

if.then42:                                        ; preds = %do.body39
  store i32 8, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %do.body39
  br label %do.end44

do.end44:                                         ; preds = %if.end43
  %a45 = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 0
  %9 = load i8, i8* %a45, align 8
  %conv46 = sext i8 %9 to i32
  %sub = sub nsw i32 %conv46, 5
  %conv47 = trunc i32 %sub to i8
  %a48 = getelementptr inbounds %struct.Huge, %struct.Huge* %test2, i32 0, i32 0
  store i8 %conv47, i8* %a48, align 8
  %b49 = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 1
  %10 = load i32, i32* %b49, align 4
  %f50 = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 5
  %11 = load i32, i32* %f50, align 4
  %add = add i32 %10, %11
  %b51 = getelementptr inbounds %struct.Huge, %struct.Huge* %test2, i32 0, i32 1
  store i32 %add, i32* %b51, align 4
  %c52 = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 2
  %12 = load i64, i64* %c52, align 8
  %g53 = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 6
  %13 = load i64, i64* %g53, align 8
  %add54 = add i64 %12, %13
  %c55 = getelementptr inbounds %struct.Huge, %struct.Huge* %test2, i32 0, i32 2
  store i64 %add54, i64* %c55, align 8
  br label %do.body56

do.body56:                                        ; preds = %do.end44
  %a57 = getelementptr inbounds %struct.Huge, %struct.Huge* %test2, i32 0, i32 0
  %14 = load i8, i8* %a57, align 8
  %conv58 = sext i8 %14 to i32
  %a59 = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 0
  %15 = load i8, i8* %a59, align 8
  %conv60 = sext i8 %15 to i32
  %sub61 = sub nsw i32 %conv60, 5
  %cmp62 = icmp eq i32 %conv58, %sub61
  br i1 %cmp62, label %if.end65, label %if.then64

if.then64:                                        ; preds = %do.body56
  store i32 9, i32* %retval, align 4
  br label %return

if.end65:                                         ; preds = %do.body56
  br label %do.end66

do.end66:                                         ; preds = %if.end65
  br label %do.body67

do.body67:                                        ; preds = %do.end66
  %b68 = getelementptr inbounds %struct.Huge, %struct.Huge* %test2, i32 0, i32 1
  %16 = load i32, i32* %b68, align 4
  %b69 = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 1
  %17 = load i32, i32* %b69, align 4
  %f70 = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 5
  %18 = load i32, i32* %f70, align 4
  %add71 = add i32 %17, %18
  %cmp72 = icmp eq i32 %16, %add71
  br i1 %cmp72, label %if.end75, label %if.then74

if.then74:                                        ; preds = %do.body67
  store i32 10, i32* %retval, align 4
  br label %return

if.end75:                                         ; preds = %do.body67
  br label %do.end76

do.end76:                                         ; preds = %if.end75
  br label %do.body77

do.body77:                                        ; preds = %do.end76
  %c78 = getelementptr inbounds %struct.Huge, %struct.Huge* %test2, i32 0, i32 2
  %19 = load i64, i64* %c78, align 8
  %c79 = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 2
  %20 = load i64, i64* %c79, align 8
  %g80 = getelementptr inbounds %struct.Huge, %struct.Huge* %test1, i32 0, i32 6
  %21 = load i64, i64* %g80, align 8
  %add81 = add i64 %20, %21
  %cmp82 = icmp eq i64 %19, %add81
  br i1 %cmp82, label %if.end85, label %if.then84

if.then84:                                        ; preds = %do.body77
  store i32 11, i32* %retval, align 4
  br label %return

if.end85:                                         ; preds = %do.body77
  br label %do.end86

do.end86:                                         ; preds = %if.end85
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end86, %if.then84, %if.then74, %if.then64, %if.then42, %if.then36, %if.then30, %if.then24, %if.then17, %if.then11, %if.then5, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
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
