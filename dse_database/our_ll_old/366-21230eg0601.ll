; ModuleID = './code/366-21230eg0601.c'
source_filename = "./code/366-21230eg0601.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.passwd = type { ptr, ptr, i32, i32, i64, ptr, ptr, ptr, ptr, i64 }

@.str = private unnamed_addr constant [24 x i8] c"%s, %d, %d, %s, %s, %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %uid = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %argv.addr, align 8
  %2 = load ptr, ptr %incdec.ptr, align 8
  %call = call i32 @atoi(ptr noundef %2)
  store i32 %call, ptr %uid, align 4
  %3 = load i32, ptr %uid, align 4
  %call1 = call ptr @getpwuid(i32 noundef %3)
  store ptr %call1, ptr %p, align 8
  %4 = load ptr, ptr %p, align 8
  %pw_name = getelementptr inbounds %struct.passwd, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pw_name, align 8
  %6 = load ptr, ptr %p, align 8
  %pw_uid = getelementptr inbounds %struct.passwd, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %pw_uid, align 8
  %8 = load ptr, ptr %p, align 8
  %pw_gid = getelementptr inbounds %struct.passwd, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %pw_gid, align 4
  %10 = load ptr, ptr %p, align 8
  %pw_gecos = getelementptr inbounds %struct.passwd, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %pw_gecos, align 8
  %12 = load ptr, ptr %p, align 8
  %pw_dir = getelementptr inbounds %struct.passwd, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %pw_dir, align 8
  %14 = load ptr, ptr %p, align 8
  %pw_shell = getelementptr inbounds %struct.passwd, ptr %14, i32 0, i32 8
  %15 = load ptr, ptr %pw_shell, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %11, ptr noundef %13, ptr noundef %15)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare i32 @atoi(ptr noundef) #1

declare ptr @getpwuid(i32 noundef) #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
