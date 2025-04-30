; ModuleID = './code/012-25564sra-14.c'
source_filename = "./code/012-25564sra-14.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.S = type { i32, i32 }
%struct.Z = type { %struct.S, %struct.S }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @get_s() #0 {
entry:
  %retval = alloca %struct.S, align 4
  %i = getelementptr inbounds %struct.S, ptr %retval, i32 0, i32 0
  store i32 5, ptr %i, align 4
  %j = getelementptr inbounds %struct.S, ptr %retval, i32 0, i32 1
  store i32 6, ptr %j, align 4
  %0 = load i64, ptr %retval, align 4
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @get_d() #0 {
entry:
  %retval = alloca %struct.S, align 4
  %i = getelementptr inbounds %struct.S, ptr %retval, i32 0, i32 0
  store i32 0, ptr %i, align 4
  %j = getelementptr inbounds %struct.S, ptr %retval, i32 0, i32 1
  store i32 0, ptr %j, align 4
  %0 = load i64, ptr %retval, align 4
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @get_c() #0 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @my_nop(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @foo() #0 {
entry:
  %z = alloca %struct.Z, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %tmp = alloca %struct.S, align 4
  %tmp2 = alloca %struct.S, align 4
  %call = call i32 @get_c()
  store i32 %call, ptr %c, align 4
  %d = getelementptr inbounds %struct.Z, ptr %z, i32 0, i32 0
  %call1 = call i64 @get_d()
  store i64 %call1, ptr %tmp, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %d, ptr align 4 %tmp, i64 8, i1 false)
  %s = getelementptr inbounds %struct.Z, ptr %z, i32 0, i32 1
  %call3 = call i64 @get_s()
  store i64 %call3, ptr %tmp2, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %s, ptr align 4 %tmp2, i64 8, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %c, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %s4 = getelementptr inbounds %struct.Z, ptr %z, i32 0, i32 1
  %i5 = getelementptr inbounds %struct.S, ptr %s4, i32 0, i32 0
  %2 = load i32, ptr %i5, align 4
  %call6 = call i32 @my_nop(i32 noundef %2)
  %s7 = getelementptr inbounds %struct.Z, ptr %z, i32 0, i32 1
  %i8 = getelementptr inbounds %struct.S, ptr %s7, i32 0, i32 0
  store i32 %call6, ptr %i8, align 4
  %s9 = getelementptr inbounds %struct.Z, ptr %z, i32 0, i32 1
  %j = getelementptr inbounds %struct.S, ptr %s9, i32 0, i32 1
  %3 = load i32, ptr %j, align 4
  %call10 = call i32 @my_nop(i32 noundef %3)
  %s11 = getelementptr inbounds %struct.Z, ptr %z, i32 0, i32 1
  %j12 = getelementptr inbounds %struct.S, ptr %s11, i32 0, i32 1
  store i32 %call10, ptr %j12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %s13 = getelementptr inbounds %struct.Z, ptr %z, i32 0, i32 1
  %i14 = getelementptr inbounds %struct.S, ptr %s13, i32 0, i32 0
  %5 = load i32, ptr %i14, align 4
  %s15 = getelementptr inbounds %struct.Z, ptr %z, i32 0, i32 1
  %j16 = getelementptr inbounds %struct.S, ptr %s15, i32 0, i32 1
  %6 = load i32, ptr %j16, align 4
  %add = add nsw i32 %5, %6
  ret i32 %add
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 @foo()
  %cmp = icmp ne i32 %call, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
