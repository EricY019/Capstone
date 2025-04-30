; ModuleID = './code/140-24028string_test.c'
source_filename = "./code/140-24028string_test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.test1 = private unnamed_addr constant [25 x i8] c"Hello, world! \00\00\00\00\00\00\00\00\00\00\00", align 1
@__const.main.test2 = private unnamed_addr constant [25 x i8] c"I'm programming! \00\00\00\00\00\00\00\00", align 1
@.str = private unnamed_addr constant [19 x i8] c"test1 = [%s] (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"test2 = [%s] (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"length of other = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"length of other_caps = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"test1 in comparison to other = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"test2 in comparison to other = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"test1 in comparison to test2 = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"other in comparison to other = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %test1 = alloca [25 x i8], align 1
  %test2 = alloca [25 x i8], align 1
  %other = alloca [30 x i8], align 1
  %other_caps = alloca [30 x i8], align 1
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %test1, ptr align 1 @__const.main.test1, i64 25, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %test2, ptr align 1 @__const.main.test2, i64 25, i1 false)
  %arraydecay = getelementptr inbounds [25 x i8], ptr %test1, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay, i64 noundef 14)
  %arraydecay1 = getelementptr inbounds [25 x i8], ptr %test2, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay1, i64 noundef 17)
  %arraydecay3 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [25 x i8], ptr %test1, i64 0, i64 0
  %call5 = call ptr @__strncpy_chk(ptr noundef %arraydecay3, ptr noundef %arraydecay4, i64 noundef 29, i64 noundef 30) #5
  %arrayidx = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 29
  store i8 0, ptr %arrayidx, align 1
  %arraydecay6 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay6)
  %arraydecay8 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %call9 = call i64 @strlen(ptr noundef %arraydecay8) #5
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %call9)
  %arraydecay11 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [25 x i8], ptr %test2, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %call14 = call i64 @strlen(ptr noundef %arraydecay13) #5
  %sub = sub i64 29, %call14
  %call15 = call ptr @__strncat_chk(ptr noundef %arraydecay11, ptr noundef %arraydecay12, i64 noundef %sub, i64 noundef 30) #5
  %arraydecay16 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay16)
  %arraydecay18 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %call19 = call i64 @strlen(ptr noundef %arraydecay18) #5
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %call19)
  %arraydecay21 = getelementptr inbounds [30 x i8], ptr %other_caps, i64 0, i64 0
  %arraydecay22 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %call23 = call ptr @__strncpy_chk(ptr noundef %arraydecay21, ptr noundef %arraydecay22, i64 noundef 29, i64 noundef 30) #5
  %arrayidx24 = getelementptr inbounds [30 x i8], ptr %other_caps, i64 0, i64 29
  store i8 0, ptr %arrayidx24, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx25 = getelementptr inbounds [30 x i8], ptr %other_caps, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx25, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %conv27 = sext i32 %2 to i64
  %cmp28 = icmp ult i64 %conv27, 29
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp28, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %4 to i64
  %arrayidx31 = getelementptr inbounds [30 x i8], ptr %other_caps, i64 0, i64 %idxprom30
  %5 = load i8, ptr %arrayidx31, align 1
  %conv32 = sext i8 %5 to i32
  %call33 = call i32 @toupper(i32 noundef %conv32) #6
  %conv34 = trunc i32 %call33 to i8
  %6 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %6 to i64
  %arrayidx36 = getelementptr inbounds [30 x i8], ptr %other_caps, i64 0, i64 %idxprom35
  store i8 %conv34, ptr %arrayidx36, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %land.end
  %arraydecay37 = getelementptr inbounds [30 x i8], ptr %other_caps, i64 0, i64 0
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay37)
  %arraydecay39 = getelementptr inbounds [30 x i8], ptr %other_caps, i64 0, i64 0
  %call40 = call i64 @strlen(ptr noundef %arraydecay39) #5
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %call40)
  %arraydecay42 = getelementptr inbounds [25 x i8], ptr %test1, i64 0, i64 0
  %arraydecay43 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %call44 = call i32 @strncmp(ptr noundef %arraydecay42, ptr noundef %arraydecay43, i64 noundef 24) #5
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %call44)
  %arraydecay46 = getelementptr inbounds [25 x i8], ptr %test2, i64 0, i64 0
  %arraydecay47 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %call48 = call i32 @strncmp(ptr noundef %arraydecay46, ptr noundef %arraydecay47, i64 noundef 24) #5
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %call48)
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef -1)
  %arraydecay51 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %arraydecay52 = getelementptr inbounds [30 x i8], ptr %other_caps, i64 0, i64 0
  %call53 = call i32 @strncmp(ptr noundef %arraydecay51, ptr noundef %arraydecay52, i64 noundef 29) #5
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %call53)
  %arraydecay55 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %arraydecay56 = getelementptr inbounds [25 x i8], ptr %test2, i64 0, i64 0
  %call57 = call ptr @__strncpy_chk(ptr noundef %arraydecay55, ptr noundef %arraydecay56, i64 noundef 29, i64 noundef 30) #5
  %arrayidx58 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 29
  store i8 0, ptr %arrayidx58, align 1
  %arraydecay59 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %call60 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay59)
  %arraydecay61 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %call62 = call i64 @strlen(ptr noundef %arraydecay61) #5
  %call63 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %call62)
  %arraydecay64 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %arraydecay65 = getelementptr inbounds [25 x i8], ptr %test1, i64 0, i64 0
  %arraydecay66 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %call67 = call i64 @strlen(ptr noundef %arraydecay66) #5
  %sub68 = sub i64 29, %call67
  %call69 = call ptr @__strncat_chk(ptr noundef %arraydecay64, ptr noundef %arraydecay65, i64 noundef %sub68, i64 noundef 30) #5
  %arraydecay70 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %call71 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay70)
  %arraydecay72 = getelementptr inbounds [30 x i8], ptr %other, i64 0, i64 0
  %call73 = call i64 @strlen(ptr noundef %arraydecay72) #5
  %call74 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %call73)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @__strncat_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) #4

; Function Attrs: nounwind
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
