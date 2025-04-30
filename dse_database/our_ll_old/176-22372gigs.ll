; ModuleID = './code/176-22372gigs.c'
source_filename = "./code/176-22372gigs.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [20 x i8] c"%Y-%m-%dT%H:%M:%S%z\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"time=\22%s\22 pid=%d msg=\22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"allocating %.2fGB\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"filling buffer\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"exiting\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @_gigs_log(ptr noundef %message) #0 {
entry:
  %message.addr = alloca ptr, align 8
  %rawtime = alloca i64, align 8
  %timeinfo = alloca ptr, align 8
  %timebuf = alloca [256 x i8], align 1
  store ptr %message, ptr %message.addr, align 8
  %call = call i64 @time(ptr noundef %rawtime)
  %call1 = call ptr @localtime(ptr noundef %rawtime)
  store ptr %call1, ptr %timeinfo, align 8
  %arraydecay = getelementptr inbounds [256 x i8], ptr %timebuf, i64 0, i64 0
  %0 = load ptr, ptr %timeinfo, align 8
  %call2 = call i64 @"\01_strftime"(ptr noundef %arraydecay, i64 noundef 256, ptr noundef @.str, ptr noundef %0)
  %arraydecay3 = getelementptr inbounds [256 x i8], ptr %timebuf, i64 0, i64 0
  %call4 = call i32 @getpid()
  %1 = load ptr, ptr %message.addr, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay3, i32 noundef %call4, ptr noundef %1)
  ret void
}

declare i64 @time(ptr noundef) #1

declare ptr @localtime(ptr noundef) #1

declare i64 @"\01_strftime"(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @getpid() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %amt = alloca double, align 8
  %n = alloca double, align 8
  %i = alloca i64, align 8
  %msgbuf = alloca [32 x i8], align 1
  %membuf = alloca ptr, align 8
  %err = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store double 1.000000e+00, ptr %n, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call double @atof(ptr noundef %2)
  store double %call, ptr %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [32 x i8], ptr %msgbuf, i64 0, i64 0
  %3 = load double, ptr %n, align 8
  %call1 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 32, ptr noundef @.str.2, double noundef %3)
  %arraydecay2 = getelementptr inbounds [32 x i8], ptr %msgbuf, i64 0, i64 0
  call void @_gigs_log(ptr noundef %arraydecay2)
  %4 = load double, ptr %n, align 8
  %mul = fmul double 0x41D0000000000000, %4
  %mul3 = fmul double 1.000000e+00, %mul
  %conv = fptosi double %mul3 to i32
  %conv4 = sext i32 %conv to i64
  %call5 = call ptr @malloc(i64 noundef %conv4) #3
  store ptr %call5, ptr %membuf, align 8
  %cmp6 = icmp eq ptr null, %call5
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = call ptr @__error()
  %5 = load i32, ptr %call9, align 4
  store i32 %5, ptr %err, align 4
  call void @_gigs_log(ptr noundef @.str.3)
  store i32 1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  call void @_gigs_log(ptr noundef @.str.4)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %6 = load i64, ptr %i, align 8
  %conv11 = uitofp i64 %6 to double
  %7 = load double, ptr %n, align 8
  %mul12 = fmul double 0x41D0000000000000, %7
  %cmp13 = fcmp olt double %conv11, %mul12
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %membuf, align 8
  %9 = load i64, ptr %i, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %8, i64 %9
  store i8 122, ptr %arrayidx15, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, ptr %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  call void @_gigs_log(ptr noundef @.str.5)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then8
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

declare double @atof(ptr noundef) #1

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare ptr @__error() #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
