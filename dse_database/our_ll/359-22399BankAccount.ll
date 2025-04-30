; ModuleID = 'code/359-22399BankAccount.c'
source_filename = "code/359-22399BankAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.firstName = private unnamed_addr constant [7 x i8] c"Iordan\00", align 1
@__const.main.middleName = private unnamed_addr constant [9 x i8] c"Iordanov\00", align 1
@__const.main.lastName = private unnamed_addr constant [9 x i8] c"Iordanov\00", align 1
@__const.main.bankName = private unnamed_addr constant [9 x i8] c"DSK Bank\00", align 1
@__const.main.IBAN = private unnamed_addr constant [29 x i8] c"BG80 BNBG 9888 7420 3456 78 \00", align 16
@.str = private unnamed_addr constant [10 x i8] c"Bank: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Account holder name: %s %s %s\0AIBAN: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Balance: %.5Lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Credit card numbers: %Ld, %Ld, %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %firstName = alloca [7 x i8], align 1
  %middleName = alloca [9 x i8], align 1
  %lastName = alloca [9 x i8], align 1
  %balance = alloca x86_fp80, align 16
  %bankName = alloca [9 x i8], align 1
  %IBAN = alloca [29 x i8], align 16
  %firstCardNum = alloca i64, align 8
  %secondCardNum = alloca i64, align 8
  %thirdCardNum = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [7 x i8]* %firstName to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.firstName, i32 0, i32 0), i64 7, i1 false)
  %1 = bitcast [9 x i8]* %middleName to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.main.middleName, i32 0, i32 0), i64 9, i1 false)
  %2 = bitcast [9 x i8]* %lastName to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.main.lastName, i32 0, i32 0), i64 9, i1 false)
  store x86_fp80 0xK4005F7CB020C49BA6000, x86_fp80* %balance, align 16
  %3 = bitcast [9 x i8]* %bankName to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.main.bankName, i32 0, i32 0), i64 9, i1 false)
  %4 = bitcast [29 x i8]* %IBAN to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.main.IBAN, i32 0, i32 0), i64 29, i1 false)
  store i64 12325455234, i64* %firstCardNum, align 8
  store i64 89516648536, i64* %secondCardNum, align 8
  store i64 56987456215, i64* %thirdCardNum, align 8
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %bankName, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [7 x i8], [7 x i8]* %firstName, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [9 x i8], [9 x i8]* %middleName, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [9 x i8], [9 x i8]* %lastName, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [29 x i8], [29 x i8]* %IBAN, i64 0, i64 0
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay1, i8* %arraydecay2, i8* %arraydecay3, i8* %arraydecay4)
  %5 = load x86_fp80, x86_fp80* %balance, align 16
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), x86_fp80 %5)
  %6 = load i64, i64* %firstCardNum, align 8
  %7 = load i64, i64* %secondCardNum, align 8
  %8 = load i64, i64* %thirdCardNum, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %6, i64 %7, i64 %8)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
