; ModuleID = './code/232-29394rwlock.c'
source_filename = "./code/232-29394rwlock.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_rwlock_t = type { i64, [192 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%d %s %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @maxrdlocks() #0 {
entry:
  %i = alloca i64, align 8
  %rw = alloca %struct._opaque_pthread_rwlock_t, align 8
  %r = alloca i32, align 4
  %call = call i32 @"\01_pthread_rwlock_init"(ptr noundef %rw, ptr noundef null)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %0, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @"\01_pthread_rwlock_rdlock"(ptr noundef %rw)
  store i32 %call1, ptr %r, align 4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %1 = load i64, ptr %i, align 8
  %rem = urem i64 %1, 10000000
  %cmp3 = icmp eq i64 %rem, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %2 = load i64, ptr %i, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %2)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %3 = load i64, ptr %i, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond
  %4 = load i32, ptr %r, align 4
  %5 = load i32, ptr %r, align 4
  %call7 = call ptr @"\01_strerror"(i32 noundef %5)
  %6 = load i64, ptr %i, align 8
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4, ptr noundef %call7, i64 noundef %6)
  ret void
}

declare i32 @"\01_pthread_rwlock_init"(ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_rwlock_rdlock"(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare ptr @"\01_strerror"(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @maxrdlocks()
  ret i32 0
}

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
