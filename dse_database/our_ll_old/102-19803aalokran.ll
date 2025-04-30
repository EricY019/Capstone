; ModuleID = './code/102-19803aalokran.c'
source_filename = "./code/102-19803aalokran.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.Kid2 = private unnamed_addr constant [7 x i8] c"Maddie\00", align 1
@__const.main.Kid3 = private unnamed_addr constant [7 x i8] c"Andrew\00", align 1
@__const.main.Hero1 = private unnamed_addr constant [7 x i8] c"Batman\00", align 1
@__const.main.Hero2 = private unnamed_addr constant [34 x i8] c"Spiderman\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str = private unnamed_addr constant [20 x i8] c"The Incredible Hulk\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s's favorite hero is %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %Kid1 = alloca [12 x i8], align 1
  %Kid2 = alloca [7 x i8], align 1
  %Kid3 = alloca [7 x i8], align 1
  %Hero1 = alloca [7 x i8], align 1
  %Hero2 = alloca [34 x i8], align 1
  %Hero3 = alloca [25 x i8], align 1
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Kid2, ptr align 1 @__const.main.Kid2, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Kid3, ptr align 1 @__const.main.Kid3, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Hero1, ptr align 1 @__const.main.Hero1, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Hero2, ptr align 1 @__const.main.Hero2, i64 34, i1 false)
  %arrayidx = getelementptr inbounds [12 x i8], ptr %Kid1, i64 0, i64 0
  store i8 75, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [12 x i8], ptr %Kid1, i64 0, i64 1
  store i8 97, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr inbounds [12 x i8], ptr %Kid1, i64 0, i64 2
  store i8 116, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr inbounds [12 x i8], ptr %Kid1, i64 0, i64 3
  store i8 105, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [12 x i8], ptr %Kid1, i64 0, i64 4
  store i8 101, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [12 x i8], ptr %Kid1, i64 0, i64 5
  store i8 0, ptr %arrayidx5, align 1
  %arraydecay = getelementptr inbounds [25 x i8], ptr %Hero3, i64 0, i64 0
  %call = call ptr @__strcpy_chk(ptr noundef %arraydecay, ptr noundef @.str, i64 noundef 25) #4
  %arraydecay6 = getelementptr inbounds [12 x i8], ptr %Kid1, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [7 x i8], ptr %Hero1, i64 0, i64 0
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay6, ptr noundef %arraydecay7)
  %arraydecay9 = getelementptr inbounds [7 x i8], ptr %Kid2, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [34 x i8], ptr %Hero2, i64 0, i64 0
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay9, ptr noundef %arraydecay10)
  %arraydecay12 = getelementptr inbounds [7 x i8], ptr %Kid3, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [25 x i8], ptr %Hero3, i64 0, i64 0
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay12, ptr noundef %arraydecay13)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
