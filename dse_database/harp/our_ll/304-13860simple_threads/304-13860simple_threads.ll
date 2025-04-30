; ModuleID = 'code/304-13860simple_threads.c'
source_filename = "code/304-13860simple_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str_thdata = type { i32, [100 x i8] }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"Hello!\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Hi!!\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"doing one thing\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"doing another thing\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"All done, one thing %d, another %d for a total of %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Thread %d says %s \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %thread1 = alloca i64, align 8
  %thread2 = alloca i64, align 8
  %thread3 = alloca i64, align 8
  %thread4 = alloca i64, align 8
  %data1 = alloca %struct.str_thdata, align 4
  %data2 = alloca %struct.str_thdata, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %r1, align 4
  store i32 0, i32* %r2, align 4
  %thread_no = getelementptr inbounds %struct.str_thdata, %struct.str_thdata* %data1, i32 0, i32 0
  store i32 1, i32* %thread_no, align 4
  %message = getelementptr inbounds %struct.str_thdata, %struct.str_thdata* %data1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %message, i64 0, i64 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #4
  %thread_no1 = getelementptr inbounds %struct.str_thdata, %struct.str_thdata* %data2, i32 0, i32 0
  store i32 2, i32* %thread_no1, align 4
  %message2 = getelementptr inbounds %struct.str_thdata, %struct.str_thdata* %data2, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [100 x i8], [100 x i8]* %message2, i64 0, i64 0
  %call4 = call i8* @strcpy(i8* %arraydecay3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #4
  %0 = bitcast i32* %r1 to i8*
  %call5 = call i32 @pthread_create(i64* %thread1, %union.pthread_attr_t* null, i8* (i8*)* bitcast (void (i32*)* @do_one_thing to i8* (i8*)*), i8* %0) #4
  %1 = bitcast i32* %r2 to i8*
  %call6 = call i32 @pthread_create(i64* %thread2, %union.pthread_attr_t* null, i8* (i8*)* bitcast (void (i32*)* @do_another_thing to i8* (i8*)*), i8* %1) #4
  %2 = load i64, i64* %thread1, align 8
  %call7 = call i32 @pthread_join(i64 %2, i8** null)
  %3 = load i64, i64* %thread2, align 8
  %call8 = call i32 @pthread_join(i64 %3, i8** null)
  %4 = bitcast %struct.str_thdata* %data1 to i8*
  %call9 = call i32 @pthread_create(i64* %thread3, %union.pthread_attr_t* null, i8* (i8*)* bitcast (void (i8*)* @print_message_function to i8* (i8*)*), i8* %4) #4
  %5 = bitcast %struct.str_thdata* %data2 to i8*
  %call10 = call i32 @pthread_create(i64* %thread4, %union.pthread_attr_t* null, i8* (i8*)* bitcast (void (i8*)* @print_message_function to i8* (i8*)*), i8* %5) #4
  %6 = load i64, i64* %thread3, align 8
  %call11 = call i32 @pthread_join(i64 %6, i8** null)
  %7 = load i64, i64* %thread4, align 8
  %call12 = call i32 @pthread_join(i64 %7, i8** null)
  %8 = load i32, i32* %r1, align 4
  %9 = load i32, i32* %r2, align 4
  call void @do_wrap_up(i32 %8, i32 %9)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_one_thing(i32* %pnum_times) #0 {
entry:
  %pnum_times.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %pnum_times, i32** %pnum_times.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %x, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, i32* %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  %5 = load i32*, i32** %pnum_times.addr, align 8
  %6 = load i32, i32* %5, align 4
  %inc4 = add nsw i32 %6, 1
  store i32 %inc4, i32* %5, align 4
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end7:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_another_thing(i32* %pnum_times) #0 {
entry:
  %pnum_times.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %pnum_times, i32** %pnum_times.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %x, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, i32* %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  %5 = load i32*, i32** %pnum_times.addr, align 8
  %6 = load i32, i32* %5, align 4
  %inc4 = add nsw i32 %6, 1
  store i32 %inc4, i32* %5, align 4
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end7:                                         ; preds = %for.cond
  ret void
}

declare dso_local i32 @pthread_join(i64, i8**) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_message_function(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %data = alloca %struct.str_thdata*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = bitcast i8* %0 to %struct.str_thdata*
  store %struct.str_thdata* %1, %struct.str_thdata** %data, align 8
  %2 = load %struct.str_thdata*, %struct.str_thdata** %data, align 8
  %thread_no = getelementptr inbounds %struct.str_thdata, %struct.str_thdata* %2, i32 0, i32 0
  %3 = load i32, i32* %thread_no, align 4
  %4 = load %struct.str_thdata*, %struct.str_thdata** %data, align 8
  %message = getelementptr inbounds %struct.str_thdata, %struct.str_thdata* %4, i32 0, i32 1
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %message, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %3, i8* %arraydecay)
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_wrap_up(i32 %one_times, i32 %another_times) #0 {
entry:
  %one_times.addr = alloca i32, align 4
  %another_times.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %one_times, i32* %one_times.addr, align 4
  store i32 %another_times, i32* %another_times.addr, align 4
  %0 = load i32, i32* %one_times.addr, align 4
  %1 = load i32, i32* %another_times.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %total, align 4
  %2 = load i32, i32* %one_times.addr, align 4
  %3 = load i32, i32* %another_times.addr, align 4
  %4 = load i32, i32* %total, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %2, i32 %3, i32 %4)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
