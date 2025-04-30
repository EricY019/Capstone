; ModuleID = './code/058-8305strchr.c'
source_filename = "./code/058-8305strchr.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.str = private unnamed_addr constant [19 x i8] c"I love this world!\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Try not. Do, or do not. There is no try.\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Found '%c' starting at '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [19 x i8], align 1
  %p = alloca ptr, align 8
  %str2 = alloca ptr, align 8
  %target = alloca i8, align 1
  %result = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str, ptr align 1 @__const.main.str, i64 19, i1 false)
  %arraydecay = getelementptr inbounds [19 x i8], ptr %str, i64 0, i64 0
  %call = call ptr @strchr(ptr noundef %arraydecay, i32 noundef 73) #4
  store ptr %call, ptr %p, align 8
  %0 = load ptr, ptr %p, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  %1 = load ptr, ptr %p, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv)
  %3 = load ptr, ptr %p, align 8
  %arraydecay3 = getelementptr inbounds [19 x i8], ptr %str, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv4 = trunc i64 %sub.ptr.sub to i32
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv4)
  %arraydecay6 = getelementptr inbounds [19 x i8], ptr %str, i64 0, i64 0
  %call7 = call ptr @strchr(ptr noundef %arraydecay6, i32 noundef 108) #4
  store ptr %call7, ptr %p, align 8
  %4 = load ptr, ptr %p, align 8
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %4)
  %5 = load ptr, ptr %p, align 8
  %6 = load i8, ptr %5, align 1
  %conv9 = sext i8 %6 to i32
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv9)
  %7 = load ptr, ptr %p, align 8
  %arraydecay11 = getelementptr inbounds [19 x i8], ptr %str, i64 0, i64 0
  %sub.ptr.lhs.cast12 = ptrtoint ptr %7 to i64
  %sub.ptr.rhs.cast13 = ptrtoint ptr %arraydecay11 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %conv15 = trunc i64 %sub.ptr.sub14 to i32
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv15)
  store ptr @.str.3, ptr %str2, align 8
  store i8 84, ptr %target, align 1
  %8 = load ptr, ptr %str2, align 8
  store ptr %8, ptr %result, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load ptr, ptr %result, align 8
  %10 = load i8, ptr %target, align 1
  %conv17 = sext i8 %10 to i32
  %call18 = call ptr @strchr(ptr noundef %9, i32 noundef %conv17) #4
  store ptr %call18, ptr %result, align 8
  %cmp = icmp ne ptr %call18, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8, ptr %target, align 1
  %conv20 = sext i8 %11 to i32
  %12 = load ptr, ptr %result, align 8
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %conv20, ptr noundef %12)
  %13 = load ptr, ptr %result, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %result, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @strchr(ptr noundef, i32 noundef) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
