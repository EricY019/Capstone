; ModuleID = './code/372-28707swab.c'
source_filename = "./code/372-28707swab.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [9 x i8] c"abcdefgh\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"'%s' => '%s' (%u)\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"123456789\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %src = alloca [32 x i8], align 1
  %dst = alloca [32 x i8], align 1
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 8, ptr %n, align 4
  %arraydecay = getelementptr inbounds [32 x i8], ptr %src, i64 0, i64 0
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 32, ptr noundef @.str)
  %arraydecay1 = getelementptr inbounds [32 x i8], ptr %src, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [32 x i8], ptr %dst, i64 0, i64 0
  %0 = load i32, ptr %n, align 4
  %conv = sext i32 %0 to i64
  call void @swab(ptr noundef %arraydecay1, ptr noundef %arraydecay2, i64 noundef %conv)
  %arraydecay3 = getelementptr inbounds [32 x i8], ptr %src, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [32 x i8], ptr %dst, i64 0, i64 0
  %1 = load i32, ptr %n, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay3, ptr noundef %arraydecay4, i32 noundef %1)
  store i32 2, ptr %n, align 4
  %arraydecay6 = getelementptr inbounds [32 x i8], ptr %dst, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [32 x i8], ptr %dst, i64 0, i64 0
  %call8 = call i64 @strlen(ptr noundef %arraydecay7) #3
  %call9 = call ptr @__memset_chk(ptr noundef %arraydecay6, i32 noundef 0, i64 noundef %call8, i64 noundef 32) #3
  %arraydecay10 = getelementptr inbounds [32 x i8], ptr %src, i64 0, i64 0
  %call11 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay10, i32 noundef 0, i64 noundef 32, ptr noundef @.str.2)
  %arraydecay12 = getelementptr inbounds [32 x i8], ptr %src, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [32 x i8], ptr %dst, i64 0, i64 0
  %2 = load i32, ptr %n, align 4
  %conv14 = sext i32 %2 to i64
  call void @swab(ptr noundef %arraydecay12, ptr noundef %arraydecay13, i64 noundef %conv14)
  %arraydecay15 = getelementptr inbounds [32 x i8], ptr %src, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [32 x i8], ptr %dst, i64 0, i64 0
  %3 = load i32, ptr %n, align 4
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay15, ptr noundef %arraydecay16, i32 noundef %3)
  ret i32 0
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

declare void @swab(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

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
