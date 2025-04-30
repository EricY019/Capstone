; ModuleID = './code/290-2868player2.c'
source_filename = "./code/290-2868player2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.player_t = type { [100 x i8], i32 }

@__stdinp = external global ptr, align 8
@.str = private unnamed_addr constant [21 x i8] c"Created player '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Test\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"New player: '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @read_line(ptr noundef %buf, i32 noundef %buf_sz) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %buf_sz.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %buf_sz, ptr %buf_sz.addr, align 4
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %buf_sz.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr @__stdinp, align 8
  %call = call i32 @getc(ptr noundef %2)
  store i32 %call, ptr %c, align 4
  %cmp1 = icmp ne i32 %call, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, ptr %c, align 4
  %cmp2 = icmp eq i32 %4, 10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %5 = load i32, ptr %c, align 4
  %conv = trunc i32 %5 to i8
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %if.then, %land.end
  %9 = load ptr, ptr %buf.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %9, i64 %idxprom3
  store i8 0, ptr %arrayidx4, align 1
  ret void
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @player_new(ptr dead_on_unwind noalias writable sret(%struct.player_t) align 4 %agg.result, ptr noundef %name) #0 {
entry:
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %energy = getelementptr inbounds %struct.player_t, ptr %agg.result, i32 0, i32 1
  store i32 100, ptr %energy, align 4
  %name1 = getelementptr inbounds %struct.player_t, ptr %agg.result, i32 0, i32 0
  %arraydecay = getelementptr inbounds [100 x i8], ptr %name1, i64 0, i64 0
  %0 = load ptr, ptr %name.addr, align 8
  %call = call ptr @__strncpy_chk(ptr noundef %arraydecay, ptr noundef %0, i64 noundef 100, i64 noundef 100) #3
  ret void
}

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @player_new_ask_user_for_name(ptr dead_on_unwind noalias writable sret(%struct.player_t) align 4 %agg.result) #0 {
entry:
  %buf = alloca [100 x i8], align 1
  %arraydecay = getelementptr inbounds [100 x i8], ptr %buf, i64 0, i64 0
  call void @read_line(ptr noundef %arraydecay, i32 noundef 100)
  %arraydecay1 = getelementptr inbounds [100 x i8], ptr %buf, i64 0, i64 0
  call void @player_new(ptr dead_on_unwind writable sret(%struct.player_t) align 4 %agg.result, ptr noundef %arraydecay1)
  %name = getelementptr inbounds %struct.player_t, ptr %agg.result, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [100 x i8], ptr %name, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay2)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca %struct.player_t, align 4
  store i32 0, ptr %retval, align 4
  call void @player_new_ask_user_for_name(ptr dead_on_unwind writable sret(%struct.player_t) align 4 %p)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %name = getelementptr inbounds %struct.player_t, ptr %p, i32 0, i32 0
  %arraydecay = getelementptr inbounds [100 x i8], ptr %name, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
