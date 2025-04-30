; ModuleID = './code/264-15031pe024.c'
source_filename = "./code/264-15031pe024.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [8 x i8] c"%010llu\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  %string = alloca [11 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i64 2000000000, ptr %start, align 8
  %0 = load i64, ptr %start, align 8
  %add = add i64 %0, 700000000
  store i64 %add, ptr %start, align 8
  %1 = load i64, ptr %start, align 8
  %add1 = add i64 %1, 80000000
  store i64 %add1, ptr %start, align 8
  store i64 9876543210, ptr %end, align 8
  store i64 997920, ptr %count, align 8
  %2 = load i64, ptr %start, align 8
  store i64 %2, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, ptr %i, align 8
  %4 = load i64, ptr %end, align 8
  %cmp = icmp ule i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [11 x i8], ptr %string, i64 0, i64 0
  %5 = load i64, ptr %i, align 8
  %call = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %arraydecay, i64 noundef 11, i32 noundef 0, i64 noundef 11, ptr noundef @.str, i64 noundef %5)
  %arraydecay2 = getelementptr inbounds [11 x i8], ptr %string, i64 0, i64 0
  %call3 = call ptr @strchr(ptr noundef %arraydecay2, i32 noundef 48) #3
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arraydecay5 = getelementptr inbounds [11 x i8], ptr %string, i64 0, i64 0
  %call6 = call ptr @strchr(ptr noundef %arraydecay5, i32 noundef 49) #3
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %arraydecay10 = getelementptr inbounds [11 x i8], ptr %string, i64 0, i64 0
  %call11 = call ptr @strchr(ptr noundef %arraydecay10, i32 noundef 50) #3
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  br label %for.inc

if.end14:                                         ; preds = %if.end9
  %arraydecay15 = getelementptr inbounds [11 x i8], ptr %string, i64 0, i64 0
  %call16 = call ptr @strchr(ptr noundef %arraydecay15, i32 noundef 51) #3
  %cmp17 = icmp eq ptr %call16, null
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  br label %for.inc

if.end19:                                         ; preds = %if.end14
  %arraydecay20 = getelementptr inbounds [11 x i8], ptr %string, i64 0, i64 0
  %call21 = call ptr @strchr(ptr noundef %arraydecay20, i32 noundef 52) #3
  %cmp22 = icmp eq ptr %call21, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  br label %for.inc

if.end24:                                         ; preds = %if.end19
  %arraydecay25 = getelementptr inbounds [11 x i8], ptr %string, i64 0, i64 0
  %call26 = call ptr @strchr(ptr noundef %arraydecay25, i32 noundef 53) #3
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  br label %for.inc

if.end29:                                         ; preds = %if.end24
  %arraydecay30 = getelementptr inbounds [11 x i8], ptr %string, i64 0, i64 0
  %call31 = call ptr @strchr(ptr noundef %arraydecay30, i32 noundef 54) #3
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  br label %for.inc

if.end34:                                         ; preds = %if.end29
  %arraydecay35 = getelementptr inbounds [11 x i8], ptr %string, i64 0, i64 0
  %call36 = call ptr @strchr(ptr noundef %arraydecay35, i32 noundef 55) #3
  %cmp37 = icmp eq ptr %call36, null
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  br label %for.inc

if.end39:                                         ; preds = %if.end34
  %arraydecay40 = getelementptr inbounds [11 x i8], ptr %string, i64 0, i64 0
  %call41 = call ptr @strchr(ptr noundef %arraydecay40, i32 noundef 56) #3
  %cmp42 = icmp eq ptr %call41, null
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end39
  br label %for.inc

if.end44:                                         ; preds = %if.end39
  %arraydecay45 = getelementptr inbounds [11 x i8], ptr %string, i64 0, i64 0
  %call46 = call ptr @strchr(ptr noundef %arraydecay45, i32 noundef 57) #3
  %cmp47 = icmp eq ptr %call46, null
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  br label %for.inc

if.end49:                                         ; preds = %if.end44
  %6 = load i64, ptr %count, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %count, align 8
  %7 = load i64, ptr %count, align 8
  %cmp50 = icmp eq i64 %7, 1000000
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end49
  br label %for.end

if.end52:                                         ; preds = %if.end49
  br label %for.inc

for.inc:                                          ; preds = %if.end52, %if.then48, %if.then43, %if.then38, %if.then33, %if.then28, %if.then23, %if.then18, %if.then13, %if.then8, %if.then
  %8 = load i64, ptr %i, align 8
  %inc53 = add i64 %8, 1
  store i64 %inc53, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then51, %for.cond
  %9 = load i64, ptr %i, align 8
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %9)
  ret i32 0
}

declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @strchr(ptr noundef, i32 noundef) #2

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
