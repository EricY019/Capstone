; ModuleID = './code/027-26190NetBSD_loop.c'
source_filename = "./code/027-26190NetBSD_loop.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [23 x i8] c"027-26190NetBSD_loop.c\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0 <= glob2_p_off\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"glob2_p_off < MAXPATHLEN + 1\00", align 1
@__BLAST_NONDET = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %MAXPATHLEN = alloca i32, align 4
  %pathbuf_off = alloca i32, align 4
  %bound_off = alloca i32, align 4
  %glob2_p_off = alloca i32, align 4
  %glob2_pathbuf_off = alloca i32, align 4
  %glob2_pathlim_off = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr %MAXPATHLEN, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  br label %END

if.end:                                           ; preds = %if.then
  store i32 0, ptr %pathbuf_off, align 4
  %1 = load i32, ptr %pathbuf_off, align 4
  %2 = load i32, ptr %MAXPATHLEN, align 4
  %add = add nsw i32 %2, 1
  %add1 = add nsw i32 %1, %add
  %sub = sub nsw i32 %add1, 1
  store i32 %sub, ptr %bound_off, align 4
  %3 = load i32, ptr %pathbuf_off, align 4
  store i32 %3, ptr %glob2_pathbuf_off, align 4
  %4 = load i32, ptr %bound_off, align 4
  store i32 %4, ptr %glob2_pathlim_off, align 4
  %5 = load i32, ptr %glob2_pathbuf_off, align 4
  store i32 %5, ptr %glob2_p_off, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %glob2_p_off, align 4
  %7 = load i32, ptr %glob2_pathlim_off, align 4
  %cmp2 = icmp sle i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %glob2_p_off, align 4
  %cmp3 = icmp sle i32 0, %8
  %lnot = xor i1 %cmp3, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 42, ptr noundef @.str.1) #2
  unreachable

9:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %9
  %10 = load i32, ptr %glob2_p_off, align 4
  %11 = load i32, ptr %MAXPATHLEN, align 4
  %add4 = add nsw i32 %11, 1
  %cmp5 = icmp slt i32 %10, %add4
  %lnot7 = xor i1 %cmp5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 42, ptr noundef @.str.2) #2
  unreachable

12:                                               ; No predecessors!
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %12
  br label %for.inc

for.inc:                                          ; preds = %cond.end13
  %13 = load i32, ptr %glob2_p_off, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %glob2_p_off, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %END

END:                                              ; preds = %for.end, %if.else
  ret i32 0
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
