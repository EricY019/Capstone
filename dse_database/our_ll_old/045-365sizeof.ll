; ModuleID = './code/045-365sizeof.c'
source_filename = "./code/045-365sizeof.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.anon = type { [16 x i8], i8, [16 x i8] }
%struct.anon.0 = type { [16 x i8], i16, [16 x i8] }
%struct.anon.1 = type { [16 x i8], i32, [16 x i8] }
%struct.anon.2 = type { [16 x i8], i64, [16 x i8] }
%struct.anon.3 = type { [16 x i8], i64, [16 x i8] }
%struct.anon.4 = type { [16 x i8], float, [16 x i8] }
%struct.anon.5 = type { [16 x i8], double, [16 x i8] }
%struct.anon.6 = type { [16 x i8], double, [16 x i8] }

@padding_char = global %struct.anon zeroinitializer, align 1
@padding_short = global %struct.anon.0 zeroinitializer, align 2
@padding_int = global %struct.anon.1 zeroinitializer, align 4
@padding_long = global %struct.anon.2 zeroinitializer, align 8
@padding_long_long = global %struct.anon.3 zeroinitializer, align 8
@padding_float = global %struct.anon.4 zeroinitializer, align 4
@padding_double = global %struct.anon.5 zeroinitializer, align 8
@padding_long_double = global %struct.anon.6 zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"sizeof (char) == %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"sizeof (short) == %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"sizeof (int) == %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"sizeof (long) == %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"sizeof (long long) == %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"sizeof (void *) == %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"sizeof (void (*)(void)) == %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"sizeof (float) == %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"sizeof (double) == %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"sizeof (long double) == %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"valueof ('\\377') == %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"valueof ((int) (char) -1) == %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"valueof ((int) (signed char) -1) == %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"valueof ((int) (unsigned char) -1) == %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"The quick brown dingo jumped over the layzy dog.\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @fill_structs() #0 {
entry:
  call void @fill(ptr noundef @padding_char, i64 noundef 16)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon, ptr @padding_char, i32 0, i32 1), i64 noundef 1)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon, ptr @padding_char, i32 0, i32 2), i64 noundef 16)
  call void @fill(ptr noundef @padding_short, i64 noundef 16)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon.0, ptr @padding_short, i32 0, i32 1), i64 noundef 2)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon.0, ptr @padding_short, i32 0, i32 2), i64 noundef 16)
  call void @fill(ptr noundef @padding_int, i64 noundef 16)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @padding_int, i32 0, i32 1), i64 noundef 4)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @padding_int, i32 0, i32 2), i64 noundef 16)
  call void @fill(ptr noundef @padding_long, i64 noundef 16)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon.2, ptr @padding_long, i32 0, i32 1), i64 noundef 8)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon.2, ptr @padding_long, i32 0, i32 2), i64 noundef 16)
  call void @fill(ptr noundef @padding_long_long, i64 noundef 16)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon.3, ptr @padding_long_long, i32 0, i32 1), i64 noundef 8)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon.3, ptr @padding_long_long, i32 0, i32 2), i64 noundef 16)
  call void @fill(ptr noundef @padding_float, i64 noundef 16)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon.4, ptr @padding_float, i32 0, i32 1), i64 noundef 4)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon.4, ptr @padding_float, i32 0, i32 2), i64 noundef 16)
  call void @fill(ptr noundef @padding_double, i64 noundef 16)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon.5, ptr @padding_double, i32 0, i32 1), i64 noundef 8)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon.5, ptr @padding_double, i32 0, i32 2), i64 noundef 16)
  call void @fill(ptr noundef @padding_long_double, i64 noundef 16)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon.6, ptr @padding_long_double, i32 0, i32 1), i64 noundef 8)
  call void @fill(ptr noundef getelementptr inbounds (%struct.anon.6, ptr @padding_long_double, i32 0, i32 2), i64 noundef 16)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @fill(ptr noundef %buf, i64 noundef %sizeof_buf) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %sizeof_buf.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %sizeof_buf, ptr %sizeof_buf.addr, align 8
  %0 = load ptr, ptr %buf.addr, align 8
  store ptr %0, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %conv = sext i32 %1 to i64
  %2 = load i64, ptr %sizeof_buf.addr, align 8
  %cmp = icmp slt i64 %conv, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [49 x i8], ptr @.str.14, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %5 = load ptr, ptr %p, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %5, i64 %idxprom2
  store i8 %4, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @fill_structs()
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 1)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef 2)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 4)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef 8)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef 8)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef 8)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef 8)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef 4)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef 8)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef 8)
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef -1)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef -1)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef -1)
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef 255)
  ret i32 0
}

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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
