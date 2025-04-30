; ModuleID = './code/367-9893main.c'
source_filename = "./code/367-9893main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @encrypt() #0 {
entry:
  %c = alloca i8, align 1
  %fin = alloca ptr, align 8
  %fout = alloca ptr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %fin, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call ptr @"\01_fopen"(ptr noundef @.str.2, ptr noundef @.str.3)
  store ptr %call2, ptr %fout, align 8
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %return

if.end6:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end6
  %0 = load ptr, ptr %fin, align 8
  %call7 = call i32 @feof(ptr noundef %0)
  %tobool = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %fin, align 8
  %call8 = call i32 @fgetc(ptr noundef %1)
  %conv = trunc i32 %call8 to i8
  store i8 %conv, ptr %c, align 1
  %2 = load i8, ptr %c, align 1
  %conv9 = sext i8 %2 to i32
  %add = add nsw i32 %conv9, 5
  %conv10 = trunc i32 %add to i8
  store i8 %conv10, ptr %c, align 1
  %3 = load i8, ptr %c, align 1
  %conv11 = sext i8 %3 to i32
  %4 = load ptr, ptr %fout, align 8
  %call12 = call i32 @fputc(i32 noundef %conv11, ptr noundef %4)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %fin, align 8
  %call13 = call i32 @fclose(ptr noundef %5)
  %6 = load ptr, ptr %fout, align 8
  %call14 = call i32 @fclose(ptr noundef %6)
  br label %return

return:                                           ; preds = %while.end, %if.then4, %if.then
  ret void
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @feof(ptr noundef) #1

declare i32 @fgetc(ptr noundef) #1

declare i32 @fputc(i32 noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @encrypt()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
