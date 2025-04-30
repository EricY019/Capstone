; ModuleID = './code/154-100542017-03-01-Aufgabe2.c'
source_filename = "./code/154-100542017-03-01-Aufgabe2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@__stdinp = external global ptr, align 8
@__const.main.prozente = private unnamed_addr constant [5 x i32] [i32 38, i32 33, i32 30, i32 31, i32 25], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"\0A\0A\09\09Vor der Sortierung:\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\09\09%d --> %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\0A\0A\09\09Nach der Sortierung:\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\0A\09\09%d --> %d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @cmpfunc(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load i32, ptr %0, align 4
  %2 = load ptr, ptr %b.addr, align 8
  %3 = load i32, ptr %2, align 4
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %prozente = alloca [5 x i32], align 4
  %size = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %i4 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @"\01_system"(ptr noundef @.str)
  %0 = load ptr, ptr @__stdinp, align 8
  call void @setbuf(ptr noundef %0, ptr noundef null)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %prozente, ptr align 4 @__const.main.prozente, i64 20, i1 false)
  store i32 5, ptr %size, align 4
  %1 = load i32, ptr %size, align 4
  %2 = zext i32 %1 to i64
  %3 = call ptr @llvm.stacksave.p0()
  store ptr %3, ptr %saved_stack, align 8
  %vla = alloca [2 x i32], i64 %2, align 4
  store i64 %2, ptr %__vla_expr0, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %size, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr %prozente, i64 0, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %6, i32 noundef %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [5 x i32], ptr %prozente, i64 0, i64 0
  call void @qsort(ptr noundef %arraydecay, i64 noundef 5, i64 noundef 4, ptr noundef @cmpfunc)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 0, ptr %i4, align 4
  %10 = load i32, ptr %size, align 4
  store i32 %10, ptr %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc18, %for.end
  %11 = load i32, ptr %j, align 4
  %cmp6 = icmp sgt i32 %11, 0
  br i1 %cmp6, label %for.body7, label %for.end19

for.body7:                                        ; preds = %for.cond5
  %12 = load i32, ptr %i4, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [5 x i32], ptr %prozente, i64 0, i64 %idxprom8
  %13 = load i32, ptr %arrayidx9, align 4
  %14 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [2 x i32], ptr %vla, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [2 x i32], ptr %arrayidx11, i64 0, i64 0
  store i32 %13, ptr %arrayidx12, align 4
  %15 = load i32, ptr %j, align 4
  %sub = sub nsw i32 %15, 1
  %16 = load i32, ptr %j, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [2 x i32], ptr %vla, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [2 x i32], ptr %arrayidx14, i64 0, i64 0
  %17 = load i32, ptr %arrayidx15, align 4
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %sub, i32 noundef %17)
  %18 = load i32, ptr %i4, align 4
  %inc17 = add nsw i32 %18, 1
  store i32 %inc17, ptr %i4, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body7
  %19 = load i32, ptr %j, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond5, !llvm.loop !7

for.end19:                                        ; preds = %for.cond5
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  store i32 0, ptr %retval, align 4
  %20 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %20)
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

declare i32 @"\01_system"(ptr noundef) #1

declare void @setbuf(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare i32 @printf(ptr noundef, ...) #1

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn }

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
