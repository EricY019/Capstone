; ModuleID = 'code/214-1145320080122-1.c'
source_filename = "code/214-1145320080122-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.outbuf = private unnamed_addr constant [32 x i8] c"buffer     \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.main.inbuf = private unnamed_addr constant [32 x i8] c"\0C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %outbuf = alloca [32 x i8], align 16
  %inbuf = alloca [32 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [32 x i8]* %outbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.main.outbuf, i32 0, i32 0), i64 32, i1 false)
  %1 = bitcast [32 x i8]* %inbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.main.inbuf, i32 0, i32 0), i64 32, i1 false)
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %inbuf, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %outbuf, i64 0, i64 0
  call void @do_segfault(i8* %arraydecay, i8* %arraydecay1, i32 12)
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_segfault(i8* %in_buf, i8* %out_buf, i32 %len) #0 {
entry:
  %in_buf.addr = alloca i8*, align 8
  %out_buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %in_buf, i8** %in_buf.addr, align 8
  store i8* %out_buf, i8** %out_buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !6
  %2 = load i8*, i8** %out_buf.addr, align 8
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %3
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %out_buf.addr, align 8
  %6 = load i32, i32* %i, align 4
  %mul1 = mul nsw i32 2, %6
  %add = add nsw i32 %mul1, 1
  %idxprom2 = sext i32 %add to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 %idxprom2
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %shl = shl i32 %conv4, 8
  %or = or i32 %conv, %shl
  %and = and i32 %or, 255
  %conv5 = trunc i32 %and to i8
  %8 = load i8*, i8** %in_buf.addr, align 8
  %9 = load i32, i32* %i, align 4
  %mul6 = mul nsw i32 2, %9
  %idxprom7 = sext i32 %mul6 to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 %idxprom7
  store i8 %conv5, i8* %arrayidx8, align 1
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !7
  %10 = load i8*, i8** %out_buf.addr, align 8
  %11 = load i32, i32* %i, align 4
  %mul9 = mul nsw i32 2, %11
  %idxprom10 = sext i32 %mul9 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 %idxprom10
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %12 to i32
  %13 = load i8*, i8** %out_buf.addr, align 8
  %14 = load i32, i32* %i, align 4
  %mul13 = mul nsw i32 2, %14
  %add14 = add nsw i32 %mul13, 1
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %idxprom15
  %15 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %15 to i32
  %shl18 = shl i32 %conv17, 8
  %or19 = or i32 %conv12, %shl18
  %shr = ashr i32 %or19, 8
  %conv20 = trunc i32 %shr to i8
  %16 = load i8*, i8** %in_buf.addr, align 8
  %17 = load i32, i32* %i, align 4
  %mul21 = mul nsw i32 2, %17
  %add22 = add nsw i32 %mul21, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds i8, i8* %16, i64 %idxprom23
  store i8 %conv20, i8* %arrayidx24, align 1
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = !{i64 536}
!5 = !{i64 581}
!6 = !{i64 260}
!7 = !{i64 343}
!8 = !{i64 426}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
