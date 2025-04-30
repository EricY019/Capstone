; ModuleID = 'code/012-18959watch-bitfields.c'
source_filename = "code/012-18959watch-bitfields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type <{ i8, i32, [3 x i8] }>

@q = dso_local global { i8, i8, i8, i8, i8, [3 x i8] } { i8 0, i8 0, i8 0, i8 0, i8 0, [3 x i8] undef }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %bf.load = load i8, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.load1 = load i8, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.clear2 = and i8 %bf.load1, -7
  %bf.set3 = or i8 %bf.clear2, 4
  store i8 %bf.set3, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.load4 = load i8, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.clear5 = and i8 %bf.load4, -57
  %bf.set6 = or i8 %bf.clear5, 24
  store i8 %bf.set6, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.load7 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.clear8 = and i32 %bf.load7, -16
  %bf.set9 = or i32 %bf.clear8, 4
  store i32 %bf.set9, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.load10 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.clear11 = and i32 %bf.load10, -497
  %bf.set12 = or i32 %bf.clear11, 80
  store i32 %bf.set12, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.load13 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.clear14 = and i32 %bf.load13, -32257
  %bf.set15 = or i32 %bf.clear14, 3072
  store i32 %bf.set15, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.load16 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.clear17 = and i32 %bf.load16, -4161537
  %bf.set18 = or i32 %bf.clear17, 3964928
  store i32 %bf.set18, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.load19 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.clear20 = and i32 %bf.load19, -1069547521
  %bf.set21 = or i32 %bf.clear20, 1040187392
  store i32 %bf.set21, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.load22 = load i8, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.clear23 = and i8 %bf.load22, 1
  %bf.cast = zext i8 %bf.clear23 to i64
  %dec = add i64 %bf.cast, -1
  %0 = trunc i64 %dec to i8
  %bf.load24 = load i8, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.value = and i8 %0, 1
  %bf.clear25 = and i8 %bf.load24, -2
  %bf.set26 = or i8 %bf.clear25, %bf.value
  store i8 %bf.set26, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.result.cast = zext i8 %bf.value to i64
  %bf.load27 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.shl = shl i32 %bf.load27, 2
  %bf.ashr = ashr i32 %bf.shl, 24
  %bf.cast28 = sext i32 %bf.ashr to i64
  %dec29 = add nsw i64 %bf.cast28, -1
  %1 = trunc i64 %dec29 to i32
  %bf.load30 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.value31 = and i32 %1, 255
  %bf.shl32 = shl i32 %bf.value31, 22
  %bf.clear33 = and i32 %bf.load30, -1069547521
  %bf.set34 = or i32 %bf.clear33, %bf.shl32
  store i32 %bf.set34, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.result.shl = shl i32 %bf.value31, 24
  %bf.result.ashr = ashr i32 %bf.result.shl, 24
  %bf.result.cast35 = sext i32 %bf.result.ashr to i64
  %bf.load36 = load i8, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.lshr = lshr i8 %bf.load36, 3
  %bf.clear37 = and i8 %bf.lshr, 7
  %bf.cast38 = zext i8 %bf.clear37 to i64
  %dec39 = add i64 %bf.cast38, -1
  %2 = trunc i64 %dec39 to i8
  %bf.load40 = load i8, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.value41 = and i8 %2, 7
  %bf.shl42 = shl i8 %bf.value41, 3
  %bf.clear43 = and i8 %bf.load40, -57
  %bf.set44 = or i8 %bf.clear43, %bf.shl42
  store i8 %bf.set44, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.result.cast45 = zext i8 %bf.value41 to i64
  %bf.load46 = load i8, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.lshr47 = lshr i8 %bf.load46, 1
  %bf.clear48 = and i8 %bf.lshr47, 3
  %dec49 = add i8 %bf.clear48, -1
  %bf.load50 = load i8, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.value51 = and i8 %dec49, 3
  %bf.shl52 = shl i8 %bf.value51, 1
  %bf.clear53 = and i8 %bf.load50, -7
  %bf.set54 = or i8 %bf.clear53, %bf.shl52
  store i8 %bf.set54, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.load55 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.shl56 = shl i32 %bf.load55, 23
  %bf.ashr57 = ashr i32 %bf.shl56, 27
  %dec58 = add nsw i32 %bf.ashr57, -1
  %bf.load59 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.value60 = and i32 %dec58, 31
  %bf.shl61 = shl i32 %bf.value60, 4
  %bf.clear62 = and i32 %bf.load59, -497
  %bf.set63 = or i32 %bf.clear62, %bf.shl61
  store i32 %bf.set63, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.result.shl64 = shl i32 %bf.value60, 27
  %bf.result.ashr65 = ashr i32 %bf.result.shl64, 27
  %bf.load66 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.shl67 = shl i32 %bf.load66, 28
  %bf.ashr68 = ashr i32 %bf.shl67, 28
  %bf.cast69 = trunc i32 %bf.ashr68 to i8
  %dec70 = add i8 %bf.cast69, -1
  %3 = zext i8 %dec70 to i32
  %bf.load71 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.value72 = and i32 %3, 15
  %bf.clear73 = and i32 %bf.load71, -16
  %bf.set74 = or i32 %bf.clear73, %bf.value72
  store i32 %bf.set74, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.result.shl75 = shl i32 %bf.value72, 28
  %bf.result.ashr76 = ashr i32 %bf.result.shl75, 28
  %bf.result.cast77 = trunc i32 %bf.result.ashr76 to i8
  %bf.load78 = load i8, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.lshr79 = lshr i8 %bf.load78, 3
  %bf.clear80 = and i8 %bf.lshr79, 7
  %bf.cast81 = zext i8 %bf.clear80 to i64
  %dec82 = add i64 %bf.cast81, -1
  %4 = trunc i64 %dec82 to i8
  %bf.load83 = load i8, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.value84 = and i8 %4, 7
  %bf.shl85 = shl i8 %bf.value84, 3
  %bf.clear86 = and i8 %bf.load83, -57
  %bf.set87 = or i8 %bf.clear86, %bf.shl85
  store i8 %bf.set87, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8] }, { i8, i8, i8, i8, i8, [3 x i8] }* @q, i32 0, i32 0), align 8
  %bf.result.cast88 = zext i8 %bf.value84 to i64
  %bf.load89 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.shl90 = shl i32 %bf.load89, 17
  %bf.ashr91 = ashr i32 %bf.shl90, 26
  %bf.cast92 = trunc i32 %bf.ashr91 to i8
  %dec93 = add i8 %bf.cast92, -1
  %5 = zext i8 %dec93 to i32
  %bf.load94 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.value95 = and i32 %5, 63
  %bf.shl96 = shl i32 %bf.value95, 9
  %bf.clear97 = and i32 %bf.load94, -32257
  %bf.set98 = or i32 %bf.clear97, %bf.shl96
  store i32 %bf.set98, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.result.shl99 = shl i32 %bf.value95, 26
  %bf.result.ashr100 = ashr i32 %bf.result.shl99, 26
  %bf.result.cast101 = trunc i32 %bf.result.ashr100 to i8
  %bf.load102 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.shl103 = shl i32 %bf.load102, 10
  %bf.ashr104 = ashr i32 %bf.shl103, 25
  %dec105 = add nsw i32 %bf.ashr104, -1
  %bf.load106 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.value107 = and i32 %dec105, 127
  %bf.shl108 = shl i32 %bf.value107, 15
  %bf.clear109 = and i32 %bf.load106, -4161537
  %bf.set110 = or i32 %bf.clear109, %bf.shl108
  store i32 %bf.set110, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.result.shl111 = shl i32 %bf.value107, 25
  %bf.result.ashr112 = ashr i32 %bf.result.shl111, 25
  %bf.load113 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.shl114 = shl i32 %bf.load113, 2
  %bf.ashr115 = ashr i32 %bf.shl114, 24
  %bf.cast116 = sext i32 %bf.ashr115 to i64
  %dec117 = add nsw i64 %bf.cast116, -1
  %6 = trunc i64 %dec117 to i32
  %bf.load118 = load i32, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.value119 = and i32 %6, 255
  %bf.shl120 = shl i32 %bf.value119, 22
  %bf.clear121 = and i32 %bf.load118, -1069547521
  %bf.set122 = or i32 %bf.clear121, %bf.shl120
  store i32 %bf.set122, i32* getelementptr inbounds (%struct.foo, %struct.foo* bitcast ({ i8, i8, i8, i8, i8, [3 x i8] }* @q to %struct.foo*), i32 0, i32 1), align 1
  %bf.result.shl123 = shl i32 %bf.value119, 24
  %bf.result.ashr124 = ashr i32 %bf.result.shl123, 24
  %bf.result.cast125 = sext i32 %bf.result.ashr124 to i64
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
