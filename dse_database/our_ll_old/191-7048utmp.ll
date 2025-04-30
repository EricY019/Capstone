; ModuleID = './code/191-7048utmp.c'
source_filename = "./code/191-7048utmp.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.utmpx = type { [256 x i8], [4 x i8], [32 x i8], i32, i16, %struct.timeval, [256 x i8], [16 x i32] }
%struct.timeval = type { i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s; %s; %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %utmp_info = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then, %entry
  %call = call ptr @getutxent()
  store ptr %call, ptr %utmp_info, align 8
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %utmp_info, align 8
  %ut_type = getelementptr inbounds %struct.utmpx, ptr %0, i32 0, i32 4
  %1 = load i16, ptr %ut_type, align 8
  %conv = sext i16 %1 to i32
  %cmp1 = icmp ne i32 %conv, 7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond, !llvm.loop !5

if.end:                                           ; preds = %while.body
  %2 = load ptr, ptr %utmp_info, align 8
  %ut_user = getelementptr inbounds %struct.utmpx, ptr %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [256 x i8], ptr %ut_user, i64 0, i64 0
  %3 = load ptr, ptr %utmp_info, align 8
  %ut_line = getelementptr inbounds %struct.utmpx, ptr %3, i32 0, i32 2
  %arraydecay3 = getelementptr inbounds [32 x i8], ptr %ut_line, i64 0, i64 0
  %4 = load ptr, ptr %utmp_info, align 8
  %ut_host = getelementptr inbounds %struct.utmpx, ptr %4, i32 0, i32 6
  %arraydecay4 = getelementptr inbounds [256 x i8], ptr %ut_host, i64 0, i64 0
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay, ptr noundef %arraydecay3, ptr noundef %arraydecay4)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare ptr @getutxent() #1

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
