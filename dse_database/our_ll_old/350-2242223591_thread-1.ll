; ModuleID = './code/350-2242223591_thread-1.c'
source_filename = "./code/350-2242223591_thread-1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [22 x i8] c"./testsuite_shared.so\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"dlopen failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"try_throw_exception\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"dlsym failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pt = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 @pthread_create(ptr noundef %pt, ptr noundef null, ptr noundef @run, ptr noundef null)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %pt, align 8
  %call1 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef null)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @run(ptr noundef %arg) #0 {
entry:
  %retval = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %lib = alloca ptr, align 8
  %cb = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %call = call ptr @dlopen(ptr noundef @.str, i32 noundef 2)
  store ptr %call, ptr %lib, align 8
  %0 = load ptr, ptr %lib, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call ptr @__error()
  %1 = load i32, ptr %call1, align 4
  %call2 = call ptr @"\01_strerror"(i32 noundef %1)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %call2)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %lib, align 8
  %call4 = call ptr @dlsym(ptr noundef %2, ptr noundef @.str.2)
  store ptr %call4, ptr %cb, align 8
  %3 = load ptr, ptr %cb, align 8
  %tobool5 = icmp ne ptr %3, null
  br i1 %tobool5, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = call ptr @__error()
  %4 = load i32, ptr %call7, align 4
  %call8 = call ptr @"\01_strerror"(i32 noundef %4)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %call8)
  store ptr null, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.end
  %5 = load ptr, ptr %cb, align 8
  call void %5()
  %6 = load ptr, ptr %lib, align 8
  %call11 = call i32 @dlclose(ptr noundef %6)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then6, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare ptr @dlopen(ptr noundef, i32 noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare ptr @"\01_strerror"(i32 noundef) #1

declare ptr @__error() #1

declare ptr @dlsym(ptr noundef, ptr noundef) #1

declare i32 @dlclose(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
