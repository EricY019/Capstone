; ModuleID = './code/183-25187allocstring.c'
source_filename = "./code/183-25187allocstring.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@callback.i = internal global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hoba\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @callback() #0 {
entry:
  %retval = alloca ptr, align 8
  %0 = load i32, ptr @callback.i, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @callback.i, align 4
  %1 = load i32, ptr @callback.i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr @.str, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @array_allocate(ptr noundef %cb_func) #0 {
entry:
  %cb_func.addr = alloca ptr, align 8
  %string = alloca ptr, align 8
  %string_list = alloca ptr, align 8
  %counter = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %cb_func, ptr %cb_func.addr, align 8
  store ptr null, ptr %string_list, align 8
  store i32 0, ptr %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %cb_func.addr, align 8
  %call = call ptr %0()
  store ptr %call, ptr %string, align 8
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %counter, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %counter, align 4
  %2 = load ptr, ptr %string_list, align 8
  %3 = load i32, ptr %counter, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 8, %conv
  %call1 = call ptr @realloc(ptr noundef %2, i64 noundef %mul) #3
  store ptr %call1, ptr %string_list, align 8
  %4 = load ptr, ptr %string, align 8
  %5 = load ptr, ptr %string_list, align 8
  %6 = load i32, ptr %counter, align 4
  %sub = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  store ptr %4, ptr %arrayidx, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr %counter, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %7)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %counter, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %string_list, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %10, i64 %idxprom4
  %12 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 @puts(ptr noundef %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %13, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %string_list, align 8
  ret ptr %14
}

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

declare i32 @puts(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @array_allocate(ptr noundef @callback)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(1) }

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
