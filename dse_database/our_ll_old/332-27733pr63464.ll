; ModuleID = './code/332-27733pr63464.c'
source_filename = "./code/332-27733pr63464.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@cnt = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bar(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  %0 = load i32, ptr @cnt, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @cnt, align 4
  %1 = load i32, ptr %y.addr, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb9
    i32 4, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %cmp = icmp ult i32 %2, 24
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %3 = load i32, ptr %x.addr, align 4
  %shl = shl i32 1, %3
  %and = and i32 %shl, 8784908
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %4 = load i32, ptr %x.addr, align 4
  %cmp3 = icmp uge i32 %4, 24
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb2
  %5 = load i32, ptr %x.addr, align 4
  %shl4 = shl i32 1, %5
  %and5 = and i32 %shl4, 8784908
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %sw.bb2
  call void @abort() #2
  unreachable

if.end8:                                          ; preds = %lor.lhs.false
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %6 = load i32, ptr %x.addr, align 4
  %sub = sub i32 %6, 43
  %cmp10 = icmp ult i32 %sub, 40
  br i1 %cmp10, label %land.lhs.true11, label %if.end17

land.lhs.true11:                                  ; preds = %sw.bb9
  %7 = load i32, ptr %x.addr, align 4
  %sub12 = sub i32 %7, 43
  %sh_prom = zext i32 %sub12 to i64
  %shl13 = shl i64 1, %sh_prom
  %and14 = and i64 %shl13, 614180323407
  %cmp15 = icmp ne i64 %and14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true11
  call void @abort() #2
  unreachable

if.end17:                                         ; preds = %land.lhs.true11, %sw.bb9
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %8 = load i32, ptr %x.addr, align 4
  %sub19 = sub i32 %8, 43
  %cmp20 = icmp uge i32 %sub19, 40
  br i1 %cmp20, label %if.then27, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %sw.bb18
  %9 = load i32, ptr %x.addr, align 4
  %sub22 = sub i32 %9, 43
  %sh_prom23 = zext i32 %sub22 to i64
  %shl24 = shl i64 1, %sh_prom23
  %and25 = and i64 %shl24, 614180323407
  %cmp26 = icmp eq i64 %and25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %lor.lhs.false21, %sw.bb18
  call void @abort() #2
  unreachable

if.end28:                                         ; preds = %lor.lhs.false21
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @abort() #2
  unreachable

sw.epilog:                                        ; preds = %if.end28, %if.end17, %if.end8, %if.end
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f1(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %x.addr, align 4
  %cmp3 = icmp ne i32 %2, 10
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, ptr %x.addr, align 4
  %cmp5 = icmp ne i32 %3, 11
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %4 = load i32, ptr %x.addr, align 4
  %cmp7 = icmp ne i32 %4, 17
  br i1 %cmp7, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %5 = load i32, ptr %x.addr, align 4
  %cmp9 = icmp ne i32 %5, 18
  br i1 %cmp9, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %6 = load i32, ptr %x.addr, align 4
  %cmp11 = icmp ne i32 %6, 23
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true10
  %7 = load i32, ptr %x.addr, align 4
  call void @bar(i32 noundef %7, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true10, %land.lhs.true8, %land.lhs.true6, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f2(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %x.addr, align 4
  %cmp3 = icmp eq i32 %2, 10
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, ptr %x.addr, align 4
  %cmp5 = icmp eq i32 %3, 11
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i32, ptr %x.addr, align 4
  %cmp7 = icmp eq i32 %4, 17
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %5 = load i32, ptr %x.addr, align 4
  %cmp9 = icmp eq i32 %5, 18
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %6 = load i32, ptr %x.addr, align 4
  %cmp11 = icmp eq i32 %6, 23
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %7 = load i32, ptr %x.addr, align 4
  call void @bar(i32 noundef %7, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false10
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f3(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp ne i32 %0, 43
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %cmp1 = icmp ne i32 %1, 76
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %x.addr, align 4
  %cmp3 = icmp ne i32 %2, 44
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, ptr %x.addr, align 4
  %cmp5 = icmp ne i32 %3, 78
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %4 = load i32, ptr %x.addr, align 4
  %cmp7 = icmp ne i32 %4, 49
  br i1 %cmp7, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %5 = load i32, ptr %x.addr, align 4
  %cmp9 = icmp ne i32 %5, 77
  br i1 %cmp9, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %6 = load i32, ptr %x.addr, align 4
  %cmp11 = icmp ne i32 %6, 46
  br i1 %cmp11, label %land.lhs.true12, label %if.end

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %7 = load i32, ptr %x.addr, align 4
  %cmp13 = icmp ne i32 %7, 75
  br i1 %cmp13, label %land.lhs.true14, label %if.end

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %8 = load i32, ptr %x.addr, align 4
  %cmp15 = icmp ne i32 %8, 45
  br i1 %cmp15, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %9 = load i32, ptr %x.addr, align 4
  %cmp17 = icmp ne i32 %9, 82
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true16
  %10 = load i32, ptr %x.addr, align 4
  call void @bar(i32 noundef %10, i32 noundef 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true16, %land.lhs.true14, %land.lhs.true12, %land.lhs.true10, %land.lhs.true8, %land.lhs.true6, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f4(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp eq i32 %0, 43
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %cmp1 = icmp eq i32 %1, 76
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %x.addr, align 4
  %cmp3 = icmp eq i32 %2, 44
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, ptr %x.addr, align 4
  %cmp5 = icmp eq i32 %3, 78
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i32, ptr %x.addr, align 4
  %cmp7 = icmp eq i32 %4, 49
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %5 = load i32, ptr %x.addr, align 4
  %cmp9 = icmp eq i32 %5, 77
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %6 = load i32, ptr %x.addr, align 4
  %cmp11 = icmp eq i32 %6, 46
  br i1 %cmp11, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %7 = load i32, ptr %x.addr, align 4
  %cmp13 = icmp eq i32 %7, 75
  br i1 %cmp13, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %8 = load i32, ptr %x.addr, align 4
  %cmp15 = icmp eq i32 %8, 45
  br i1 %cmp15, label %if.then, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %9 = load i32, ptr %x.addr, align 4
  %cmp17 = icmp eq i32 %9, 82
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false16, %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %10 = load i32, ptr %x.addr, align 4
  call void @bar(i32 noundef %10, i32 noundef 4)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @f1(i32 noundef -2147483648)
  store i32 -3, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 92
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  call void @f1(i32 noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  call void @f1(i32 noundef 2147483647)
  %3 = load i32, ptr @cnt, align 4
  %cmp1 = icmp ne i32 %3, 90
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.end
  call void @f2(i32 noundef -2147483648)
  store i32 -3, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc5, %if.end
  %4 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %4, 92
  br i1 %cmp3, label %for.body4, label %for.end7

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, ptr %i, align 4
  call void @f2(i32 noundef %5)
  br label %for.inc5

for.inc5:                                         ; preds = %for.body4
  %6 = load i32, ptr %i, align 4
  %inc6 = add nsw i32 %6, 1
  store i32 %inc6, ptr %i, align 4
  br label %for.cond2, !llvm.loop !7

for.end7:                                         ; preds = %for.cond2
  call void @f2(i32 noundef 2147483647)
  %7 = load i32, ptr @cnt, align 4
  %cmp8 = icmp ne i32 %7, 97
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.end7
  call void @abort() #2
  unreachable

if.end10:                                         ; preds = %for.end7
  call void @f3(i32 noundef -2147483648)
  store i32 -3, ptr %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc14, %if.end10
  %8 = load i32, ptr %i, align 4
  %cmp12 = icmp slt i32 %8, 92
  br i1 %cmp12, label %for.body13, label %for.end16

for.body13:                                       ; preds = %for.cond11
  %9 = load i32, ptr %i, align 4
  call void @f3(i32 noundef %9)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body13
  %10 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %10, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond11, !llvm.loop !8

for.end16:                                        ; preds = %for.cond11
  call void @f3(i32 noundef 2147483647)
  %11 = load i32, ptr @cnt, align 4
  %cmp17 = icmp ne i32 %11, 184
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.end16
  call void @abort() #2
  unreachable

if.end19:                                         ; preds = %for.end16
  call void @f4(i32 noundef -2147483648)
  store i32 -3, ptr %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc23, %if.end19
  %12 = load i32, ptr %i, align 4
  %cmp21 = icmp slt i32 %12, 92
  br i1 %cmp21, label %for.body22, label %for.end25

for.body22:                                       ; preds = %for.cond20
  %13 = load i32, ptr %i, align 4
  call void @f4(i32 noundef %13)
  br label %for.inc23

for.inc23:                                        ; preds = %for.body22
  %14 = load i32, ptr %i, align 4
  %inc24 = add nsw i32 %14, 1
  store i32 %inc24, ptr %i, align 4
  br label %for.cond20, !llvm.loop !9

for.end25:                                        ; preds = %for.cond20
  call void @f4(i32 noundef 2147483647)
  %15 = load i32, ptr @cnt, align 4
  %cmp26 = icmp ne i32 %15, 194
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.end25
  call void @abort() #2
  unreachable

if.end28:                                         ; preds = %for.end25
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn nounwind }

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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
