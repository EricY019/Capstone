; ModuleID = './code/271-29927permutations_of_string.c'
source_filename = "./code/271-29927permutations_of_string.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@pos = internal global i64 0, align 8
@__func__.permute = private unnamed_addr constant [8 x i8] c"permute\00", align 1
@.str = private unnamed_addr constant [34 x i8] c"271-29927permutations_of_string.c\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"pos <= TEN_FACTORIAL\00", align 1
@AllCombos = internal global [3628800 x [10 x i8]] zeroinitializer, align 1
@__const.main.str = private unnamed_addr constant [11 x i8] c"ABCDEFGHIJ\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%.10s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swap(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %temp = alloca i8, align 1
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i8, ptr %0, align 1
  store i8 %1, ptr %temp, align 1
  %2 = load ptr, ptr %y.addr, align 8
  %3 = load i8, ptr %2, align 1
  %4 = load ptr, ptr %x.addr, align 8
  store i8 %3, ptr %4, align 1
  %5 = load i8, ptr %temp, align 1
  %6 = load ptr, ptr %y.addr, align 8
  store i8 %5, ptr %6, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @permute(ptr noundef %a, i32 noundef %l, i32 noundef %r) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %l, ptr %l.addr, align 4
  store i32 %r, ptr %r.addr, align 4
  %0 = load i32, ptr %l.addr, align 4
  %1 = load i32, ptr %r.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @pos, align 8
  %cmp1 = icmp ule i64 %2, 3628800
  %lnot = xor i1 %cmp1, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  call void @__assert_rtn(ptr noundef @__func__.permute, ptr noundef @.str, i32 noundef 18, ptr noundef @.str.1) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load i64, ptr @pos, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr @pos, align 8
  %arrayidx = getelementptr inbounds [3628800 x [10 x i8]], ptr @AllCombos, i64 0, i64 %4
  %arraydecay = getelementptr inbounds [10 x i8], ptr %arrayidx, i64 0, i64 0
  %5 = load ptr, ptr %a.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 %5, i64 10, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %l.addr, align 4
  store i32 %6, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %r.addr, align 4
  %cmp2 = icmp sle i32 %7, %8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %a.addr, align 8
  %10 = load i32, ptr %l.addr, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  %11 = load ptr, ptr %a.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idx.ext4 = sext i32 %12 to i64
  %add.ptr5 = getelementptr inbounds i8, ptr %11, i64 %idx.ext4
  call void @swap(ptr noundef %add.ptr, ptr noundef %add.ptr5)
  %13 = load ptr, ptr %a.addr, align 8
  %14 = load i32, ptr %l.addr, align 4
  %add = add nsw i32 %14, 1
  %15 = load i32, ptr %r.addr, align 4
  call void @permute(ptr noundef %13, i32 noundef %add, i32 noundef %15)
  %16 = load ptr, ptr %a.addr, align 8
  %17 = load i32, ptr %l.addr, align 4
  %idx.ext6 = sext i32 %17 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %16, i64 %idx.ext6
  %18 = load ptr, ptr %a.addr, align 8
  %19 = load i32, ptr %i, align 4
  %idx.ext8 = sext i32 %19 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %18, i64 %idx.ext8
  call void @swap(ptr noundef %add.ptr7, ptr noundef %add.ptr9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %20, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %cond.end
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %str = alloca [11 x i8], align 1
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i64 0, ptr %i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str, ptr align 1 @__const.main.str, i64 11, i1 false)
  %arraydecay = getelementptr inbounds [11 x i8], ptr %str, i64 0, i64 0
  %call = call i64 @strlen(ptr noundef %arraydecay) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %n, align 4
  %arraydecay1 = getelementptr inbounds [11 x i8], ptr %str, i64 0, i64 0
  %0 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %0, 1
  call void @permute(ptr noundef %arraydecay1, i32 noundef 0, i32 noundef %sub)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %1, 3628800
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [3628800 x [10 x i8]], ptr @AllCombos, i64 0, i64 %2
  %arraydecay3 = getelementptr inbounds [10 x i8], ptr %arrayidx, i64 0, i64 0
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { cold noreturn }
attributes #6 = { nounwind }

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
