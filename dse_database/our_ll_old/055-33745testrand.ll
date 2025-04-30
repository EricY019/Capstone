; ModuleID = './code/055-33745testrand.c'
source_filename = "./code/055-33745testrand.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [13 x i8] c"Test FAILED!\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Test succeeded.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%d != %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @rand()
  store i32 %call, ptr %i1, align 4
  %call1 = call i32 @rand()
  store i32 %call1, ptr %i2, align 4
  call void @srand(i32 noundef 1)
  %call2 = call i32 @rand()
  store i32 %call2, ptr %j1, align 4
  %call3 = call i32 @rand()
  store i32 %call3, ptr %j2, align 4
  %0 = load i32, ptr %i1, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %i2, align 4
  %cmp4 = icmp slt i32 %1, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %j1, align 4
  %cmp6 = icmp slt i32 %2, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %3 = load i32, ptr %j2, align 4
  %cmp8 = icmp slt i32 %3, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false, %entry
  %call9 = call i32 @puts(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false7
  %4 = load i32, ptr %j1, align 4
  %5 = load i32, ptr %i1, align 4
  %cmp10 = icmp eq i32 %4, %5
  br i1 %cmp10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, ptr %j2, align 4
  %7 = load i32, ptr %i2, align 4
  %cmp11 = icmp eq i32 %6, %7
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call i32 @puts(ptr noundef @.str.1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  %8 = load i32, ptr %j1, align 4
  %9 = load i32, ptr %i1, align 4
  %cmp14 = icmp ne i32 %8, %9
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.else
  %10 = load i32, ptr %j1, align 4
  %11 = load i32, ptr %i1, align 4
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %10, i32 noundef %11)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.else
  %12 = load i32, ptr %j2, align 4
  %13 = load i32, ptr %i2, align 4
  %cmp18 = icmp ne i32 %12, %13
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %14 = load i32, ptr %j2, align 4
  %15 = load i32, ptr %i2, align 4
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %14, i32 noundef %15)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17
  %call22 = call i32 @puts(ptr noundef @.str)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then12
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare i32 @rand() #1

declare void @srand(i32 noundef) #1

declare i32 @puts(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
