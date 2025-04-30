; ModuleID = './code/240-791020041219-1.c'
source_filename = "./code/240-791020041219-1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.S = type { ptr, i32 }

@.str = private unnamed_addr constant [3 x i8] c"m0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"m1\00", align 1
@__const.bar.obj = private unnamed_addr constant [2 x %struct.S] [%struct.S { ptr @.str, i32 0 }, %struct.S { ptr @.str.1, i32 0 }], align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed: obj[0].i == '%d', expecting '0'\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @foo() #0 {
entry:
  %dummy = alloca [2 x %struct.S], align 8
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %dummy, i64 %idxprom
  store i8 -1, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @bar() #0 {
entry:
  %retval = alloca i32, align 4
  %obj = alloca [2 x %struct.S], align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %obj, ptr align 8 @__const.bar.obj, i64 32, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.S], ptr %obj, i64 0, i64 0
  %i = getelementptr inbounds %struct.S, ptr %arrayidx, i32 0, i32 1
  %0 = load i32, ptr %i, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds [2 x %struct.S], ptr %obj, i64 0, i64 0
  %i2 = getelementptr inbounds %struct.S, ptr %arrayidx1, i32 0, i32 1
  %1 = load i32, ptr %i2, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %1)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @foo()
  %call = call i32 @bar()
  ret i32 %call
}

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
