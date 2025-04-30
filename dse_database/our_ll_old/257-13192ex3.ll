; ModuleID = './code/257-13192ex3.c'
source_filename = "./code/257-13192ex3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.pollfd = type { i32, i16, i16 }

@.str = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%d seconds elapsed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"stdin is readable\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"stdout is writable\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fds = alloca [2 x %struct.pollfd], align 4
  %ret = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %arrayidx = getelementptr inbounds [2 x %struct.pollfd], ptr %fds, i64 0, i64 0
  %fd = getelementptr inbounds %struct.pollfd, ptr %arrayidx, i32 0, i32 0
  store i32 0, ptr %fd, align 4
  %arrayidx1 = getelementptr inbounds [2 x %struct.pollfd], ptr %fds, i64 0, i64 0
  %events = getelementptr inbounds %struct.pollfd, ptr %arrayidx1, i32 0, i32 1
  store i16 1, ptr %events, align 4
  %arrayidx2 = getelementptr inbounds [2 x %struct.pollfd], ptr %fds, i64 0, i64 1
  %fd3 = getelementptr inbounds %struct.pollfd, ptr %arrayidx2, i32 0, i32 0
  store i32 1, ptr %fd3, align 4
  %arrayidx4 = getelementptr inbounds [2 x %struct.pollfd], ptr %fds, i64 0, i64 1
  %events5 = getelementptr inbounds %struct.pollfd, ptr %arrayidx4, i32 0, i32 1
  store i16 4, ptr %events5, align 4
  %arraydecay = getelementptr inbounds [2 x %struct.pollfd], ptr %fds, i64 0, i64 0
  %call = call i32 @"\01_poll"(ptr noundef %arraydecay, i32 noundef 2, i32 noundef 5000)
  store i32 %call, ptr %ret, align 4
  %0 = load i32, ptr %ret, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @perror(ptr noundef @.str) #3
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %ret, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef 5)
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %arrayidx9 = getelementptr inbounds [2 x %struct.pollfd], ptr %fds, i64 0, i64 0
  %revents = getelementptr inbounds %struct.pollfd, ptr %arrayidx9, i32 0, i32 2
  %2 = load i16, ptr %revents, align 2
  %conv = sext i16 %2 to i32
  %and = and i32 %conv, 1
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8
  %arrayidx14 = getelementptr inbounds [2 x %struct.pollfd], ptr %fds, i64 0, i64 1
  %revents15 = getelementptr inbounds %struct.pollfd, ptr %arrayidx14, i32 0, i32 2
  %3 = load i16, ptr %revents15, align 2
  %conv16 = sext i16 %3 to i32
  %and17 = and i32 %conv16, 4
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end13
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then6, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

declare i32 @"\01_poll"(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: cold
declare void @perror(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
