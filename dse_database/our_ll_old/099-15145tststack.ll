; ModuleID = './code/099-15145tststack.c'
source_filename = "./code/099-15145tststack.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@.str = private unnamed_addr constant [19 x i8] c"invalid stack size\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"res1 = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"res2 = %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"This is `%s'\0A\00", align 1
@__FUNCTION__.f1 = private unnamed_addr constant [3 x i8] c"f1\00", align 1
@__stdoutp = external global ptr, align 8
@__FUNCTION__.f2 = private unnamed_addr constant [3 x i8] c"f2\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %attr = alloca %struct._opaque_pthread_attr_t, align 8
  %th1 = alloca ptr, align 8
  %th2 = alloca ptr, align 8
  %res1 = alloca ptr, align 8
  %res2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr null, ptr %th1, align 8
  store ptr null, ptr %th2, align 8
  %call = call i32 @pthread_attr_init(ptr noundef %attr)
  %call1 = call i32 @pthread_attr_setstacksize(ptr noundef %attr, i64 noundef 71680)
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 @puts(ptr noundef @.str)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call i32 @pthread_create(ptr noundef %th1, ptr noundef null, ptr noundef @f1, ptr noundef null)
  %call4 = call i32 @pthread_create(ptr noundef %th2, ptr noundef %attr, ptr noundef @f2, ptr noundef null)
  %0 = load ptr, ptr %th1, align 8
  %call5 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef %res1)
  %1 = load ptr, ptr %th2, align 8
  %call6 = call i32 @"\01_pthread_join"(ptr noundef %1, ptr noundef %res2)
  %2 = load ptr, ptr %res1, align 8
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %2)
  %3 = load ptr, ptr %res2, align 8
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %3)
  %4 = load ptr, ptr %res1, align 8
  %cmp9 = icmp ne ptr %4, inttoptr (i64 1 to ptr)
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %5 = load ptr, ptr %res2, align 8
  %cmp10 = icmp ne ptr %5, inttoptr (i64 2 to ptr)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %6 = phi i1 [ true, %if.end ], [ %cmp10, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  store i32 %lor.ext, ptr %retval, align 4
  br label %return

return:                                           ; preds = %lor.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i32 @pthread_attr_init(ptr noundef) #1

declare i32 @pthread_attr_setstacksize(ptr noundef, i64 noundef) #1

declare i32 @puts(ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @f1(ptr noundef %parm) #0 {
entry:
  %parm.addr = alloca ptr, align 8
  store ptr %parm, ptr %parm.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef @__FUNCTION__.f1)
  %0 = load ptr, ptr @__stdoutp, align 8
  %call1 = call i32 @fflush(ptr noundef %0)
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @f2(ptr noundef %parm) #0 {
entry:
  %parm.addr = alloca ptr, align 8
  store ptr %parm, ptr %parm.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef @__FUNCTION__.f2)
  %0 = load ptr, ptr @__stdoutp, align 8
  %call1 = call i32 @fflush(ptr noundef %0)
  %call2 = call i32 @"\01_sleep"(i32 noundef 1)
  ret ptr inttoptr (i64 2 to ptr)
}

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @fflush(ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
