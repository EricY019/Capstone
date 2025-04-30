; ModuleID = './code/249-12141time_c.c'
source_filename = "./code/249-12141time_c.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str = private unnamed_addr constant [44 x i8] c"The current time with asctime function: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Year: %d, Month: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"UTC Time: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Formatting Time with strftime\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Now it's %I:%M%p.\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Today it is %A, %d of %B, %Y. Day of number %j. Offset from UTC %z.\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @struct_tm_mktime()
  call void @format_time()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @struct_tm_mktime() #0 {
entry:
  %now = alloca i64, align 8
  %today = alloca ptr, align 8
  %utc_time = alloca ptr, align 8
  %call = call i64 @time(ptr noundef %now)
  %call1 = call ptr @localtime(ptr noundef %now)
  store ptr %call1, ptr %today, align 8
  %0 = load ptr, ptr %today, align 8
  %call2 = call ptr @asctime(ptr noundef %0)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %call2)
  %1 = load ptr, ptr %today, align 8
  %tm_year = getelementptr inbounds %struct.tm, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %tm_year, align 4
  %add = add nsw i32 1900, %2
  %3 = load ptr, ptr %today, align 8
  %tm_mon = getelementptr inbounds %struct.tm, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %tm_mon, align 8
  %add4 = add nsw i32 1, %4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add, i32 noundef %add4)
  %call6 = call ptr @gmtime(ptr noundef %now)
  store ptr %call6, ptr %utc_time, align 8
  %5 = load ptr, ptr %utc_time, align 8
  %call7 = call ptr @asctime(ptr noundef %5)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %call7)
  ret void
}

declare i64 @time(ptr noundef) #1

declare ptr @localtime(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare ptr @asctime(ptr noundef) #1

declare ptr @gmtime(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @format_time() #0 {
entry:
  %raw_time = alloca i64, align 8
  %timeinfo = alloca ptr, align 8
  %buffer = alloca [200 x i8], align 1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %call1 = call i64 @time(ptr noundef %raw_time)
  %call2 = call ptr @localtime(ptr noundef %raw_time)
  store ptr %call2, ptr %timeinfo, align 8
  %arraydecay = getelementptr inbounds [200 x i8], ptr %buffer, i64 0, i64 0
  %0 = load ptr, ptr %timeinfo, align 8
  %call3 = call i64 @"\01_strftime"(ptr noundef %arraydecay, i64 noundef 200, ptr noundef @.str.4, ptr noundef %0)
  %arraydecay4 = getelementptr inbounds [200 x i8], ptr %buffer, i64 0, i64 0
  %call5 = call i32 @puts(ptr noundef %arraydecay4)
  %arraydecay6 = getelementptr inbounds [200 x i8], ptr %buffer, i64 0, i64 0
  %1 = load ptr, ptr %timeinfo, align 8
  %call7 = call i64 @"\01_strftime"(ptr noundef %arraydecay6, i64 noundef 200, ptr noundef @.str.5, ptr noundef %1)
  %arraydecay8 = getelementptr inbounds [200 x i8], ptr %buffer, i64 0, i64 0
  %call9 = call i32 @puts(ptr noundef %arraydecay8)
  ret void
}

declare i64 @"\01_strftime"(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

declare i32 @puts(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
