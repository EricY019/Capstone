; ModuleID = './code/048-33667foll-vfork.c'
source_filename = "./code/048-33667foll-vfork.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [13 x i8] c"vforked-prog\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"I'm the child!\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"exec failed\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"I'm the proud parent of child #%d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pid = alloca i32, align 4
  %prog = alloca [1024 x i8], align 1
  %len = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %add = add nsw i32 1, %0
  store i32 %add, ptr %pid, align 4
  %call = call i32 @vfork() #7
  store i32 %call, ptr %pid, align 4
  %1 = load i32, ptr %pid, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %prog, i64 0, i64 0
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @__strcpy_chk(ptr noundef %arraydecay, ptr noundef %3, i64 noundef 1024) #8
  %arraydecay2 = getelementptr inbounds [1024 x i8], ptr %prog, i64 0, i64 0
  %call3 = call i64 @strlen(ptr noundef %arraydecay2) #8
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %len, align 4
  %arraydecay4 = getelementptr inbounds [1024 x i8], ptr %prog, i64 0, i64 0
  %4 = load i32, ptr %len, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay4, i64 %idx.ext
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr, i64 -10
  %arraydecay6 = getelementptr inbounds [1024 x i8], ptr %prog, i64 0, i64 0
  %5 = load i32, ptr %len, align 4
  %idx.ext7 = sext i32 %5 to i64
  %add.ptr8 = getelementptr inbounds i8, ptr %arraydecay6, i64 %idx.ext7
  %add.ptr9 = getelementptr inbounds i8, ptr %add.ptr8, i64 -10
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr9, i1 false, i1 true, i1 false)
  %call10 = call ptr @__memcpy_chk(ptr noundef %add.ptr5, ptr noundef @.str, i64 noundef 12, i64 noundef %6) #8
  %7 = load i32, ptr %len, align 4
  %add11 = add nsw i32 %7, 2
  %idxprom = sext i32 %add11 to i64
  %arrayidx12 = getelementptr inbounds [1024 x i8], ptr %prog, i64 0, i64 %idxprom
  store i8 0, ptr %arrayidx12, align 1
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %arraydecay14 = getelementptr inbounds [1024 x i8], ptr %prog, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [1024 x i8], ptr %prog, i64 0, i64 0
  %call16 = call i32 (ptr, ptr, ...) @execlp(ptr noundef %arraydecay14, ptr noundef %arraydecay15, ptr noundef null)
  call void @perror(ptr noundef @.str.2) #9
  call void @_exit(i32 noundef 1) #10
  unreachable

if.else:                                          ; preds = %entry
  %8 = load i32, ptr %pid, align 4
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.else
  ret i32 0
}

; Function Attrs: returns_twice
declare i32 @vfork() #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #4

declare i32 @execlp(ptr noundef, ptr noundef, ...) #4

; Function Attrs: cold
declare void @perror(ptr noundef) #5

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #6

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { returns_twice "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #7 = { returns_twice }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
