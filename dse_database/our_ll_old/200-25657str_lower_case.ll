; ModuleID = './code/200-25657str_lower_case.c'
source_filename = "./code/200-25657str_lower_case.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [13 x i8] c"HellO, WoRlD\00", align 1
@__const.main.src2 = private unnamed_addr constant [6 x i8] c"hElLo\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"200-25657str_lower_case.c\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"dest1 != NULL\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"dest2 != NULL\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"dest3 != NULL\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Before lowercase\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"================\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"src1: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"src2: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"src3: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0AAfter lowercase\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"dest1: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"dest2: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"dest3: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @str_lower_case(ptr noundef %dest, ptr noundef %src) #0 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  store i64 0, ptr %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %src.addr, align 8
  %1 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %src.addr, align 8
  %4 = load i64, ptr %i, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 %4
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %call = call i32 @tolower(i32 noundef %conv3) #7
  %conv4 = trunc i32 %call to i8
  %6 = load ptr, ptr %dest.addr, align 8
  %7 = load i64, ptr %i, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %6, i64 %7
  store i8 %conv4, ptr %arrayidx5, align 1
  %8 = load i64, ptr %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %dest.addr, align 8
  %10 = load i64, ptr %i, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %9, i64 %10
  store i8 0, ptr %arrayidx6, align 1
  %11 = load ptr, ptr %dest.addr, align 8
  ret ptr %11
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %src1 = alloca ptr, align 8
  %src2 = alloca [6 x i8], align 1
  %src3 = alloca ptr, align 8
  %dest1 = alloca ptr, align 8
  %dest2 = alloca ptr, align 8
  %dest3 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr @.str, ptr %src1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %src2, ptr align 1 @__const.main.src2, i64 6, i1 false)
  store ptr @.str.1, ptr %src3, align 8
  %0 = load ptr, ptr %src1, align 8
  %call = call i64 @strlen(ptr noundef %0) #8
  %mul = mul i64 %call, 1
  %add = add i64 %mul, 1
  %call1 = call ptr @malloc(i64 noundef %add) #9
  store ptr %call1, ptr %dest1, align 8
  %arraydecay = getelementptr inbounds [6 x i8], ptr %src2, i64 0, i64 0
  %call2 = call i64 @strlen(ptr noundef %arraydecay) #8
  %mul3 = mul i64 %call2, 1
  %add4 = add i64 %mul3, 1
  %call5 = call ptr @malloc(i64 noundef %add4) #9
  store ptr %call5, ptr %dest2, align 8
  %1 = load ptr, ptr %src3, align 8
  %call6 = call i64 @strlen(ptr noundef %1) #8
  %mul7 = mul i64 %call6, 1
  %add8 = add i64 %mul7, 1
  %call9 = call ptr @malloc(i64 noundef %add8) #9
  store ptr %call9, ptr %dest3, align 8
  %2 = load ptr, ptr %dest1, align 8
  %cmp = icmp ne ptr %2, null
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.2, i32 noundef 39, ptr noundef @.str.3) #10
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %dest2, align 8
  %cmp10 = icmp ne ptr %4, null
  %lnot12 = xor i1 %cmp10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv14 = sext i32 %lnot.ext13 to i64
  %tobool15 = icmp ne i64 %conv14, 0
  br i1 %tobool15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.2, i32 noundef 40, ptr noundef @.str.4) #10
  unreachable

5:                                                ; No predecessors!
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %5
  %6 = load ptr, ptr %dest3, align 8
  %cmp19 = icmp ne ptr %6, null
  %lnot21 = xor i1 %cmp19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %tobool24 = icmp ne i64 %conv23, 0
  br i1 %tobool24, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %cond.end18
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.2, i32 noundef 41, ptr noundef @.str.5) #10
  unreachable

7:                                                ; No predecessors!
  br label %cond.end27

cond.false26:                                     ; preds = %cond.end18
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %7
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %8 = load ptr, ptr %src1, align 8
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %8)
  %arraydecay31 = getelementptr inbounds [6 x i8], ptr %src2, i64 0, i64 0
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %arraydecay31)
  %9 = load ptr, ptr %src3, align 8
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %9)
  %10 = load ptr, ptr %dest1, align 8
  %11 = load ptr, ptr %src1, align 8
  %call34 = call ptr @str_lower_case(ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %dest2, align 8
  %arraydecay35 = getelementptr inbounds [6 x i8], ptr %src2, i64 0, i64 0
  %call36 = call ptr @str_lower_case(ptr noundef %12, ptr noundef %arraydecay35)
  %13 = load ptr, ptr %dest3, align 8
  %14 = load ptr, ptr %src3, align 8
  %call37 = call ptr @str_lower_case(ptr noundef %13, ptr noundef %14)
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %15 = load ptr, ptr %dest1, align 8
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, ptr noundef %15)
  %16 = load ptr, ptr %dest2, align 8
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef %16)
  %17 = load ptr, ptr %dest3, align 8
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef %17)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #4

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

declare i32 @printf(ptr noundef, ...) #6

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }
attributes #9 = { allocsize(0) }
attributes #10 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
