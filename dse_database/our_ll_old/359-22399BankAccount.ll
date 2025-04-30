; ModuleID = './code/359-22399BankAccount.c'
source_filename = "./code/359-22399BankAccount.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.firstName = private unnamed_addr constant [7 x i8] c"Iordan\00", align 1
@__const.main.middleName = private unnamed_addr constant [9 x i8] c"Iordanov\00", align 1
@__const.main.lastName = private unnamed_addr constant [9 x i8] c"Iordanov\00", align 1
@__const.main.bankName = private unnamed_addr constant [9 x i8] c"DSK Bank\00", align 1
@__const.main.IBAN = private unnamed_addr constant [29 x i8] c"BG80 BNBG 9888 7420 3456 78 \00", align 1
@.str = private unnamed_addr constant [10 x i8] c"Bank: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Account holder name: %s %s %s\0AIBAN: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Balance: %.5Lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Credit card numbers: %Ld, %Ld, %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %firstName = alloca [7 x i8], align 1
  %middleName = alloca [9 x i8], align 1
  %lastName = alloca [9 x i8], align 1
  %balance = alloca double, align 8
  %bankName = alloca [9 x i8], align 1
  %IBAN = alloca [29 x i8], align 1
  %firstCardNum = alloca i64, align 8
  %secondCardNum = alloca i64, align 8
  %thirdCardNum = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %firstName, ptr align 1 @__const.main.firstName, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %middleName, ptr align 1 @__const.main.middleName, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %lastName, ptr align 1 @__const.main.lastName, i64 9, i1 false)
  store double 0x405EF9604189374C, ptr %balance, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %bankName, ptr align 1 @__const.main.bankName, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %IBAN, ptr align 1 @__const.main.IBAN, i64 29, i1 false)
  store i64 12325455234, ptr %firstCardNum, align 8
  store i64 89516648536, ptr %secondCardNum, align 8
  store i64 56987456215, ptr %thirdCardNum, align 8
  %arraydecay = getelementptr inbounds [9 x i8], ptr %bankName, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [7 x i8], ptr %firstName, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [9 x i8], ptr %middleName, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [9 x i8], ptr %lastName, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [29 x i8], ptr %IBAN, i64 0, i64 0
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay1, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %arraydecay4)
  %0 = load double, ptr %balance, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %0)
  %1 = load i64, ptr %firstCardNum, align 8
  %2 = load i64, ptr %secondCardNum, align 8
  %3 = load i64, ptr %thirdCardNum, align 8
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %1, i64 noundef %2, i64 noundef %3)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
