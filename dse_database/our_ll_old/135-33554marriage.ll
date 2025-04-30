; ModuleID = './code/135-33554marriage.c'
source_filename = "./code/135-33554marriage.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.response = type { ptr, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Dear %s,\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Unfortunately your last date contacted us to\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"say that they will not be seeing you again\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Good news: your last date has asked us to\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"arrange another meeting. Please call ASAP.\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Congratulations! Your last date has contacted\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"us with a proposal of marriage.\00", align 1
@replies = global [3 x ptr] [ptr @dump, ptr @second_chance, ptr @marriage], align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"Mike\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Luis\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Matt\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"William\00", align 1
@__const.main.r = private unnamed_addr constant [4 x %struct.response] [%struct.response { ptr @.str.7, i32 0 }, %struct.response { ptr @.str.8, i32 1 }, %struct.response { ptr @.str.9, i32 1 }, %struct.response { ptr @.str.10, i32 2 }], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @dump([2 x i64] %r.coerce) #0 {
entry:
  %r = alloca %struct.response, align 8
  store [2 x i64] %r.coerce, ptr %r, align 8
  %name = getelementptr inbounds %struct.response, ptr %r, i32 0, i32 0
  %0 = load ptr, ptr %name, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  %call1 = call i32 @puts(ptr noundef @.str.1)
  %call2 = call i32 @puts(ptr noundef @.str.2)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @puts(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @second_chance([2 x i64] %r.coerce) #0 {
entry:
  %r = alloca %struct.response, align 8
  store [2 x i64] %r.coerce, ptr %r, align 8
  %name = getelementptr inbounds %struct.response, ptr %r, i32 0, i32 0
  %0 = load ptr, ptr %name, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  %call1 = call i32 @puts(ptr noundef @.str.3)
  %call2 = call i32 @puts(ptr noundef @.str.4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @marriage([2 x i64] %r.coerce) #0 {
entry:
  %r = alloca %struct.response, align 8
  store [2 x i64] %r.coerce, ptr %r, align 8
  %name = getelementptr inbounds %struct.response, ptr %r, i32 0, i32 0
  %0 = load ptr, ptr %name, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  %call1 = call i32 @puts(ptr noundef @.str.5)
  %call2 = call i32 @puts(ptr noundef @.str.6)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r = alloca [4 x %struct.response], align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 @__const.main.r, i64 64, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.response], ptr %r, i64 0, i64 %idxprom
  %type = getelementptr inbounds %struct.response, ptr %arrayidx, i32 0, i32 1
  %2 = load i32, ptr %type, align 8
  %idxprom1 = zext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [3 x ptr], ptr @replies, i64 0, i64 %idxprom1
  %3 = load ptr, ptr %arrayidx2, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [4 x %struct.response], ptr %r, i64 0, i64 %idxprom3
  %5 = load [2 x i64], ptr %arrayidx4, align 8
  call void %3([2 x i64] %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
