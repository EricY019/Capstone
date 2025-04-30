; ModuleID = 'code/098-22616list1207.c'
source_filename = "code/098-22616list1207.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Student = type { [64 x i8], i32, float, i64 }

@__const.main.std = private unnamed_addr constant [5 x %struct.Student] [%struct.Student { [64 x i8] c"Sato\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 178, float 0x404E9999A0000000, i64 80000 }, %struct.Student { [64 x i8] c"Sanaka\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 175, float 6.250000e+01, i64 73000 }, %struct.Student { [64 x i8] c"Takao\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 173, float 0x40558CCCC0000000, i64 0 }, %struct.Student { [64 x i8] c"Mike\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 165, float 0x4052133340000000, i64 70000 }, %struct.Student { [64 x i8] c"Masaki\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 179, float 7.750000e+01, i64 70000 }], align 16
@.str = private unnamed_addr constant [19 x i8] c"%-8s %6d%6.1f%7ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\0A Sort by height.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap_Student(%struct.Student* %x, %struct.Student* %y) #0 {
entry:
  %x.addr = alloca %struct.Student*, align 8
  %y.addr = alloca %struct.Student*, align 8
  %temp = alloca %struct.Student, align 8
  store %struct.Student* %x, %struct.Student** %x.addr, align 8
  store %struct.Student* %y, %struct.Student** %y.addr, align 8
  %0 = load %struct.Student*, %struct.Student** %x.addr, align 8
  %1 = bitcast %struct.Student* %temp to i8*
  %2 = bitcast %struct.Student* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 80, i1 false)
  %3 = load %struct.Student*, %struct.Student** %x.addr, align 8
  %4 = load %struct.Student*, %struct.Student** %y.addr, align 8
  %5 = bitcast %struct.Student* %3 to i8*
  %6 = bitcast %struct.Student* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 80, i1 false)
  %7 = load %struct.Student*, %struct.Student** %y.addr, align 8
  %8 = bitcast %struct.Student* %7 to i8*
  %9 = bitcast %struct.Student* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 80, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_by_height(%struct.Student* %a, i32 %n) #0 {
entry:
  %a.addr = alloca %struct.Student*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.Student* %a, %struct.Student** %a.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %n.addr, align 4
  %sub1 = sub nsw i32 %2, 1
  store i32 %sub1, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp sgt i32 %3, %4
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %5 = load %struct.Student*, %struct.Student** %a.addr, align 8
  %6 = load i32, i32* %j, align 4
  %sub5 = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub5 to i64
  %arrayidx = getelementptr inbounds %struct.Student, %struct.Student* %5, i64 %idxprom
  %height = getelementptr inbounds %struct.Student, %struct.Student* %arrayidx, i32 0, i32 1
  %7 = load i32, i32* %height, align 8
  %8 = load %struct.Student*, %struct.Student** %a.addr, align 8
  %9 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds %struct.Student, %struct.Student* %8, i64 %idxprom6
  %height8 = getelementptr inbounds %struct.Student, %struct.Student* %arrayidx7, i32 0, i32 1
  %10 = load i32, i32* %height8, align 8
  %cmp9 = icmp sgt i32 %7, %10
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %11 = load %struct.Student*, %struct.Student** %a.addr, align 8
  %12 = load i32, i32* %j, align 4
  %sub10 = sub nsw i32 %12, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds %struct.Student, %struct.Student* %11, i64 %idxprom11
  %13 = load %struct.Student*, %struct.Student** %a.addr, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds %struct.Student, %struct.Student* %13, i64 %idxprom13
  call void @swap_Student(%struct.Student* %arrayidx12, %struct.Student* %arrayidx14)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond2, !llvm.loop !4

for.end:                                          ; preds = %for.cond2
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end16:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %std = alloca [5 x %struct.Student], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x %struct.Student]* %std to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([5 x %struct.Student], [5 x %struct.Student]* @__const.main.std, i32 0, i32 0, i32 0, i32 0), i64 400, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.Student], [5 x %struct.Student]* %std, i64 0, i64 %idxprom
  %name = getelementptr inbounds %struct.Student, %struct.Student* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name, i64 0, i64 0
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [5 x %struct.Student], [5 x %struct.Student]* %std, i64 0, i64 %idxprom1
  %height = getelementptr inbounds %struct.Student, %struct.Student* %arrayidx2, i32 0, i32 1
  %4 = load i32, i32* %height, align 16
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [5 x %struct.Student], [5 x %struct.Student]* %std, i64 0, i64 %idxprom3
  %weight = getelementptr inbounds %struct.Student, %struct.Student* %arrayidx4, i32 0, i32 2
  %6 = load float, float* %weight, align 4
  %conv = fpext float %6 to double
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [5 x %struct.Student], [5 x %struct.Student]* %std, i64 0, i64 %idxprom5
  %schols = getelementptr inbounds %struct.Student, %struct.Student* %arrayidx6, i32 0, i32 3
  %8 = load i64, i64* %schols, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %arraydecay, i32 %4, double %conv, i64 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %arraydecay7 = getelementptr inbounds [5 x %struct.Student], [5 x %struct.Student]* %std, i64 0, i64 0
  call void @sort_by_height(%struct.Student* %arraydecay7, i32 5)
  %call8 = call i32 @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc28, %for.end
  %10 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %10, 5
  br i1 %cmp10, label %for.body12, label %for.end30

for.body12:                                       ; preds = %for.cond9
  %11 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [5 x %struct.Student], [5 x %struct.Student]* %std, i64 0, i64 %idxprom13
  %name15 = getelementptr inbounds %struct.Student, %struct.Student* %arrayidx14, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [64 x i8], [64 x i8]* %name15, i64 0, i64 0
  %12 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [5 x %struct.Student], [5 x %struct.Student]* %std, i64 0, i64 %idxprom17
  %height19 = getelementptr inbounds %struct.Student, %struct.Student* %arrayidx18, i32 0, i32 1
  %13 = load i32, i32* %height19, align 16
  %14 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [5 x %struct.Student], [5 x %struct.Student]* %std, i64 0, i64 %idxprom20
  %weight22 = getelementptr inbounds %struct.Student, %struct.Student* %arrayidx21, i32 0, i32 2
  %15 = load float, float* %weight22, align 4
  %conv23 = fpext float %15 to double
  %16 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [5 x %struct.Student], [5 x %struct.Student]* %std, i64 0, i64 %idxprom24
  %schols26 = getelementptr inbounds %struct.Student, %struct.Student* %arrayidx25, i32 0, i32 3
  %17 = load i64, i64* %schols26, align 8
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %arraydecay16, i32 %13, double %conv23, i64 %17)
  br label %for.inc28

for.inc28:                                        ; preds = %for.body12
  %18 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %18, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond9, !llvm.loop !8

for.end30:                                        ; preds = %for.cond9
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @puts(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
