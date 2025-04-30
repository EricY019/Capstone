; ModuleID = './code/226-27868mv.c'
source_filename = "./code/226-27868mv.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [20 x i8] c"Falta un argumento\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ab+\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pFOrigen = alloca ptr, align 8
  %pFDestino = alloca ptr, align 8
  %byte = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp ne i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx, align 8
  %call3 = call ptr @"\01_fopen"(ptr noundef %3, ptr noundef @.str.1)
  store ptr %call3, ptr %pFOrigen, align 8
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %4, i64 2
  %5 = load ptr, ptr %arrayidx4, align 8
  %call5 = call ptr @"\01_fopen"(ptr noundef %5, ptr noundef @.str.2)
  store ptr %call5, ptr %pFDestino, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then2
  %6 = load ptr, ptr %pFOrigen, align 8
  %call6 = call i32 @feof(ptr noundef %6)
  %tobool = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %pFOrigen, align 8
  %call7 = call i32 @fgetc(ptr noundef %7)
  %conv = trunc i32 %call7 to i8
  store i8 %conv, ptr %byte, align 1
  %8 = load i8, ptr %byte, align 1
  %conv8 = zext i8 %8 to i32
  %9 = load ptr, ptr %pFDestino, align 8
  %call9 = call i32 @fputc(i32 noundef %conv8, ptr noundef %9)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %pFOrigen, align 8
  %call10 = call i32 @fclose(ptr noundef %10)
  %11 = load ptr, ptr %pFDestino, align 8
  %call11 = call i32 @fclose(ptr noundef %11)
  %12 = load ptr, ptr %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %12, i64 1
  %13 = load ptr, ptr %arrayidx12, align 8
  %call13 = call i32 @remove(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %while.end, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare i32 @printf(ptr noundef, ...) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @feof(ptr noundef) #1

declare i32 @fgetc(ptr noundef) #1

declare i32 @fputc(i32 noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

declare i32 @remove(ptr noundef) #1

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
