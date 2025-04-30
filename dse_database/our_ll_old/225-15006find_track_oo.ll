; ModuleID = './code/225-15006find_track_oo.c'
source_filename = "./code/225-15006find_track_oo.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@tracks = global [5 x [80 x i8]] [[80 x i8] c"So What\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Freddie Freeloader\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Blue in Green\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"All Blues\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Flamenco Sketches\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@.str = private unnamed_addr constant [16 x i8] c"Track %i: '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"F.*F.*\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @make_regex(ptr noundef %pattern, i32 noundef %flags) #0 {
entry:
  %pattern.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %pattern, ptr %pattern.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  ret ptr null
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @regex_match(ptr noundef %regex, ptr noundef %s) #0 {
entry:
  %regex.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  store ptr %regex, ptr %regex.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @regex_free(ptr noundef %regex) #0 {
entry:
  %regex.addr = alloca ptr, align 8
  store ptr %regex, ptr %regex.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @find_track_regex(ptr noundef %pattern) #0 {
entry:
  %pattern.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %regex = alloca ptr, align 8
  store ptr %pattern, ptr %pattern.addr, align 8
  %0 = load ptr, ptr %pattern.addr, align 8
  %call = call ptr @make_regex(ptr noundef %0, i32 noundef 5)
  store ptr %call, ptr %regex, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %regex, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5 x [80 x i8]], ptr @tracks, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [80 x i8], ptr %arrayidx, i64 0, i64 0
  %call1 = call i32 @regex_match(ptr noundef %2, ptr noundef %arraydecay)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [5 x [80 x i8]], ptr @tracks, i64 0, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [80 x i8], ptr %arrayidx3, i64 0, i64 0
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4, ptr noundef %arraydecay4)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %regex, align 8
  call void @regex_free(ptr noundef %7)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pattern = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr @.str.1, ptr %pattern, align 8
  %0 = load ptr, ptr %pattern, align 8
  call void @find_track_regex(ptr noundef %0)
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
