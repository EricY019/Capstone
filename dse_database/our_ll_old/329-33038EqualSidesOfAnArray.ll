; ModuleID = './code/329-33038EqualSidesOfAnArray.c'
source_filename = "./code/329-33038EqualSidesOfAnArray.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.arr = private unnamed_addr constant [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 3, i32 2, i32 1], align 4
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [31 x i8] c"329-33038EqualSidesOfAnArray.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"expected == result\00", align 1
@__const.main.arr.2 = private unnamed_addr constant [6 x i32] [i32 1, i32 100, i32 50, i32 -51, i32 1, i32 1], align 4
@__const.main.arr.3 = private unnamed_addr constant [6 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], align 4
@__const.main.arr.4 = private unnamed_addr constant [7 x i32] [i32 20, i32 10, i32 30, i32 10, i32 10, i32 15, i32 35], align 4
@__const.main.arr.5 = private unnamed_addr constant [7 x i32] [i32 20, i32 10, i32 -80, i32 10, i32 10, i32 15, i32 35], align 4
@__const.main.arr.6 = private unnamed_addr constant [7 x i32] [i32 10, i32 -80, i32 10, i32 10, i32 15, i32 35, i32 20], align 4
@__const.main.arr.7 = private unnamed_addr constant [7 x i32] [i32 -1, i32 -2, i32 -3, i32 -4, i32 -3, i32 -2, i32 -1], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @sum_subarr(ptr noundef %arr, i32 noundef %from, i32 noundef %to) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %from, ptr %from.addr, align 4
  store i32 %to, ptr %to.addr, align 4
  store i32 0, ptr %sum, align 4
  %0 = load i32, ptr %from.addr, align 4
  store i32 %0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %to.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %arr.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %6 = load i32, ptr %sum, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, ptr %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %sum, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @find_even_index(ptr noundef %values, i32 noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %values.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %values, ptr %values.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %values.addr, align 8
  %3 = load i32, ptr %i, align 4
  %call = call i32 @sum_subarr(ptr noundef %2, i32 noundef 0, i32 noundef %3)
  %4 = load ptr, ptr %values.addr, align 8
  %5 = load i32, ptr %i, align 4
  %add = add nsw i32 %5, 1
  %6 = load i32, ptr %length.addr, align 4
  %call1 = call i32 @sum_subarr(ptr noundef %4, i32 noundef %add, i32 noundef %6)
  %cmp2 = icmp eq i32 %call, %call1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  store i32 %7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [7 x i32], align 4
  %expected = alloca i32, align 4
  %result = alloca i32, align 4
  %arr1 = alloca [6 x i32], align 4
  %expected2 = alloca i32, align 4
  %result3 = alloca i32, align 4
  %arr15 = alloca [6 x i32], align 4
  %expected16 = alloca i32, align 4
  %result17 = alloca i32, align 4
  %arr29 = alloca [7 x i32], align 4
  %expected30 = alloca i32, align 4
  %result31 = alloca i32, align 4
  %arr43 = alloca [7 x i32], align 4
  %expected44 = alloca i32, align 4
  %result45 = alloca i32, align 4
  %arr57 = alloca [7 x i32], align 4
  %expected58 = alloca i32, align 4
  %result59 = alloca i32, align 4
  %arr71 = alloca [5 x i32], align 4
  %expected72 = alloca i32, align 4
  %result73 = alloca i32, align 4
  %arr85 = alloca [7 x i32], align 4
  %expected86 = alloca i32, align 4
  %result87 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 4 @__const.main.arr, i64 28, i1 false)
  store i32 3, ptr %expected, align 4
  %arraydecay = getelementptr inbounds [7 x i32], ptr %arr, i64 0, i64 0
  %call = call i32 @find_even_index(ptr noundef %arraydecay, i32 noundef 7)
  store i32 %call, ptr %result, align 4
  %0 = load i32, ptr %expected, align 4
  %1 = load i32, ptr %result, align 4
  %cmp = icmp eq i32 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 29, ptr noundef @.str.1) #4
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr1, ptr align 4 @__const.main.arr.2, i64 24, i1 false)
  store i32 1, ptr %expected2, align 4
  %arraydecay4 = getelementptr inbounds [6 x i32], ptr %arr1, i64 0, i64 0
  %call5 = call i32 @find_even_index(ptr noundef %arraydecay4, i32 noundef 6)
  store i32 %call5, ptr %result3, align 4
  %3 = load i32, ptr %expected2, align 4
  %4 = load i32, ptr %result3, align 4
  %cmp6 = icmp eq i32 %3, %4
  %lnot8 = xor i1 %cmp6, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  %conv10 = sext i32 %lnot.ext9 to i64
  %tobool11 = icmp ne i64 %conv10, 0
  br i1 %tobool11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 36, ptr noundef @.str.1) #4
  unreachable

5:                                                ; No predecessors!
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr15, ptr align 4 @__const.main.arr.3, i64 24, i1 false)
  store i32 -1, ptr %expected16, align 4
  %arraydecay18 = getelementptr inbounds [6 x i32], ptr %arr15, i64 0, i64 0
  %call19 = call i32 @find_even_index(ptr noundef %arraydecay18, i32 noundef 6)
  store i32 %call19, ptr %result17, align 4
  %6 = load i32, ptr %expected16, align 4
  %7 = load i32, ptr %result17, align 4
  %cmp20 = icmp eq i32 %6, %7
  %lnot22 = xor i1 %cmp20, true
  %lnot.ext23 = zext i1 %lnot22 to i32
  %conv24 = sext i32 %lnot.ext23 to i64
  %tobool25 = icmp ne i64 %conv24, 0
  br i1 %tobool25, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %cond.end14
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 43, ptr noundef @.str.1) #4
  unreachable

8:                                                ; No predecessors!
  br label %cond.end28

cond.false27:                                     ; preds = %cond.end14
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr29, ptr align 4 @__const.main.arr.4, i64 28, i1 false)
  store i32 3, ptr %expected30, align 4
  %arraydecay32 = getelementptr inbounds [7 x i32], ptr %arr29, i64 0, i64 0
  %call33 = call i32 @find_even_index(ptr noundef %arraydecay32, i32 noundef 7)
  store i32 %call33, ptr %result31, align 4
  %9 = load i32, ptr %expected30, align 4
  %10 = load i32, ptr %result31, align 4
  %cmp34 = icmp eq i32 %9, %10
  %lnot36 = xor i1 %cmp34, true
  %lnot.ext37 = zext i1 %lnot36 to i32
  %conv38 = sext i32 %lnot.ext37 to i64
  %tobool39 = icmp ne i64 %conv38, 0
  br i1 %tobool39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %cond.end28
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 50, ptr noundef @.str.1) #4
  unreachable

11:                                               ; No predecessors!
  br label %cond.end42

cond.false41:                                     ; preds = %cond.end28
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %11
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr43, ptr align 4 @__const.main.arr.5, i64 28, i1 false)
  store i32 0, ptr %expected44, align 4
  %arraydecay46 = getelementptr inbounds [7 x i32], ptr %arr43, i64 0, i64 0
  %call47 = call i32 @find_even_index(ptr noundef %arraydecay46, i32 noundef 7)
  store i32 %call47, ptr %result45, align 4
  %12 = load i32, ptr %expected44, align 4
  %13 = load i32, ptr %result45, align 4
  %cmp48 = icmp eq i32 %12, %13
  %lnot50 = xor i1 %cmp48, true
  %lnot.ext51 = zext i1 %lnot50 to i32
  %conv52 = sext i32 %lnot.ext51 to i64
  %tobool53 = icmp ne i64 %conv52, 0
  br i1 %tobool53, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %cond.end42
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 57, ptr noundef @.str.1) #4
  unreachable

14:                                               ; No predecessors!
  br label %cond.end56

cond.false55:                                     ; preds = %cond.end42
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr57, ptr align 4 @__const.main.arr.6, i64 28, i1 false)
  store i32 6, ptr %expected58, align 4
  %arraydecay60 = getelementptr inbounds [7 x i32], ptr %arr57, i64 0, i64 0
  %call61 = call i32 @find_even_index(ptr noundef %arraydecay60, i32 noundef 7)
  store i32 %call61, ptr %result59, align 4
  %15 = load i32, ptr %expected58, align 4
  %16 = load i32, ptr %result59, align 4
  %cmp62 = icmp eq i32 %15, %16
  %lnot64 = xor i1 %cmp62, true
  %lnot.ext65 = zext i1 %lnot64 to i32
  %conv66 = sext i32 %lnot.ext65 to i64
  %tobool67 = icmp ne i64 %conv66, 0
  br i1 %tobool67, label %cond.true68, label %cond.false69

cond.true68:                                      ; preds = %cond.end56
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 64, ptr noundef @.str.1) #4
  unreachable

17:                                               ; No predecessors!
  br label %cond.end70

cond.false69:                                     ; preds = %cond.end56
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false69, %17
  call void @llvm.memset.p0.i64(ptr align 4 %arr71, i8 0, i64 20, i1 false)
  store i32 0, ptr %expected72, align 4
  %arraydecay74 = getelementptr inbounds [5 x i32], ptr %arr71, i64 0, i64 0
  %call75 = call i32 @find_even_index(ptr noundef %arraydecay74, i32 noundef 5)
  store i32 %call75, ptr %result73, align 4
  %18 = load i32, ptr %expected72, align 4
  %19 = load i32, ptr %result73, align 4
  %cmp76 = icmp eq i32 %18, %19
  %lnot78 = xor i1 %cmp76, true
  %lnot.ext79 = zext i1 %lnot78 to i32
  %conv80 = sext i32 %lnot.ext79 to i64
  %tobool81 = icmp ne i64 %conv80, 0
  br i1 %tobool81, label %cond.true82, label %cond.false83

cond.true82:                                      ; preds = %cond.end70
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 71, ptr noundef @.str.1) #4
  unreachable

20:                                               ; No predecessors!
  br label %cond.end84

cond.false83:                                     ; preds = %cond.end70
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false83, %20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr85, ptr align 4 @__const.main.arr.7, i64 28, i1 false)
  store i32 3, ptr %expected86, align 4
  %arraydecay88 = getelementptr inbounds [7 x i32], ptr %arr85, i64 0, i64 0
  %call89 = call i32 @find_even_index(ptr noundef %arraydecay88, i32 noundef 7)
  store i32 %call89, ptr %result87, align 4
  %21 = load i32, ptr %expected86, align 4
  %22 = load i32, ptr %result87, align 4
  %cmp90 = icmp eq i32 %21, %22
  %lnot92 = xor i1 %cmp90, true
  %lnot.ext93 = zext i1 %lnot92 to i32
  %conv94 = sext i32 %lnot.ext93 to i64
  %tobool95 = icmp ne i64 %conv94, 0
  br i1 %tobool95, label %cond.true96, label %cond.false97

cond.true96:                                      ; preds = %cond.end84
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 78, ptr noundef @.str.1) #4
  unreachable

23:                                               ; No predecessors!
  br label %cond.end98

cond.false97:                                     ; preds = %cond.end84
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false97, %23
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { cold noreturn }

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
