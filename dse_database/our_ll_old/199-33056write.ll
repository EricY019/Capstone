; ModuleID = './code/199-33056write.c'
source_filename = "./code/199-33056write.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.Student = type { [30 x i8], [30 x i8], i32, float }

@.str = private unnamed_addr constant [5 x i8] c"Mary\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Jones\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%0.1f\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"C:\\dev\\temp\\students1.dat\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @writeStudent(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %student = alloca %struct.Student, align 4
  %temp = alloca [10 x i8], align 1
  store ptr %fp, ptr %fp.addr, align 8
  %firstName = getelementptr inbounds %struct.Student, ptr %student, i32 0, i32 0
  %arraydecay = getelementptr inbounds [30 x i8], ptr %firstName, i64 0, i64 0
  %call = call ptr @__strcpy_chk(ptr noundef %arraydecay, ptr noundef @.str, i64 noundef 30) #3
  %lastName = getelementptr inbounds %struct.Student, ptr %student, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [30 x i8], ptr %lastName, i64 0, i64 0
  %call2 = call ptr @__strcpy_chk(ptr noundef %arraydecay1, ptr noundef @.str.1, i64 noundef 30) #3
  %age = getelementptr inbounds %struct.Student, ptr %student, i32 0, i32 2
  store i32 17, ptr %age, align 4
  %gpa = getelementptr inbounds %struct.Student, ptr %student, i32 0, i32 3
  store float 0x400F333340000000, ptr %gpa, align 4
  %firstName3 = getelementptr inbounds %struct.Student, ptr %student, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [30 x i8], ptr %firstName3, i64 0, i64 0
  %0 = load ptr, ptr %fp.addr, align 8
  %call5 = call i32 @"\01_fputs"(ptr noundef %arraydecay4, ptr noundef %0)
  %1 = load ptr, ptr %fp.addr, align 8
  %call6 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %1)
  %lastName7 = getelementptr inbounds %struct.Student, ptr %student, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [30 x i8], ptr %lastName7, i64 0, i64 0
  %2 = load ptr, ptr %fp.addr, align 8
  %call9 = call i32 @"\01_fputs"(ptr noundef %arraydecay8, ptr noundef %2)
  %3 = load ptr, ptr %fp.addr, align 8
  %call10 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %3)
  %arraydecay11 = getelementptr inbounds [10 x i8], ptr %temp, i64 0, i64 0
  %age12 = getelementptr inbounds %struct.Student, ptr %student, i32 0, i32 2
  %4 = load i32, ptr %age12, align 4
  %call13 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay11, i32 noundef 0, i64 noundef 10, ptr noundef @.str.3, i32 noundef %4)
  %arraydecay14 = getelementptr inbounds [10 x i8], ptr %temp, i64 0, i64 0
  %5 = load ptr, ptr %fp.addr, align 8
  %call15 = call i32 @"\01_fputs"(ptr noundef %arraydecay14, ptr noundef %5)
  %6 = load ptr, ptr %fp.addr, align 8
  %call16 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %6)
  %arraydecay17 = getelementptr inbounds [10 x i8], ptr %temp, i64 0, i64 0
  %gpa18 = getelementptr inbounds %struct.Student, ptr %student, i32 0, i32 3
  %7 = load float, ptr %gpa18, align 4
  %conv = fpext float %7 to double
  %call19 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay17, i32 noundef 0, i64 noundef 10, ptr noundef @.str.4, double noundef %conv)
  %arraydecay20 = getelementptr inbounds [10 x i8], ptr %temp, i64 0, i64 0
  %8 = load ptr, ptr %fp.addr, align 8
  %call21 = call i32 @"\01_fputs"(ptr noundef %arraydecay20, ptr noundef %8)
  %9 = load ptr, ptr %fp.addr, align 8
  %call22 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %9)
  ret void
}

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fp = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @"\01_fopen"(ptr noundef @.str.6, ptr noundef @.str.7)
  store ptr %call, ptr %fp, align 8
  %0 = load ptr, ptr %fp, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %1, 10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %fp, align 8
  call void @writeStudent(ptr noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr %fp, align 8
  %call2 = call i32 @fclose(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret i32 0
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
