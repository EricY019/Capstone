; ModuleID = 'code/140-24028string_test.c'
source_filename = "code/140-24028string_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.test1 = private unnamed_addr constant [25 x i8] c"Hello, world! \00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.main.test2 = private unnamed_addr constant [25 x i8] c"I'm programming! \00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [19 x i8] c"test1 = [%s] (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"test2 = [%s] (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"length of other = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"length of other_caps = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"test1 in comparison to other = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"test2 in comparison to other = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"test1 in comparison to test2 = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"other in comparison to other = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %test1 = alloca [25 x i8], align 16
  %test2 = alloca [25 x i8], align 16
  %other = alloca [30 x i8], align 16
  %other_caps = alloca [30 x i8], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [25 x i8]* %test1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.main.test1, i32 0, i32 0), i64 25, i1 false)
  %1 = bitcast [25 x i8]* %test2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.main.test2, i32 0, i32 0), i64 25, i1 false)
  %arraydecay = getelementptr inbounds [25 x i8], [25 x i8]* %test1, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [25 x i8], [25 x i8]* %test1, i64 0, i64 0
  %call = call i64 @strlen(i8* %arraydecay1) #5
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %arraydecay, i64 %call)
  %arraydecay3 = getelementptr inbounds [25 x i8], [25 x i8]* %test2, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [25 x i8], [25 x i8]* %test2, i64 0, i64 0
  %call5 = call i64 @strlen(i8* %arraydecay4) #5
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay3, i64 %call5)
  %arraydecay7 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [25 x i8], [25 x i8]* %test1, i64 0, i64 0
  %call9 = call i8* @strncpy(i8* %arraydecay7, i8* %arraydecay8, i64 29) #6
  %arrayidx = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 29
  store i8 0, i8* %arrayidx, align 1
  %arraydecay10 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay10)
  %arraydecay12 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %call13 = call i64 @strlen(i8* %arraydecay12) #5
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %call13)
  %arraydecay15 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [25 x i8], [25 x i8]* %test2, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %call18 = call i64 @strlen(i8* %arraydecay17) #5
  %sub = sub i64 29, %call18
  %call19 = call i8* @strncat(i8* %arraydecay15, i8* %arraydecay16, i64 %sub) #6
  %arraydecay20 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay20)
  %arraydecay22 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %call23 = call i64 @strlen(i8* %arraydecay22) #5
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %call23)
  %arraydecay25 = getelementptr inbounds [30 x i8], [30 x i8]* %other_caps, i64 0, i64 0
  %arraydecay26 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %call27 = call i8* @strncpy(i8* %arraydecay25, i8* %arraydecay26, i64 29) #6
  %arrayidx28 = getelementptr inbounds [30 x i8], [30 x i8]* %other_caps, i64 0, i64 29
  store i8 0, i8* %arrayidx28, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx29 = getelementptr inbounds [30 x i8], [30 x i8]* %other_caps, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx29, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %conv31 = sext i32 %4 to i64
  %cmp32 = icmp ult i64 %conv31, 29
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp32, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %6 to i64
  %arrayidx35 = getelementptr inbounds [30 x i8], [30 x i8]* %other_caps, i64 0, i64 %idxprom34
  %7 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %7 to i32
  %call37 = call i32 @toupper(i32 %conv36) #5
  %conv38 = trunc i32 %call37 to i8
  %8 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %8 to i64
  %arrayidx40 = getelementptr inbounds [30 x i8], [30 x i8]* %other_caps, i64 0, i64 %idxprom39
  store i8 %conv38, i8* %arrayidx40, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %land.end
  %arraydecay41 = getelementptr inbounds [30 x i8], [30 x i8]* %other_caps, i64 0, i64 0
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay41)
  %arraydecay43 = getelementptr inbounds [30 x i8], [30 x i8]* %other_caps, i64 0, i64 0
  %call44 = call i64 @strlen(i8* %arraydecay43) #5
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %call44)
  %arraydecay46 = getelementptr inbounds [25 x i8], [25 x i8]* %test1, i64 0, i64 0
  %arraydecay47 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %call48 = call i32 @strncmp(i8* %arraydecay46, i8* %arraydecay47, i64 24) #5
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %call48)
  %arraydecay50 = getelementptr inbounds [25 x i8], [25 x i8]* %test2, i64 0, i64 0
  %arraydecay51 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %call52 = call i32 @strncmp(i8* %arraydecay50, i8* %arraydecay51, i64 24) #5
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %call52)
  %arraydecay54 = getelementptr inbounds [25 x i8], [25 x i8]* %test1, i64 0, i64 0
  %arraydecay55 = getelementptr inbounds [25 x i8], [25 x i8]* %test2, i64 0, i64 0
  %call56 = call i32 @strncmp(i8* %arraydecay54, i8* %arraydecay55, i64 24) #5
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %call56)
  %arraydecay58 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %arraydecay59 = getelementptr inbounds [30 x i8], [30 x i8]* %other_caps, i64 0, i64 0
  %call60 = call i32 @strncmp(i8* %arraydecay58, i8* %arraydecay59, i64 29) #5
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %call60)
  %arraydecay62 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %arraydecay63 = getelementptr inbounds [25 x i8], [25 x i8]* %test2, i64 0, i64 0
  %call64 = call i8* @strncpy(i8* %arraydecay62, i8* %arraydecay63, i64 29) #6
  %arrayidx65 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 29
  store i8 0, i8* %arrayidx65, align 1
  %arraydecay66 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay66)
  %arraydecay68 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %call69 = call i64 @strlen(i8* %arraydecay68) #5
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %call69)
  %arraydecay71 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %arraydecay72 = getelementptr inbounds [25 x i8], [25 x i8]* %test1, i64 0, i64 0
  %arraydecay73 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %call74 = call i64 @strlen(i8* %arraydecay73) #5
  %sub75 = sub i64 29, %call74
  %call76 = call i8* @strncat(i8* %arraydecay71, i8* %arraydecay72, i64 %sub75) #6
  %arraydecay77 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay77)
  %arraydecay79 = getelementptr inbounds [30 x i8], [30 x i8]* %other, i64 0, i64 0
  %call80 = call i64 @strlen(i8* %arraydecay79) #5
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %call80)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @toupper(i32) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8*, i8*, i64) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
