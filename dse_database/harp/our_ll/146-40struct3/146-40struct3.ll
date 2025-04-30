; ModuleID = 'code/146-40struct3.c'
source_filename = "code/146-40struct3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.persona = type { [20 x i8], [20 x i8], [128 x i8], [34 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"Giulio\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"De Mattia\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"342-3232-342\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"er patata\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"TRUMP\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DONUTS\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"342-3232-666\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"er CHICCO FRESCO\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"nome:\09%s,\0Acognome:\09%s,\0Anumero:\09%s,\0Asoprannome:\09%s,\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 2, i32* %num, align 4
  %0 = call i8* @llvm.stacksave()
  store i8* %0, i8** %saved_stack, align 8
  %vla = alloca %struct.persona, i64 2, align 16
  %arrayidx = getelementptr inbounds %struct.persona, %struct.persona* %vla, i64 0
  %nome = getelementptr inbounds %struct.persona, %struct.persona* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %nome, i64 0, i64 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #4
  %arrayidx1 = getelementptr inbounds %struct.persona, %struct.persona* %vla, i64 0
  %cognome = getelementptr inbounds %struct.persona, %struct.persona* %arrayidx1, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [20 x i8], [20 x i8]* %cognome, i64 0, i64 0
  %call3 = call i8* @strcpy(i8* %arraydecay2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #4
  %arrayidx4 = getelementptr inbounds %struct.persona, %struct.persona* %vla, i64 0
  %numero = getelementptr inbounds %struct.persona, %struct.persona* %arrayidx4, i32 0, i32 2
  %arraydecay5 = getelementptr inbounds [128 x i8], [128 x i8]* %numero, i64 0, i64 0
  %call6 = call i8* @strcpy(i8* %arraydecay5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #4
  %arrayidx7 = getelementptr inbounds %struct.persona, %struct.persona* %vla, i64 0
  %soprannome = getelementptr inbounds %struct.persona, %struct.persona* %arrayidx7, i32 0, i32 3
  %arraydecay8 = getelementptr inbounds [34 x i8], [34 x i8]* %soprannome, i64 0, i64 0
  %call9 = call i8* @strcpy(i8* %arraydecay8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #4
  %arrayidx10 = getelementptr inbounds %struct.persona, %struct.persona* %vla, i64 1
  %nome11 = getelementptr inbounds %struct.persona, %struct.persona* %arrayidx10, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [20 x i8], [20 x i8]* %nome11, i64 0, i64 0
  %call13 = call i8* @strcpy(i8* %arraydecay12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #4
  %arrayidx14 = getelementptr inbounds %struct.persona, %struct.persona* %vla, i64 1
  %cognome15 = getelementptr inbounds %struct.persona, %struct.persona* %arrayidx14, i32 0, i32 1
  %arraydecay16 = getelementptr inbounds [20 x i8], [20 x i8]* %cognome15, i64 0, i64 0
  %call17 = call i8* @strcpy(i8* %arraydecay16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #4
  %arrayidx18 = getelementptr inbounds %struct.persona, %struct.persona* %vla, i64 1
  %numero19 = getelementptr inbounds %struct.persona, %struct.persona* %arrayidx18, i32 0, i32 2
  %arraydecay20 = getelementptr inbounds [128 x i8], [128 x i8]* %numero19, i64 0, i64 0
  %call21 = call i8* @strcpy(i8* %arraydecay20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #4
  %arrayidx22 = getelementptr inbounds %struct.persona, %struct.persona* %vla, i64 1
  %soprannome23 = getelementptr inbounds %struct.persona, %struct.persona* %arrayidx22, i32 0, i32 3
  %arraydecay24 = getelementptr inbounds [34 x i8], [34 x i8]* %soprannome23, i64 0, i64 0
  %call25 = call i8* @strcpy(i8* %arraydecay24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0)) #4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx26 = getelementptr inbounds %struct.persona, %struct.persona* %vla, i64 %idxprom
  %nome27 = getelementptr inbounds %struct.persona, %struct.persona* %arrayidx26, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [20 x i8], [20 x i8]* %nome27, i64 0, i64 0
  %3 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %3 to i64
  %arrayidx30 = getelementptr inbounds %struct.persona, %struct.persona* %vla, i64 %idxprom29
  %cognome31 = getelementptr inbounds %struct.persona, %struct.persona* %arrayidx30, i32 0, i32 1
  %arraydecay32 = getelementptr inbounds [20 x i8], [20 x i8]* %cognome31, i64 0, i64 0
  %4 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %4 to i64
  %arrayidx34 = getelementptr inbounds %struct.persona, %struct.persona* %vla, i64 %idxprom33
  %numero35 = getelementptr inbounds %struct.persona, %struct.persona* %arrayidx34, i32 0, i32 2
  %arraydecay36 = getelementptr inbounds [128 x i8], [128 x i8]* %numero35, i64 0, i64 0
  %5 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %5 to i64
  %arrayidx38 = getelementptr inbounds %struct.persona, %struct.persona* %vla, i64 %idxprom37
  %soprannome39 = getelementptr inbounds %struct.persona, %struct.persona* %arrayidx38, i32 0, i32 3
  %arraydecay40 = getelementptr inbounds [34 x i8], [34 x i8]* %soprannome39, i64 0, i64 0
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i8* %arraydecay28, i8* %arraydecay32, i8* %arraydecay36, i8* %arraydecay40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %7)
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
