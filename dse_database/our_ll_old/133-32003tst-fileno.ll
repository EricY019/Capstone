; ModuleID = './code/133-32003tst-fileno.c'
source_filename = "./code/133-32003tst-fileno.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@__stdinp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@__stdoutp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@__stderrp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"(fileno (%s) = %d) %c= %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load ptr, ptr @__stdinp, align 8
  %call = call i32 @check(ptr noundef @.str, ptr noundef %0, i32 noundef 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @__stdoutp, align 8
  %call1 = call i32 @check(ptr noundef @.str.1, ptr noundef %1, i32 noundef 1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 @check(ptr noundef @.str.2, ptr noundef %2, i32 noundef 2)
  %tobool4 = icmp ne i32 %call3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool4, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  ret i32 %lor.ext
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @check(ptr noundef %name, ptr noundef %stream, i32 noundef %fd) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %sfd = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store ptr %stream, ptr %stream.addr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  %0 = load ptr, ptr %stream.addr, align 8
  %call = call i32 @fileno(ptr noundef %0)
  store i32 %call, ptr %sfd, align 4
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load i32, ptr %sfd, align 4
  %3 = load i32, ptr %sfd, align 4
  %4 = load i32, ptr %fd.addr, align 4
  %cmp = icmp eq i32 %3, %4
  %5 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 61, i32 33
  %6 = load i32, ptr %fd.addr, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %1, i32 noundef %2, i32 noundef %cond, i32 noundef %6)
  %7 = load i32, ptr %sfd, align 4
  %8 = load i32, ptr %fd.addr, align 4
  %cmp2 = icmp ne i32 %7, %8
  %conv = zext i1 %cmp2 to i32
  ret i32 %conv
}

declare i32 @fileno(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
