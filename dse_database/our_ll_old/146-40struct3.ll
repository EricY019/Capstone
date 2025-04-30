; ModuleID = './code/146-40struct3.c'
source_filename = "./code/146-40struct3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

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

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 2, ptr %num, align 4
  %0 = call ptr @llvm.stacksave.p0()
  store ptr %0, ptr %saved_stack, align 8
  %vla = alloca %struct.persona, i64 2, align 1
  %arrayidx = getelementptr inbounds %struct.persona, ptr %vla, i64 0
  %nome = getelementptr inbounds %struct.persona, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [20 x i8], ptr %nome, i64 0, i64 0
  %call = call ptr @__strcpy_chk(ptr noundef %arraydecay, ptr noundef @.str, i64 noundef 20) #4
  %arrayidx1 = getelementptr inbounds %struct.persona, ptr %vla, i64 0
  %cognome = getelementptr inbounds %struct.persona, ptr %arrayidx1, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [20 x i8], ptr %cognome, i64 0, i64 0
  %call3 = call ptr @__strcpy_chk(ptr noundef %arraydecay2, ptr noundef @.str.1, i64 noundef 20) #4
  %arrayidx4 = getelementptr inbounds %struct.persona, ptr %vla, i64 0
  %numero = getelementptr inbounds %struct.persona, ptr %arrayidx4, i32 0, i32 2
  %arraydecay5 = getelementptr inbounds [128 x i8], ptr %numero, i64 0, i64 0
  %call6 = call ptr @__strcpy_chk(ptr noundef %arraydecay5, ptr noundef @.str.2, i64 noundef 128) #4
  %arrayidx7 = getelementptr inbounds %struct.persona, ptr %vla, i64 0
  %soprannome = getelementptr inbounds %struct.persona, ptr %arrayidx7, i32 0, i32 3
  %arraydecay8 = getelementptr inbounds [34 x i8], ptr %soprannome, i64 0, i64 0
  %call9 = call ptr @__strcpy_chk(ptr noundef %arraydecay8, ptr noundef @.str.3, i64 noundef 34) #4
  %arrayidx10 = getelementptr inbounds %struct.persona, ptr %vla, i64 1
  %nome11 = getelementptr inbounds %struct.persona, ptr %arrayidx10, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [20 x i8], ptr %nome11, i64 0, i64 0
  %call13 = call ptr @__strcpy_chk(ptr noundef %arraydecay12, ptr noundef @.str.4, i64 noundef 20) #4
  %arrayidx14 = getelementptr inbounds %struct.persona, ptr %vla, i64 1
  %cognome15 = getelementptr inbounds %struct.persona, ptr %arrayidx14, i32 0, i32 1
  %arraydecay16 = getelementptr inbounds [20 x i8], ptr %cognome15, i64 0, i64 0
  %call17 = call ptr @__strcpy_chk(ptr noundef %arraydecay16, ptr noundef @.str.5, i64 noundef 20) #4
  %arrayidx18 = getelementptr inbounds %struct.persona, ptr %vla, i64 1
  %numero19 = getelementptr inbounds %struct.persona, ptr %arrayidx18, i32 0, i32 2
  %arraydecay20 = getelementptr inbounds [128 x i8], ptr %numero19, i64 0, i64 0
  %call21 = call ptr @__strcpy_chk(ptr noundef %arraydecay20, ptr noundef @.str.6, i64 noundef 128) #4
  %arrayidx22 = getelementptr inbounds %struct.persona, ptr %vla, i64 1
  %soprannome23 = getelementptr inbounds %struct.persona, ptr %arrayidx22, i32 0, i32 3
  %arraydecay24 = getelementptr inbounds [34 x i8], ptr %soprannome23, i64 0, i64 0
  %call25 = call ptr @__strcpy_chk(ptr noundef %arraydecay24, ptr noundef @.str.7, i64 noundef 34) #4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx26 = getelementptr inbounds %struct.persona, ptr %vla, i64 %idxprom
  %nome27 = getelementptr inbounds %struct.persona, ptr %arrayidx26, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [20 x i8], ptr %nome27, i64 0, i64 0
  %3 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %3 to i64
  %arrayidx30 = getelementptr inbounds %struct.persona, ptr %vla, i64 %idxprom29
  %cognome31 = getelementptr inbounds %struct.persona, ptr %arrayidx30, i32 0, i32 1
  %arraydecay32 = getelementptr inbounds [20 x i8], ptr %cognome31, i64 0, i64 0
  %4 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %4 to i64
  %arrayidx34 = getelementptr inbounds %struct.persona, ptr %vla, i64 %idxprom33
  %numero35 = getelementptr inbounds %struct.persona, ptr %arrayidx34, i32 0, i32 2
  %arraydecay36 = getelementptr inbounds [128 x i8], ptr %numero35, i64 0, i64 0
  %5 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %5 to i64
  %arrayidx38 = getelementptr inbounds %struct.persona, ptr %vla, i64 %idxprom37
  %soprannome39 = getelementptr inbounds %struct.persona, ptr %arrayidx38, i32 0, i32 3
  %arraydecay40 = getelementptr inbounds [34 x i8], ptr %soprannome39, i64 0, i64 0
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %arraydecay28, ptr noundef %arraydecay32, ptr noundef %arraydecay36, ptr noundef %arraydecay40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %7)
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
