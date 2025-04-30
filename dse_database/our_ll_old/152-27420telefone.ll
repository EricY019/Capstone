; ModuleID = './code/152-27420telefone.c'
source_filename = "./code/152-27420telefone.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__stdinp = external global ptr, align 8
@__stdoutp = external global ptr, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ch = alloca i8, align 1
  %dig = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %0 = load ptr, ptr @__stdinp, align 8
  %call = call i32 @getc(ptr noundef %0)
  %conv = trunc i32 %call to i8
  store i8 %conv, ptr %ch, align 1
  %conv1 = sext i8 %conv to i32
  %cmp = icmp ne i32 %conv1, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8, ptr %ch, align 1
  %conv3 = sext i8 %1 to i32
  %call4 = call i32 @isalpha(i32 noundef %conv3) #3
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load i8, ptr %ch, align 1
  %conv5 = sext i8 %2 to i32
  %cmp6 = icmp sge i32 %conv5, 81
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %3 = load i8, ptr %ch, align 1
  %dec = add i8 %3, -1
  store i8 %dec, ptr %ch, align 1
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %4 = load i8, ptr %ch, align 1
  %conv9 = sext i8 %4 to i32
  %sub = sub nsw i32 %conv9, 65
  %div = sdiv i32 %sub, 3
  store i32 %div, ptr %dig, align 4
  %5 = load i32, ptr %dig, align 4
  %add = add nsw i32 50, %5
  %6 = load ptr, ptr @__stdoutp, align 8
  %call10 = call i32 @putc(i32 noundef %add, ptr noundef %6)
  br label %if.end13

if.else:                                          ; preds = %while.body
  %7 = load i8, ptr %ch, align 1
  %conv11 = sext i8 %7 to i32
  %8 = load ptr, ptr @__stdoutp, align 8
  %call12 = call i32 @putc(i32 noundef %conv11, ptr noundef %8)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) #2

declare i32 @putc(i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
