; ModuleID = './code/070-10036HelloWorld.c'
source_filename = "./code/070-10036HelloWorld.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.census_entry = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"Allen Comp Sci\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"AllenCompSci\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Maxwell Cody\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"MaxwellCody\00", align 1
@head = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Hello World from %s @ https://github.com/%s\0A\00", align 1
@tail = internal global ptr null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @populate_census() #0 {
entry:
  call void @add_entry(ptr noundef @.str, ptr noundef @.str.1)
  call void @add_entry(ptr noundef @.str.2, ptr noundef @.str.3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @add_entry(ptr noundef %fullName, ptr noundef %githubUsername) #0 {
entry:
  %fullName.addr = alloca ptr, align 8
  %githubUsername.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  store ptr %fullName, ptr %fullName.addr, align 8
  store ptr %githubUsername, ptr %githubUsername.addr, align 8
  %call = call ptr @malloc(i64 noundef 24) #3
  store ptr %call, ptr %entry1, align 8
  %0 = load ptr, ptr %fullName.addr, align 8
  %1 = load ptr, ptr %entry1, align 8
  %fullName2 = getelementptr inbounds %struct.census_entry, ptr %1, i32 0, i32 0
  store ptr %0, ptr %fullName2, align 8
  %2 = load ptr, ptr %githubUsername.addr, align 8
  %3 = load ptr, ptr %entry1, align 8
  %githubUsername3 = getelementptr inbounds %struct.census_entry, ptr %3, i32 0, i32 1
  store ptr %2, ptr %githubUsername3, align 8
  %4 = load ptr, ptr %entry1, align 8
  %next = getelementptr inbounds %struct.census_entry, ptr %4, i32 0, i32 2
  store ptr null, ptr %next, align 8
  %5 = load ptr, ptr @head, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr @tail, align 8
  %cmp4 = icmp eq ptr %6, null
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr %entry1, align 8
  store ptr %7, ptr @head, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %entry1, align 8
  %9 = load ptr, ptr @tail, align 8
  %next5 = getelementptr inbounds %struct.census_entry, ptr %9, i32 0, i32 2
  store ptr %8, ptr %next5, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load ptr, ptr %entry1, align 8
  store ptr %10, ptr @tail, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %current = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @populate_census()
  %0 = load ptr, ptr @head, align 8
  store ptr %0, ptr %current, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %current, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %current, align 8
  %fullName = getelementptr inbounds %struct.census_entry, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %fullName, align 8
  %4 = load ptr, ptr %current, align 8
  %githubUsername = getelementptr inbounds %struct.census_entry, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %githubUsername, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %3, ptr noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %current, align 8
  %next = getelementptr inbounds %struct.census_entry, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %next, align 8
  store ptr %7, ptr %current, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
