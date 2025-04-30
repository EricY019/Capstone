; ModuleID = './code/146-4377sym.c'
source_filename = "./code/146-4377sym.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.dl_info = type { ptr, ptr, ptr, ptr }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__stdoutp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %lib = alloca ptr, align 8
  %i = alloca i32, align 4
  %show = alloca i32, align 4
  %ret = alloca i32, align 4
  %info = alloca %struct.dl_info, align 8
  %so_ptr = alloca ptr, align 8
  %error = alloca ptr, align 8
  %func = alloca ptr, align 8
  %func_ptr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 1
  %1 = load ptr, ptr %arrayidx, align 8
  store ptr %1, ptr %lib, align 8
  store i32 1, ptr %show, align 4
  %2 = load ptr, ptr %lib, align 8
  %call = call ptr @dlopen(ptr noundef %2, i32 noundef 2)
  store ptr %call, ptr %so_ptr, align 8
  %call1 = call ptr @dlerror()
  store ptr %call1, ptr %error, align 8
  %3 = load ptr, ptr %error, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = load ptr, ptr %error, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str, ptr noundef %5) #3
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %argv.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx3, align 8
  store ptr %10, ptr %func, align 8
  %11 = load ptr, ptr %so_ptr, align 8
  %12 = load ptr, ptr %func, align 8
  %call4 = call ptr @dlsym(ptr noundef %11, ptr noundef %12)
  store ptr %call4, ptr %func_ptr, align 8
  %13 = load i32, ptr %show, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %for.body
  store i32 0, ptr %show, align 4
  %14 = load ptr, ptr %func_ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 1
  %call7 = call i32 @dladdr(ptr noundef %add.ptr, ptr noundef %info)
  store i32 %call7, ptr %ret, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.body
  %15 = load ptr, ptr @__stdoutp, align 8
  %16 = load ptr, ptr %func, align 8
  %17 = load ptr, ptr %func_ptr, align 8
  %dli_fbase = getelementptr inbounds %struct.dl_info, ptr %info, i32 0, i32 1
  %18 = load ptr, ptr %dli_fbase, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = inttoptr i64 %sub.ptr.sub to ptr
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.1, ptr noundef %16, ptr noundef %19) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

declare ptr @dlopen(ptr noundef, i32 noundef) #1

declare ptr @dlerror() #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare ptr @dlsym(ptr noundef, ptr noundef) #1

declare i32 @dladdr(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
