; ModuleID = 'code/262-7623pthread_create_with_param.c'
source_filename = "code/262-7623pthread_create_with_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.char_print_parms = type { i8, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @char_print(i8* %parameters) #0 {
entry:
  %parameters.addr = alloca i8*, align 8
  %p = alloca %struct.char_print_parms*, align 8
  %i = alloca i32, align 4
  store i8* %parameters, i8** %parameters.addr, align 8
  %0 = load i8*, i8** %parameters.addr, align 8
  %1 = bitcast i8* %0 to %struct.char_print_parms*
  store %struct.char_print_parms* %1, %struct.char_print_parms** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.char_print_parms*, %struct.char_print_parms** %p, align 8
  %count = getelementptr inbounds %struct.char_print_parms, %struct.char_print_parms* %3, i32 0, i32 1
  %4 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.char_print_parms*, %struct.char_print_parms** %p, align 8
  %character = getelementptr inbounds %struct.char_print_parms, %struct.char_print_parms* %5, i32 0, i32 0
  %6 = load i8, i8* %character, align 4
  %conv = sext i8 %6 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i8* null
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %thread1_id = alloca i64, align 8
  %thread2_id = alloca i64, align 8
  %thread1_args = alloca %struct.char_print_parms, align 4
  %thread2_args = alloca %struct.char_print_parms, align 4
  store i32 0, i32* %retval, align 4
  %character = getelementptr inbounds %struct.char_print_parms, %struct.char_print_parms* %thread1_args, i32 0, i32 0
  store i8 120, i8* %character, align 4
  %count = getelementptr inbounds %struct.char_print_parms, %struct.char_print_parms* %thread1_args, i32 0, i32 1
  store i32 6, i32* %count, align 4
  %0 = bitcast %struct.char_print_parms* %thread1_args to i8*
  %call = call i32 @pthread_create(i64* %thread1_id, %union.pthread_attr_t* null, i8* (i8*)* @char_print, i8* %0) #3
  %character1 = getelementptr inbounds %struct.char_print_parms, %struct.char_print_parms* %thread2_args, i32 0, i32 0
  store i8 111, i8* %character1, align 4
  %count2 = getelementptr inbounds %struct.char_print_parms, %struct.char_print_parms* %thread2_args, i32 0, i32 1
  store i32 2, i32* %count2, align 4
  %1 = bitcast %struct.char_print_parms* %thread2_args to i8*
  %call3 = call i32 @pthread_create(i64* %thread2_id, %union.pthread_attr_t* null, i8* (i8*)* @char_print, i8* %1) #3
  %call4 = call i32 @sleep(i32 1)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
