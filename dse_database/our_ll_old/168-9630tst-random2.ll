; ModuleID = './code/168-9630tst-random2.c'
source_filename = "./code/168-9630tst-random2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [27 x i8] c"setstate (ostate) != state\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%ld != %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pass = alloca i32, align 4
  %ret = alloca i32, align 4
  %r = alloca [2 x i64], align 8
  %j = alloca i32, align 4
  %state = alloca [128 x i8], align 1
  %ostate = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %ret, align 4
  store i32 0, ptr %pass, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32, ptr %pass, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  call void @srandom(i32 noundef 305414945)
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i64 @random()
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %2 = load i32, ptr %j, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %3 = load i32, ptr %pass, align 4
  %cmp4 = icmp eq i32 %3, 1
  br i1 %cmp4, label %if.then, label %if.end11

if.then:                                          ; preds = %for.end
  %arraydecay = getelementptr inbounds [128 x i8], ptr %state, i64 0, i64 0
  %call5 = call ptr @initstate(i32 noundef 878059777, ptr noundef %arraydecay, i64 noundef 128)
  store ptr %call5, ptr %ostate, align 8
  %4 = load ptr, ptr %ostate, align 8
  %call6 = call ptr @setstate(ptr noundef %4)
  %arraydecay7 = getelementptr inbounds [128 x i8], ptr %state, i64 0, i64 0
  %cmp8 = icmp ne ptr %call6, %arraydecay7
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %call10 = call i32 @puts(ptr noundef @.str)
  store i32 1, ptr %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  br label %if.end11

if.end11:                                         ; preds = %if.end, %for.end
  %call12 = call i64 @random()
  %call13 = call i64 @random()
  %5 = load i32, ptr %pass, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2 x i64], ptr %r, i64 0, i64 %idxprom
  store i64 %call13, ptr %arrayidx, align 8
  br label %for.inc14

for.inc14:                                        ; preds = %if.end11
  %6 = load i32, ptr %pass, align 4
  %inc15 = add nsw i32 %6, 1
  store i32 %inc15, ptr %pass, align 4
  br label %for.cond, !llvm.loop !7

for.end16:                                        ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds [2 x i64], ptr %r, i64 0, i64 0
  %7 = load i64, ptr %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds [2 x i64], ptr %r, i64 0, i64 1
  %8 = load i64, ptr %arrayidx18, align 8
  %cmp19 = icmp ne i64 %7, %8
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %for.end16
  %arrayidx21 = getelementptr inbounds [2 x i64], ptr %r, i64 0, i64 0
  %9 = load i64, ptr %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds [2 x i64], ptr %r, i64 0, i64 1
  %10 = load i64, ptr %arrayidx22, align 8
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %9, i64 noundef %10)
  store i32 1, ptr %ret, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %for.end16
  %11 = load i32, ptr %ret, align 4
  ret i32 %11
}

declare void @srandom(i32 noundef) #1

declare i64 @random() #1

declare ptr @initstate(i32 noundef, ptr noundef, i64 noundef) #1

declare ptr @setstate(ptr noundef) #1

declare i32 @puts(ptr noundef) #1

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
!7 = distinct !{!7, !6}
