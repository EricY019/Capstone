; ModuleID = './code/005-9009tt.c'
source_filename = "./code/005-9009tt.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tt.c\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ab\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %in = alloca ptr, align 8
  %size = alloca i32, align 4
  %size_all = alloca i32, align 4
  %i = alloca i32, align 4
  %in13 = alloca ptr, align 8
  %out = alloca ptr, align 8
  %size18 = alloca i32, align 4
  %ch = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @strcmp(ptr noundef %2, ptr noundef @.str) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call1 = call ptr @"\01_fopen"(ptr noundef @.str.1, ptr noundef @.str.2)
  store ptr %call1, ptr %in, align 8
  %3 = load ptr, ptr %in, align 8
  %call2 = call i32 @fseek(ptr noundef %3, i64 noundef -4, i32 noundef 2)
  %4 = load ptr, ptr %in, align 8
  %call3 = call i64 @fread(ptr noundef %size, i64 noundef 1, i64 noundef 4, ptr noundef %4)
  %5 = load ptr, ptr %in, align 8
  %call4 = call i32 @fseek(ptr noundef %5, i64 noundef 0, i32 noundef 2)
  %6 = load ptr, ptr %in, align 8
  %call5 = call i64 @ftell(ptr noundef %6)
  %conv = trunc i64 %call5 to i32
  store i32 %conv, ptr %size_all, align 4
  %7 = load ptr, ptr %in, align 8
  %8 = load i32, ptr %size, align 4
  %conv6 = sext i32 %8 to i64
  %call7 = call i32 @fseek(ptr noundef %7, i64 noundef %conv6, i32 noundef 0)
  %9 = load i32, ptr %size, align 4
  store i32 %9, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %size_all, align 4
  %sub = sub nsw i32 %11, 4
  %cmp8 = icmp slt i32 %10, %sub
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %in, align 8
  %call10 = call i32 @fgetc(ptr noundef %12)
  %call11 = call i32 @putchar(i32 noundef %call10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %in, align 8
  %call12 = call i32 @fclose(ptr noundef %14)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call14 = call ptr @"\01_fopen"(ptr noundef @.str.3, ptr noundef @.str.2)
  store ptr %call14, ptr %in13, align 8
  %15 = load ptr, ptr %in13, align 8
  %tobool15 = icmp ne ptr %15, null
  br i1 %tobool15, label %if.then16, label %if.end31

if.then16:                                        ; preds = %if.end
  %call17 = call ptr @"\01_fopen"(ptr noundef @.str.1, ptr noundef @.str.4)
  store ptr %call17, ptr %out, align 8
  %16 = load ptr, ptr %out, align 8
  %call19 = call i64 @ftell(ptr noundef %16)
  %conv20 = trunc i64 %call19 to i32
  store i32 %conv20, ptr %size18, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then16
  %17 = load ptr, ptr %in13, align 8
  %call21 = call i32 @fgetc(ptr noundef %17)
  %conv22 = trunc i32 %call21 to i8
  store i8 %conv22, ptr %ch, align 1
  %conv23 = sext i8 %conv22 to i32
  %cmp24 = icmp ne i32 %conv23, -1
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8, ptr %ch, align 1
  %conv26 = sext i8 %18 to i32
  %19 = load ptr, ptr %out, align 8
  %call27 = call i32 @fputc(i32 noundef %conv26, ptr noundef %19)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %20 = load ptr, ptr %out, align 8
  %call28 = call i64 @"\01_fwrite"(ptr noundef %size18, i64 noundef 1, i64 noundef 4, ptr noundef %20)
  %21 = load ptr, ptr %out, align 8
  %call29 = call i32 @fclose(ptr noundef %21)
  %22 = load ptr, ptr %in13, align 8
  %call30 = call i32 @fclose(ptr noundef %22)
  br label %if.end31

if.end31:                                         ; preds = %while.end, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %for.end
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #2

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i64 @ftell(ptr noundef) #2

declare i32 @putchar(i32 noundef) #2

declare i32 @fgetc(ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

declare i32 @fputc(i32 noundef, ptr noundef) #2

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
