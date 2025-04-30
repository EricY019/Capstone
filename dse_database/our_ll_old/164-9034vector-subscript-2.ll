; ModuleID = './code/164-9034vector-subscript-2.c'
source_filename = "./code/164-9034vector-subscript-2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.TV4 = type { <4 x i32> }

@val3 = global %struct.TV4 zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @modify() #0 {
entry:
  %tmp = alloca %struct.TV4, align 16
  %call = call %struct.TV4 @myfunc2(i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4)
  %0 = getelementptr inbounds %struct.TV4, ptr %tmp, i32 0, i32 0
  %1 = extractvalue %struct.TV4 %call, 0
  store <4 x i32> %1, ptr %0, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 @val3, ptr align 16 %tmp, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal %struct.TV4 @myfunc2(i32 noundef %x, i32 noundef %y, i32 noundef %z, i32 noundef %w) #0 {
entry:
  %retval = alloca %struct.TV4, align 16
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %z, ptr %z.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %v = getelementptr inbounds %struct.TV4, ptr %retval, i32 0, i32 0
  %1 = load <4 x i32>, ptr %v, align 16
  %vecins = insertelement <4 x i32> %1, i32 %0, i32 0
  store <4 x i32> %vecins, ptr %v, align 16
  %2 = load i32, ptr %y.addr, align 4
  %v1 = getelementptr inbounds %struct.TV4, ptr %retval, i32 0, i32 0
  %3 = load <4 x i32>, ptr %v1, align 16
  %vecins2 = insertelement <4 x i32> %3, i32 %2, i32 1
  store <4 x i32> %vecins2, ptr %v1, align 16
  %4 = load i32, ptr %z.addr, align 4
  %v3 = getelementptr inbounds %struct.TV4, ptr %retval, i32 0, i32 0
  %5 = load <4 x i32>, ptr %v3, align 16
  %vecins4 = insertelement <4 x i32> %5, i32 %4, i32 2
  store <4 x i32> %vecins4, ptr %v3, align 16
  %6 = load i32, ptr %w.addr, align 4
  %v5 = getelementptr inbounds %struct.TV4, ptr %retval, i32 0, i32 0
  %7 = load <4 x i32>, ptr %v5, align 16
  %vecins6 = insertelement <4 x i32> %7, i32 %6, i32 3
  store <4 x i32> %vecins6, ptr %v5, align 16
  %8 = load %struct.TV4, ptr %retval, align 16
  ret %struct.TV4 %8
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %a = alloca [4 x i32], align 4
  %i = alloca i32, align 4
  %a1 = alloca <4 x i32>, align 16
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @modify()
  %0 = load <4 x i32>, ptr @val3, align 16
  %vecext = extractelement <4 x i32> %0, i32 0
  %cmp = icmp ne i32 %vecext, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %1 = load <4 x i32>, ptr @val3, align 16
  %vecext1 = extractelement <4 x i32> %1, i32 1
  %cmp2 = icmp ne i32 %vecext1, 2
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end4:                                          ; preds = %if.end
  %2 = load <4 x i32>, ptr @val3, align 16
  %vecext5 = extractelement <4 x i32> %2, i32 2
  %cmp6 = icmp ne i32 %vecext5, 3
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @abort() #3
  unreachable

if.end8:                                          ; preds = %if.end4
  %3 = load <4 x i32>, ptr @val3, align 16
  %vecext9 = extractelement <4 x i32> %3, i32 3
  %cmp10 = icmp ne i32 %vecext9, 4
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @abort() #3
  unreachable

if.end12:                                         ; preds = %if.end8
  %4 = load <4 x i32>, ptr @val3, align 16
  store <4 x i32> %4, ptr %a1, align 16
  %5 = load <4 x i32>, ptr %a1, align 16
  %vecext13 = extractelement <4 x i32> %5, i32 0
  %cmp14 = icmp ne i32 %vecext13, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @abort() #3
  unreachable

if.end16:                                         ; preds = %if.end12
  %6 = load <4 x i32>, ptr %a1, align 16
  %vecext17 = extractelement <4 x i32> %6, i32 1
  %cmp18 = icmp ne i32 %vecext17, 2
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @abort() #3
  unreachable

if.end20:                                         ; preds = %if.end16
  %7 = load <4 x i32>, ptr %a1, align 16
  %vecext21 = extractelement <4 x i32> %7, i32 2
  %cmp22 = icmp ne i32 %vecext21, 3
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @abort() #3
  unreachable

if.end24:                                         ; preds = %if.end20
  %8 = load <4 x i32>, ptr %a1, align 16
  %vecext25 = extractelement <4 x i32> %8, i32 3
  %cmp26 = icmp ne i32 %vecext25, 4
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @abort() #3
  unreachable

if.end28:                                         ; preds = %if.end24
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay, ptr align 16 @val3, i64 16, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end28
  %9 = load i32, ptr %i, align 4
  %cmp29 = icmp slt i32 %9, 4
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %a, i64 0, i64 %idxprom
  %11 = load i32, ptr %arrayidx, align 4
  %12 = load i32, ptr %i, align 4
  %add = add nsw i32 %12, 1
  %cmp30 = icmp ne i32 %11, %add
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.body
  call void @abort() #3
  unreachable

if.end32:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
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
