; ModuleID = './code/208-2982320020402-3.c'
source_filename = "./code/208-2982320020402-3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.symtab = type { ptr }
%struct.blockvector = type { i32, [2 x ptr] }
%struct.block = type { i64, i64, ptr, ptr, i8, i32, [1 x %struct.symbol] }
%struct.symbol = type { i32, ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @blockvector_for_pc_sect(i64 noundef %pc, ptr noundef %symtab) #0 {
entry:
  %retval = alloca ptr, align 8
  %pc.addr = alloca i64, align 8
  %symtab.addr = alloca ptr, align 8
  %b = alloca ptr, align 8
  %bot = alloca i32, align 4
  %top = alloca i32, align 4
  %half = alloca i32, align 4
  %bl = alloca ptr, align 8
  store i64 %pc, ptr %pc.addr, align 8
  store ptr %symtab, ptr %symtab.addr, align 8
  %0 = load ptr, ptr %symtab.addr, align 8
  %blockvector = getelementptr inbounds %struct.symtab, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %blockvector, align 8
  store ptr %1, ptr %bl, align 8
  %2 = load ptr, ptr %bl, align 8
  %block = getelementptr inbounds %struct.blockvector, ptr %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %block, i64 0, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %b, align 8
  store i32 0, ptr %bot, align 4
  %4 = load ptr, ptr %bl, align 8
  %nblocks = getelementptr inbounds %struct.blockvector, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %nblocks, align 8
  store i32 %5, ptr %top, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i32, ptr %top, align 4
  %7 = load i32, ptr %bot, align 4
  %sub = sub nsw i32 %6, %7
  %cmp = icmp sgt i32 %sub, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, ptr %top, align 4
  %9 = load i32, ptr %bot, align 4
  %sub1 = sub nsw i32 %8, %9
  %add = add nsw i32 %sub1, 1
  %shr = ashr i32 %add, 1
  store i32 %shr, ptr %half, align 4
  %10 = load ptr, ptr %bl, align 8
  %block2 = getelementptr inbounds %struct.blockvector, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %bot, align 4
  %12 = load i32, ptr %half, align 4
  %add3 = add nsw i32 %11, %12
  %idxprom = sext i32 %add3 to i64
  %arrayidx4 = getelementptr inbounds [2 x ptr], ptr %block2, i64 0, i64 %idxprom
  %13 = load ptr, ptr %arrayidx4, align 8
  store ptr %13, ptr %b, align 8
  %14 = load ptr, ptr %b, align 8
  %startaddr = getelementptr inbounds %struct.block, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %startaddr, align 8
  %16 = load i64, ptr %pc.addr, align 8
  %cmp5 = icmp ule i64 %15, %16
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %17 = load i32, ptr %half, align 4
  %18 = load i32, ptr %bot, align 4
  %add6 = add nsw i32 %18, %17
  store i32 %add6, ptr %bot, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %19 = load i32, ptr %bot, align 4
  %20 = load i32, ptr %half, align 4
  %add7 = add nsw i32 %19, %20
  store i32 %add7, ptr %top, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %while.cond8

while.cond8:                                      ; preds = %if.end16, %while.end
  %21 = load i32, ptr %bot, align 4
  %cmp9 = icmp sge i32 %21, 0
  br i1 %cmp9, label %while.body10, label %while.end17

while.body10:                                     ; preds = %while.cond8
  %22 = load ptr, ptr %bl, align 8
  %block11 = getelementptr inbounds %struct.blockvector, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %bot, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds [2 x ptr], ptr %block11, i64 0, i64 %idxprom12
  %24 = load ptr, ptr %arrayidx13, align 8
  store ptr %24, ptr %b, align 8
  %25 = load ptr, ptr %b, align 8
  %endaddr = getelementptr inbounds %struct.block, ptr %25, i32 0, i32 1
  %26 = load i64, ptr %endaddr, align 8
  %27 = load i64, ptr %pc.addr, align 8
  %cmp14 = icmp ugt i64 %26, %27
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body10
  %28 = load ptr, ptr %bl, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

if.end16:                                         ; preds = %while.body10
  %29 = load i32, ptr %bot, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, ptr %bot, align 4
  br label %while.cond8, !llvm.loop !7

while.end17:                                      ; preds = %while.cond8
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end17, %if.then15
  %30 = load ptr, ptr %retval, align 8
  ret ptr %30
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct.block, align 8
  %b = alloca %struct.block, align 8
  %bv = alloca %struct.blockvector, align 8
  %s = alloca %struct.symtab, align 8
  %ret = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %a, i8 0, i64 56, i1 false)
  %0 = getelementptr inbounds %struct.block, ptr %a, i32 0, i32 1
  store i64 65536, ptr %0, align 8
  %1 = getelementptr inbounds %struct.block, ptr %a, i32 0, i32 4
  store i8 1, ptr %1, align 8
  %2 = getelementptr inbounds %struct.block, ptr %a, i32 0, i32 5
  store i32 20, ptr %2, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %b, i8 0, i64 56, i1 false)
  %3 = getelementptr inbounds %struct.block, ptr %b, i32 0, i32 0
  store i64 65536, ptr %3, align 8
  %4 = getelementptr inbounds %struct.block, ptr %b, i32 0, i32 1
  store i64 131072, ptr %4, align 8
  %5 = getelementptr inbounds %struct.block, ptr %b, i32 0, i32 4
  store i8 1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.block, ptr %b, i32 0, i32 5
  store i32 20, ptr %6, align 4
  %nblocks = getelementptr inbounds %struct.blockvector, ptr %bv, i32 0, i32 0
  store i32 2, ptr %nblocks, align 8
  %block = getelementptr inbounds %struct.blockvector, ptr %bv, i32 0, i32 1
  store ptr %a, ptr %block, align 8
  %arrayinit.element = getelementptr inbounds ptr, ptr %block, i64 1
  store ptr %b, ptr %arrayinit.element, align 8
  %blockvector = getelementptr inbounds %struct.symtab, ptr %s, i32 0, i32 0
  store ptr %bv, ptr %blockvector, align 8
  %call = call ptr @blockvector_for_pc_sect(i64 noundef 1280, ptr noundef %s)
  store ptr %call, ptr %ret, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
