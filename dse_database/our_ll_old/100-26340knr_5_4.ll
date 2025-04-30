; ModuleID = './code/100-26340knr_5_4.c'
source_filename = "./code/100-26340knr_5_4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.s = private unnamed_addr constant [18 x i8] c"Je veux lui dire,\00", align 1
@__const.main.t = private unnamed_addr constant [6 x i8] c"dire,\00", align 1
@.str = private unnamed_addr constant [45 x i8] c"\0AThe string \0A\09%s\0Aappears at the end of \0A\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"\0AThe string \0A\09%s\0Adoes not appear at the end of \0A\09%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %s = alloca [18 x i8], align 1
  %t = alloca [6 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %ret, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %s, ptr align 1 @__const.main.s, i64 18, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %t, ptr align 1 @__const.main.t, i64 6, i1 false)
  %arraydecay = getelementptr inbounds [18 x i8], ptr %s, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [6 x i8], ptr %t, i64 0, i64 0
  %call = call i32 @strend(ptr noundef %arraydecay, ptr noundef %arraydecay1)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [6 x i8], ptr %t, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [18 x i8], ptr %s, i64 0, i64 0
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay2, ptr noundef %arraydecay3)
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay5 = getelementptr inbounds [6 x i8], ptr %t, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [18 x i8], ptr %s, i64 0, i64 0
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay5, ptr noundef %arraydecay6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load i32, ptr %ret, align 4
  ret i32 %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @strend(ptr noundef %str, ptr noundef %tail) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %tail.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  store ptr %tail, ptr %tail.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %str.addr, align 8
  %1 = load ptr, ptr %str.addr, align 8
  %call = call i64 @strlen(ptr noundef %1) #4
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %call
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %3 = load ptr, ptr %tail.addr, align 8
  %4 = load ptr, ptr %tail.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %4) #4
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 %call1
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, %conv3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %6 = load ptr, ptr %tail.addr, align 8
  %call5 = call i64 @strlen(ptr noundef %6) #4
  %cmp6 = icmp ne i64 %call5, 0
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %str.addr, align 8
  %call8 = call i64 @strlen(ptr noundef %7) #4
  %cmp9 = icmp ne i64 %call8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp9, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load ptr, ptr %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 -1
  store ptr %incdec.ptr, ptr %str.addr, align 8
  %10 = load ptr, ptr %tail.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %10, i32 -1
  store ptr %incdec.ptr11, ptr %tail.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  %11 = load ptr, ptr %tail.addr, align 8
  %call12 = call i64 @strlen(ptr noundef %11) #4
  %cmp13 = icmp eq i64 %call12, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

declare i32 @printf(ptr noundef, ...) #2

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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
