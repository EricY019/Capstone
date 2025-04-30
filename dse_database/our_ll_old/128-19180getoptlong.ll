; ModuleID = './code/128-19180getoptlong.c'
source_filename = "./code/128-19180getoptlong.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.option = type { ptr, i32, ptr, i32 }

@__const.main.one_char = private unnamed_addr constant [4 x i8] c"'?'\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"GETOPTTEST\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"abzf:o:\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { ptr @.str.5, i32 1, ptr null, i32 102 }, %struct.option { ptr @.str.6, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.7, i32 2, ptr null, i32 51 }, %struct.option { ptr @.str.8, i32 0, ptr null, i32 4 }, %struct.option { ptr @.str.9, i32 0, ptr @foo, i32 1 }, %struct.option zeroinitializer], align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"c = %s, optind = %d (\22%s\22), optarg = \22%s\22, optopt = '%c', foo = %d, longindex = %d\0A\00", align 1
@optind = external global i32, align 4
@optarg = external global ptr, align 8
@optopt = external global i32, align 4
@foo = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"third\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"fourth\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"set-foo\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %parser = alloca ptr, align 8
  %showchar = alloca ptr, align 8
  %one_char = alloca [4 x i8], align 1
  %num_buf = alloca [16 x i8], align 1
  %c = alloca i32, align 4
  %longindex = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %one_char, ptr align 1 @__const.main.one_char, i64 4, i1 false)
  %call = call ptr @getenv(ptr noundef @.str)
  store ptr %call, ptr %parser, align 8
  %0 = load ptr, ptr %parser, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr @.str.1, ptr %parser, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %1 = load i32, ptr %argc.addr, align 4
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load ptr, ptr %parser, align 8
  %call1 = call i32 @getopt_long(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef @long_options, ptr noundef %longindex)
  store i32 %call1, ptr %c, align 4
  %4 = load i32, ptr %c, align 4
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %do.body
  store ptr @.str.2, ptr %showchar, align 8
  br label %if.end11

if.else:                                          ; preds = %do.body
  %5 = load i32, ptr %c, align 4
  %cmp3 = icmp sge i32 %5, 32
  br i1 %cmp3, label %land.lhs.true, label %if.else6

land.lhs.true:                                    ; preds = %if.else
  %6 = load i32, ptr %c, align 4
  %cmp4 = icmp sle i32 %6, 126
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %land.lhs.true
  %7 = load i32, ptr %c, align 4
  %conv = trunc i32 %7 to i8
  %arrayidx = getelementptr inbounds [4 x i8], ptr %one_char, i64 0, i64 1
  store i8 %conv, ptr %arrayidx, align 1
  %arraydecay = getelementptr inbounds [4 x i8], ptr %one_char, i64 0, i64 0
  store ptr %arraydecay, ptr %showchar, align 8
  br label %if.end10

if.else6:                                         ; preds = %land.lhs.true, %if.else
  %arraydecay7 = getelementptr inbounds [16 x i8], ptr %num_buf, i64 0, i64 0
  %8 = load i32, ptr %c, align 4
  %call8 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %arraydecay7, i64 noundef 16, i32 noundef 0, i64 noundef 16, ptr noundef @.str.3, i32 noundef %8)
  %arraydecay9 = getelementptr inbounds [16 x i8], ptr %num_buf, i64 0, i64 0
  store ptr %arraydecay9, ptr %showchar, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else6, %if.then5
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then2
  %9 = load ptr, ptr %showchar, align 8
  %10 = load i32, ptr @optind, align 4
  %11 = load ptr, ptr %argv.addr, align 8
  %12 = load i32, ptr @optind, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %11, i64 %idxprom
  %13 = load ptr, ptr %arrayidx12, align 8
  %14 = load ptr, ptr @optarg, align 8
  %15 = load i32, ptr @optopt, align 4
  %16 = load i32, ptr @foo, align 4
  %17 = load i32, ptr %longindex, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %9, i32 noundef %10, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17)
  br label %do.cond

do.cond:                                          ; preds = %if.end11
  %18 = load i32, ptr %c, align 4
  %cmp14 = icmp ne i32 %18, -1
  br i1 %cmp14, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %do.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare ptr @getenv(ptr noundef) #2

declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
