; ModuleID = './code/141-262444-13_recursive-reverse.c'
source_filename = "./code/141-262444-13_recursive-reverse.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.foo = private unnamed_addr constant [40 x i8] c"Learning C is fun and challenging.\00\00\00\00\00\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"Before: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" After: %s\0A\00", align 1
@__const.main.bar = private unnamed_addr constant [30 x i8] c"Hello out there!\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@reverse.i = internal global i32 0, align 4
@reverse.j = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %foo = alloca [40 x i8], align 1
  %bar = alloca [30 x i8], align 1
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %foo, ptr align 1 @__const.main.foo, i64 40, i1 false)
  %arraydecay = getelementptr inbounds [40 x i8], ptr %foo, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [40 x i8], ptr %foo, i64 0, i64 0
  call void @reverse(ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [40 x i8], ptr %foo, i64 0, i64 0
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay2)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %bar, ptr align 1 @__const.main.bar, i64 30, i1 false)
  %arraydecay4 = getelementptr inbounds [30 x i8], ptr %bar, i64 0, i64 0
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay4)
  %arraydecay6 = getelementptr inbounds [30 x i8], ptr %bar, i64 0, i64 0
  call void @reverse(ptr noundef %arraydecay6)
  %arraydecay7 = getelementptr inbounds [30 x i8], ptr %bar, i64 0, i64 0
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay7)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @reverse(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load i32, ptr @reverse.j, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8
  %call = call i64 @strlen(ptr noundef %1) #4
  %sub = sub i64 %call, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, ptr @reverse.j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr @reverse.i, align 4
  %3 = load i32, ptr @reverse.j, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %if.then3, label %if.end12

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %s.addr, align 8
  %5 = load i32, ptr @reverse.i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv4 = sext i8 %6 to i32
  store i32 %conv4, ptr %c, align 4
  %7 = load ptr, ptr %s.addr, align 8
  %8 = load i32, ptr @reverse.j, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 %idxprom5
  %9 = load i8, ptr %arrayidx6, align 1
  %10 = load ptr, ptr %s.addr, align 8
  %11 = load i32, ptr @reverse.i, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %10, i64 %idxprom7
  store i8 %9, ptr %arrayidx8, align 1
  %12 = load i32, ptr %c, align 4
  %conv9 = trunc i32 %12 to i8
  %13 = load ptr, ptr %s.addr, align 8
  %14 = load i32, ptr @reverse.j, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %13, i64 %idxprom10
  store i8 %conv9, ptr %arrayidx11, align 1
  %15 = load i32, ptr @reverse.i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr @reverse.i, align 4
  %16 = load i32, ptr @reverse.j, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, ptr @reverse.j, align 4
  %17 = load ptr, ptr %s.addr, align 8
  call void @reverse(ptr noundef %17)
  br label %return

if.end12:                                         ; preds = %if.end
  store i32 0, ptr @reverse.i, align 4
  store i32 0, ptr @reverse.j, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then3
  ret void
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
