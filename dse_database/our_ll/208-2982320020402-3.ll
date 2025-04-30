; ModuleID = 'code/208-2982320020402-3.c'
source_filename = "code/208-2982320020402-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blockvector = type { i32, [2 x %struct.block*] }
%struct.block = type { i64, i64, %struct.symbol*, %struct.block*, i8, i32, [1 x %struct.symbol] }
%struct.symbol = type { i32, i8* }
%struct.symtab = type { %struct.blockvector* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.blockvector* @blockvector_for_pc_sect(i64 %pc, %struct.symtab* %symtab) #0 {
entry:
  %retval = alloca %struct.blockvector*, align 8
  %pc.addr = alloca i64, align 8
  %symtab.addr = alloca %struct.symtab*, align 8
  %b = alloca %struct.block*, align 8
  %bot = alloca i32, align 4
  %top = alloca i32, align 4
  %half = alloca i32, align 4
  %bl = alloca %struct.blockvector*, align 8
  store i64 %pc, i64* %pc.addr, align 8
  store %struct.symtab* %symtab, %struct.symtab** %symtab.addr, align 8
  %0 = load %struct.symtab*, %struct.symtab** %symtab.addr, align 8
  %blockvector = getelementptr inbounds %struct.symtab, %struct.symtab* %0, i32 0, i32 0
  %1 = load %struct.blockvector*, %struct.blockvector** %blockvector, align 8
  store %struct.blockvector* %1, %struct.blockvector** %bl, align 8
  %2 = load %struct.blockvector*, %struct.blockvector** %bl, align 8
  %block = getelementptr inbounds %struct.blockvector, %struct.blockvector* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.block*], [2 x %struct.block*]* %block, i64 0, i64 0
  %3 = load %struct.block*, %struct.block** %arrayidx, align 8
  store %struct.block* %3, %struct.block** %b, align 8
  store i32 0, i32* %bot, align 4
  %4 = load %struct.blockvector*, %struct.blockvector** %bl, align 8
  %nblocks = getelementptr inbounds %struct.blockvector, %struct.blockvector* %4, i32 0, i32 0
  %5 = load i32, i32* %nblocks, align 8
  store i32 %5, i32* %top, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i32, i32* %top, align 4
  %7 = load i32, i32* %bot, align 4
  %sub = sub nsw i32 %6, %7
  %cmp = icmp sgt i32 %sub, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %top, align 4
  %9 = load i32, i32* %bot, align 4
  %sub1 = sub nsw i32 %8, %9
  %add = add nsw i32 %sub1, 1
  %shr = ashr i32 %add, 1
  store i32 %shr, i32* %half, align 4
  %10 = load %struct.blockvector*, %struct.blockvector** %bl, align 8
  %block2 = getelementptr inbounds %struct.blockvector, %struct.blockvector* %10, i32 0, i32 1
  %11 = load i32, i32* %bot, align 4
  %12 = load i32, i32* %half, align 4
  %add3 = add nsw i32 %11, %12
  %idxprom = sext i32 %add3 to i64
  %arrayidx4 = getelementptr inbounds [2 x %struct.block*], [2 x %struct.block*]* %block2, i64 0, i64 %idxprom
  %13 = load %struct.block*, %struct.block** %arrayidx4, align 8
  store %struct.block* %13, %struct.block** %b, align 8
  %14 = load %struct.block*, %struct.block** %b, align 8
  %startaddr = getelementptr inbounds %struct.block, %struct.block* %14, i32 0, i32 0
  %15 = load i64, i64* %startaddr, align 8
  %16 = load i64, i64* %pc.addr, align 8
  %cmp5 = icmp ule i64 %15, %16
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %17 = load i32, i32* %half, align 4
  %18 = load i32, i32* %bot, align 4
  %add6 = add nsw i32 %18, %17
  store i32 %add6, i32* %bot, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %19 = load i32, i32* %bot, align 4
  %20 = load i32, i32* %half, align 4
  %add7 = add nsw i32 %19, %20
  store i32 %add7, i32* %top, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %while.cond8

while.cond8:                                      ; preds = %if.end16, %while.end
  %21 = load i32, i32* %bot, align 4
  %cmp9 = icmp sge i32 %21, 0
  br i1 %cmp9, label %while.body10, label %while.end17

while.body10:                                     ; preds = %while.cond8
  %22 = load %struct.blockvector*, %struct.blockvector** %bl, align 8
  %block11 = getelementptr inbounds %struct.blockvector, %struct.blockvector* %22, i32 0, i32 1
  %23 = load i32, i32* %bot, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds [2 x %struct.block*], [2 x %struct.block*]* %block11, i64 0, i64 %idxprom12
  %24 = load %struct.block*, %struct.block** %arrayidx13, align 8
  store %struct.block* %24, %struct.block** %b, align 8
  %25 = load %struct.block*, %struct.block** %b, align 8
  %endaddr = getelementptr inbounds %struct.block, %struct.block* %25, i32 0, i32 1
  %26 = load i64, i64* %endaddr, align 8
  %27 = load i64, i64* %pc.addr, align 8
  %cmp14 = icmp ugt i64 %26, %27
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body10
  %28 = load %struct.blockvector*, %struct.blockvector** %bl, align 8
  store %struct.blockvector* %28, %struct.blockvector** %retval, align 8
  br label %return

if.end16:                                         ; preds = %while.body10
  %29 = load i32, i32* %bot, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %bot, align 4
  br label %while.cond8, !llvm.loop !6

while.end17:                                      ; preds = %while.cond8
  store %struct.blockvector* null, %struct.blockvector** %retval, align 8
  br label %return

return:                                           ; preds = %while.end17, %if.then15
  %30 = load %struct.blockvector*, %struct.blockvector** %retval, align 8
  ret %struct.blockvector* %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct.block, align 8
  %b = alloca %struct.block, align 8
  %bv = alloca %struct.blockvector, align 8
  %s = alloca %struct.symtab, align 8
  %ret = alloca %struct.blockvector*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.block* %a to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 56, i1 false)
  %1 = bitcast i8* %0 to %struct.block*
  %2 = getelementptr inbounds %struct.block, %struct.block* %1, i32 0, i32 1
  store i64 65536, i64* %2, align 8
  %3 = getelementptr inbounds %struct.block, %struct.block* %1, i32 0, i32 4
  store i8 1, i8* %3, align 8
  %4 = getelementptr inbounds %struct.block, %struct.block* %1, i32 0, i32 5
  store i32 20, i32* %4, align 4
  %5 = bitcast %struct.block* %b to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 56, i1 false)
  %6 = bitcast i8* %5 to %struct.block*
  %7 = getelementptr inbounds %struct.block, %struct.block* %6, i32 0, i32 0
  store i64 65536, i64* %7, align 8
  %8 = getelementptr inbounds %struct.block, %struct.block* %6, i32 0, i32 1
  store i64 131072, i64* %8, align 8
  %9 = getelementptr inbounds %struct.block, %struct.block* %6, i32 0, i32 4
  store i8 1, i8* %9, align 8
  %10 = getelementptr inbounds %struct.block, %struct.block* %6, i32 0, i32 5
  store i32 20, i32* %10, align 4
  %nblocks = getelementptr inbounds %struct.blockvector, %struct.blockvector* %bv, i32 0, i32 0
  store i32 2, i32* %nblocks, align 8
  %block = getelementptr inbounds %struct.blockvector, %struct.blockvector* %bv, i32 0, i32 1
  %arrayinit.begin = getelementptr inbounds [2 x %struct.block*], [2 x %struct.block*]* %block, i64 0, i64 0
  store %struct.block* %a, %struct.block** %arrayinit.begin, align 8
  %arrayinit.element = getelementptr inbounds %struct.block*, %struct.block** %arrayinit.begin, i64 1
  store %struct.block* %b, %struct.block** %arrayinit.element, align 8
  %blockvector = getelementptr inbounds %struct.symtab, %struct.symtab* %s, i32 0, i32 0
  store %struct.blockvector* %bv, %struct.blockvector** %blockvector, align 8
  %call = call %struct.blockvector* @blockvector_for_pc_sect(i64 1280, %struct.symtab* %s)
  store %struct.blockvector* %call, %struct.blockvector** %ret, align 8
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
