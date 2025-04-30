; ModuleID = './code/304-13860simple_threads.c'
source_filename = "./code/304-13860simple_threads.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.str_thdata = type { i32, [100 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"Hello!\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Hi!!\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"doing one thing\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"doing another thing\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"All done, one thing %d, another %d for a total of %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Thread %d says %s \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %thread1 = alloca ptr, align 8
  %thread2 = alloca ptr, align 8
  %thread3 = alloca ptr, align 8
  %thread4 = alloca ptr, align 8
  %data1 = alloca %struct.str_thdata, align 4
  %data2 = alloca %struct.str_thdata, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %r1, align 4
  store i32 0, ptr %r2, align 4
  %thread_no = getelementptr inbounds %struct.str_thdata, ptr %data1, i32 0, i32 0
  store i32 1, ptr %thread_no, align 4
  %message = getelementptr inbounds %struct.str_thdata, ptr %data1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [100 x i8], ptr %message, i64 0, i64 0
  %call = call ptr @__strcpy_chk(ptr noundef %arraydecay, ptr noundef @.str, i64 noundef 100) #4
  %thread_no1 = getelementptr inbounds %struct.str_thdata, ptr %data2, i32 0, i32 0
  store i32 2, ptr %thread_no1, align 4
  %message2 = getelementptr inbounds %struct.str_thdata, ptr %data2, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [100 x i8], ptr %message2, i64 0, i64 0
  %call4 = call ptr @__strcpy_chk(ptr noundef %arraydecay3, ptr noundef @.str.1, i64 noundef 100) #4
  %call5 = call i32 @pthread_create(ptr noundef %thread1, ptr noundef null, ptr noundef @do_one_thing, ptr noundef %r1)
  %call6 = call i32 @pthread_create(ptr noundef %thread2, ptr noundef null, ptr noundef @do_another_thing, ptr noundef %r2)
  %0 = load ptr, ptr %thread1, align 8
  %call7 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr %thread2, align 8
  %call8 = call i32 @"\01_pthread_join"(ptr noundef %1, ptr noundef null)
  %call9 = call i32 @pthread_create(ptr noundef %thread3, ptr noundef null, ptr noundef @print_message_function, ptr noundef %data1)
  %call10 = call i32 @pthread_create(ptr noundef %thread4, ptr noundef null, ptr noundef @print_message_function, ptr noundef %data2)
  %2 = load ptr, ptr %thread3, align 8
  %call11 = call i32 @"\01_pthread_join"(ptr noundef %2, ptr noundef null)
  %3 = load ptr, ptr %thread4, align 8
  %call12 = call i32 @"\01_pthread_join"(ptr noundef %3, ptr noundef null)
  %4 = load i32, ptr %r1, align 4
  %5 = load i32, ptr %r2, align 4
  call void @do_wrap_up(i32 noundef %4, i32 noundef %5)
  ret i32 0
}

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @do_one_thing(ptr noundef %pnum_times) #0 {
entry:
  %pnum_times.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %pnum_times, ptr %pnum_times.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %x, align 4
  %3 = load i32, ptr %i, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, ptr %x, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %5 = load ptr, ptr %pnum_times.addr, align 8
  %6 = load i32, ptr %5, align 4
  %inc4 = add nsw i32 %6, 1
  store i32 %inc4, ptr %5, align 4
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end7:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @do_another_thing(ptr noundef %pnum_times) #0 {
entry:
  %pnum_times.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %pnum_times, ptr %pnum_times.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %x, align 4
  %3 = load i32, ptr %i, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, ptr %x, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !8

for.end:                                          ; preds = %for.cond1
  %5 = load ptr, ptr %pnum_times.addr, align 8
  %6 = load i32, ptr %5, align 4
  %inc4 = add nsw i32 %6, 1
  store i32 %inc4, ptr %5, align 4
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end7:                                         ; preds = %for.cond
  ret void
}

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_message_function(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  store ptr %0, ptr %data, align 8
  %1 = load ptr, ptr %data, align 8
  %thread_no = getelementptr inbounds %struct.str_thdata, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %thread_no, align 4
  %3 = load ptr, ptr %data, align 8
  %message = getelementptr inbounds %struct.str_thdata, ptr %3, i32 0, i32 1
  %arraydecay = getelementptr inbounds [100 x i8], ptr %message, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %2, ptr noundef %arraydecay)
  call void @pthread_exit(ptr noundef null) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @do_wrap_up(i32 noundef %one_times, i32 noundef %another_times) #0 {
entry:
  %one_times.addr = alloca i32, align 4
  %another_times.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %one_times, ptr %one_times.addr, align 4
  store i32 %another_times, ptr %another_times.addr, align 4
  %0 = load i32, ptr %one_times.addr, align 4
  %1 = load i32, ptr %another_times.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, ptr %total, align 4
  %2 = load i32, ptr %one_times.addr, align 4
  %3 = load i32, ptr %another_times.addr, align 4
  %4 = load i32, ptr %total, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

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
