; ModuleID = './code/022-33504test_swab.c'
source_filename = "./code/022-33504test_swab.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.buf = private unnamed_addr constant [9 x i8] c"01234567\00", align 1
@__const.main.buf2 = private unnamed_addr constant [8 x i8] c"0123456\00", align 1
@.str = private unnamed_addr constant [35 x i8] c"test_swab: After swapping, buf=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"10325476\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"022-33504test_swab.c\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"strcmp(buf, \2210325476\22) == 0\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"test_swab: After swapping, buf2=%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"1032546\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"strcmp(buf2, \221032546\22) == 0\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca [9 x i8], align 1
  %buf2 = alloca [8 x i8], align 1
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %buf, ptr align 1 @__const.main.buf, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %buf2, ptr align 1 @__const.main.buf2, i64 8, i1 false)
  %arraydecay = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  %call = call i64 @strlen(ptr noundef %arraydecay2) #5
  call void @swab(ptr noundef %arraydecay, ptr noundef %arraydecay1, i64 noundef %call)
  %arraydecay3 = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay3)
  %arraydecay5 = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  %call6 = call i32 @strcmp(ptr noundef %arraydecay5, ptr noundef @.str.1) #5
  %cmp = icmp eq i32 %call6, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.2, i32 noundef 50, ptr noundef @.str.3) #6
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %0
  %arraydecay7 = getelementptr inbounds [8 x i8], ptr %buf2, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [8 x i8], ptr %buf2, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [8 x i8], ptr %buf2, i64 0, i64 0
  %call10 = call i64 @strlen(ptr noundef %arraydecay9) #5
  call void @swab(ptr noundef %arraydecay7, ptr noundef %arraydecay8, i64 noundef %call10)
  %arraydecay11 = getelementptr inbounds [8 x i8], ptr %buf2, i64 0, i64 0
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %arraydecay11)
  %arraydecay13 = getelementptr inbounds [8 x i8], ptr %buf2, i64 0, i64 0
  %call14 = call i32 @strcmp(ptr noundef %arraydecay13, ptr noundef @.str.5) #5
  %cmp15 = icmp eq i32 %call14, 0
  %lnot17 = xor i1 %cmp15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %tobool20 = icmp ne i64 %conv19, 0
  br i1 %tobool20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.2, i32 noundef 56, ptr noundef @.str.6) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %1
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare void @swab(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind }
attributes #6 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
