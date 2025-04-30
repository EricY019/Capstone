; ModuleID = './code/192-22604zad1.c'
source_filename = "./code/192-22604zad1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.sl = type { [30 x i8], ptr }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ghi\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @pusta(ptr noundef %lis) #0 {
entry:
  %retval = alloca i32, align 4
  %lis.addr = alloca ptr, align 8
  store ptr %lis, ptr %lis.addr, align 8
  %0 = load ptr, ptr %lis.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @pierwsze(ptr noundef %lis) #0 {
entry:
  %lis.addr = alloca ptr, align 8
  store ptr %lis, ptr %lis.addr, align 8
  %0 = load ptr, ptr %lis.addr, align 8
  %slowo = getelementptr inbounds %struct.sl, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [30 x i8], ptr %slowo, i64 0, i64 0
  ret ptr %arraydecay
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @reszta(ptr noundef %lis) #0 {
entry:
  %lis.addr = alloca ptr, align 8
  store ptr %lis, ptr %lis.addr, align 8
  %0 = load ptr, ptr %lis.addr, align 8
  %dalej = getelementptr inbounds %struct.sl, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %dalej, align 8
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @dolacz(ptr noundef %slow, ptr noundef %lis) #0 {
entry:
  %slow.addr = alloca ptr, align 8
  %lis.addr = alloca ptr, align 8
  %pom = alloca ptr, align 8
  store ptr %slow, ptr %slow.addr, align 8
  store ptr %lis, ptr %lis.addr, align 8
  %call = call ptr @malloc(i64 noundef 40) #4
  store ptr %call, ptr %pom, align 8
  %0 = load ptr, ptr %pom, align 8
  %slowo = getelementptr inbounds %struct.sl, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [30 x i8], ptr %slowo, i64 0, i64 0
  %1 = load ptr, ptr %slow.addr, align 8
  %call1 = call ptr @__strcpy_chk(ptr noundef %arraydecay, ptr noundef %1, i64 noundef 30) #5
  %2 = load ptr, ptr %lis.addr, align 8
  %3 = load ptr, ptr %pom, align 8
  %dalej = getelementptr inbounds %struct.sl, ptr %3, i32 0, i32 1
  store ptr %2, ptr %dalej, align 8
  %4 = load ptr, ptr %pom, align 8
  ret ptr %4
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @druk(ptr noundef %lis) #0 {
entry:
  %lis.addr = alloca ptr, align 8
  %wynik = alloca ptr, align 8
  store ptr %lis, ptr %lis.addr, align 8
  %0 = load ptr, ptr %lis.addr, align 8
  store ptr %0, ptr %wynik, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %wynik, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %wynik, align 8
  %slowo = getelementptr inbounds %struct.sl, ptr %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [30 x i8], ptr %slowo, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay)
  %3 = load ptr, ptr %wynik, align 8
  %dalej = getelementptr inbounds %struct.sl, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %dalej, align 8
  store ptr %4, ptr %wynik, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @odwroc(ptr noundef %lis) #0 {
entry:
  %lis.addr = alloca ptr, align 8
  %pom = alloca ptr, align 8
  %slowo = alloca [30 x i8], align 1
  store ptr %lis, ptr %lis.addr, align 8
  store ptr null, ptr %pom, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %lis.addr, align 8
  %call = call i32 @pusta(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [30 x i8], ptr %slowo, i64 0, i64 0
  %1 = load ptr, ptr %lis.addr, align 8
  %call1 = call ptr @pierwsze(ptr noundef %1)
  %call2 = call ptr @__strcpy_chk(ptr noundef %arraydecay, ptr noundef %call1, i64 noundef 30) #5
  %2 = load ptr, ptr %lis.addr, align 8
  %call3 = call ptr @reszta(ptr noundef %2)
  store ptr %call3, ptr %lis.addr, align 8
  %arraydecay4 = getelementptr inbounds [30 x i8], ptr %slowo, i64 0, i64 0
  %3 = load ptr, ptr %pom, align 8
  %call5 = call ptr @dolacz(ptr noundef %arraydecay4, ptr noundef %3)
  store ptr %call5, ptr %pom, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %pom, align 8
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %lis = alloca ptr, align 8
  store ptr null, ptr %lis, align 8
  %0 = load ptr, ptr %lis, align 8
  %call = call ptr @dolacz(ptr noundef @.str.3, ptr noundef %0)
  %call1 = call ptr @dolacz(ptr noundef @.str.2, ptr noundef %call)
  %call2 = call ptr @dolacz(ptr noundef @.str.1, ptr noundef %call1)
  store ptr %call2, ptr %lis, align 8
  %1 = load ptr, ptr %lis, align 8
  %call3 = call ptr @odwroc(ptr noundef %1)
  call void @druk(ptr noundef %call3)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
