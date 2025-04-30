; ModuleID = './code/192-35443py-value.c'
source_filename = "./code/192-35443py-value.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.s = type { i32, i32 }
%union.u = type { i32 }

@evalue = global i32 2, align 4
@.str = private unnamed_addr constant [22 x i8] c"void function called\0A\00", align 1
@__const.main.st = private unnamed_addr constant [17 x i8] c"divide et impera\00", align 1
@__const.main.nullst = private unnamed_addr constant [17 x i8] c"divide\00et\00impera\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"embedded x\81\82\83\84\00", align 1
@__const.main.a = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 3], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @func1() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @func2(i32 noundef %arg1, i32 noundef %arg2) #0 {
entry:
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  store i32 %arg1, ptr %arg1.addr, align 4
  store i32 %arg2, ptr %arg2.addr, align 4
  %0 = load i32, ptr %arg1.addr, align 4
  %1 = load i32, ptr %arg2.addr, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %s = alloca %struct.s, align 4
  %u = alloca %union.u, align 4
  %x = alloca ptr, align 8
  %st = alloca [17 x i8], align 1
  %nullst = alloca [17 x i8], align 1
  %fp1 = alloca ptr, align 8
  %fp2 = alloca ptr, align 8
  %sptr = alloca ptr, align 8
  %embed = alloca ptr, align 8
  %a = alloca [3 x i32], align 4
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %ptr_i = alloca ptr, align 8
  %sn = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  store ptr %1, ptr %cp, align 8
  store ptr %s, ptr %x, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %st, ptr align 1 @__const.main.st, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nullst, ptr align 1 @__const.main.nullst, i64 17, i1 false)
  store ptr @func1, ptr %fp1, align 8
  store ptr @func2, ptr %fp2, align 8
  store ptr @.str.1, ptr %sptr, align 8
  store ptr @.str.2, ptr %embed, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 4 @__const.main.a, i64 12, i1 false)
  %arraydecay = getelementptr inbounds [3 x i32], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8
  store i32 2, ptr %i, align 4
  store ptr %i, ptr %ptr_i, align 8
  store ptr null, ptr %sn, align 8
  %a1 = getelementptr inbounds %struct.s, ptr %s, i32 0, i32 0
  store i32 3, ptr %a1, align 4
  %b = getelementptr inbounds %struct.s, ptr %s, i32 0, i32 1
  store i32 5, ptr %b, align 4
  store i32 7, ptr %u, align 4
  %2 = load ptr, ptr %fp1, align 8
  call void %2()
  %3 = load ptr, ptr %fp2, align 8
  %call = call i32 %3(i32 noundef 10, i32 noundef 20)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
