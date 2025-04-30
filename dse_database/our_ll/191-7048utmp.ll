; ModuleID = 'code/191-7048utmp.c'
source_filename = "code/191-7048utmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s; %s; %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %utmp_info = alloca %struct.utmpx*, align 8
  store i32 0, i32* %retval, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then, %entry
  %call = call %struct.utmpx* @getutxent()
  store %struct.utmpx* %call, %struct.utmpx** %utmp_info, align 8
  %cmp = icmp ne %struct.utmpx* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load %struct.utmpx*, %struct.utmpx** %utmp_info, align 8
  %ut_type = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i32 0, i32 0
  %1 = load i16, i16* %ut_type, align 4
  %conv = sext i16 %1 to i32
  %cmp1 = icmp ne i32 %conv, 7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond, !llvm.loop !4

if.end:                                           ; preds = %while.body
  %2 = load %struct.utmpx*, %struct.utmpx** %utmp_info, align 8
  %ut_user = getelementptr inbounds %struct.utmpx, %struct.utmpx* %2, i32 0, i32 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %ut_user, i64 0, i64 0
  %3 = load %struct.utmpx*, %struct.utmpx** %utmp_info, align 8
  %ut_line = getelementptr inbounds %struct.utmpx, %struct.utmpx* %3, i32 0, i32 2
  %arraydecay3 = getelementptr inbounds [32 x i8], [32 x i8]* %ut_line, i64 0, i64 0
  %4 = load %struct.utmpx*, %struct.utmpx** %utmp_info, align 8
  %ut_host = getelementptr inbounds %struct.utmpx, %struct.utmpx* %4, i32 0, i32 5
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %ut_host, i64 0, i64 0
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %arraydecay, i8* %arraydecay3, i8* %arraydecay4)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare dso_local %struct.utmpx* @getutxent() #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
