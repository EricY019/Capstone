; ModuleID = './code/122-19861skip-prologue.c'
source_filename = "./code/122-19861skip-prologue.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.foo = type { [32 x i32] }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f = alloca %struct.foo, align 4
  %byval-temp = alloca %struct.foo, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @f1()
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %byval-temp, ptr align 4 %f, i64 128, i1 false)
  %call1 = call double @f2(i32 noundef 0, i64 noundef 0, double noundef 1.000000e-01, ptr noundef %byval-temp)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @f1() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal double @f2(i32 noundef %a, i64 noundef %b, double noundef %c, ptr noundef %f) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i64, align 8
  %c.addr = alloca double, align 8
  %f.indirect_addr = alloca ptr, align 8
  store i32 %a, ptr %a.addr, align 4
  store i64 %b, ptr %b.addr, align 8
  store double %c, ptr %c.addr, align 8
  store ptr %f, ptr %f.indirect_addr, align 8
  %0 = load i32, ptr %a.addr, align 4
  %1 = load i64, ptr %b.addr, align 8
  %conv = trunc i64 %1 to i32
  %add = add nsw i32 %0, %conv
  %conv1 = sitofp i32 %add to double
  %2 = load double, ptr %c.addr, align 8
  %add2 = fadd double %conv1, %2
  %conv3 = fptosi double %add2 to i32
  %a4 = getelementptr inbounds %struct.foo, ptr %f, i32 0, i32 0
  %arrayidx = getelementptr inbounds [32 x i32], ptr %a4, i64 0, i64 0
  store i32 %conv3, ptr %arrayidx, align 4
  %3 = load double, ptr %c.addr, align 8
  %add5 = fadd double %3, 2.000000e-01
  ret double %add5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
