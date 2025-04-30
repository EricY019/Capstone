; ModuleID = './code/181-28878check_cooc.c'
source_filename = "./code/181-28878check_cooc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.cooccur_rec = type { i32, i32, double }

@.str = private unnamed_addr constant [9 x i8] c"cooc.bin\00", align 1
@inputfile = global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Error on opening file!\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"word1=%d,word2=%d,val=%lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fin = alloca ptr, align 8
  %cr = alloca %struct.cooccur_rec, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  %0 = load ptr, ptr @inputfile, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str.1)
  store ptr %call, ptr %fin, align 8
  %1 = load ptr, ptr %fin, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %2 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %2, 20
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %fin, align 8
  %call3 = call i64 @fread(ptr noundef %cr, i64 noundef 16, i64 noundef 1, ptr noundef %3)
  %word1 = getelementptr inbounds %struct.cooccur_rec, ptr %cr, i32 0, i32 0
  %4 = load i32, ptr %word1, align 8
  %word2 = getelementptr inbounds %struct.cooccur_rec, ptr %cr, i32 0, i32 1
  %5 = load i32, ptr %word2, align 4
  %val = getelementptr inbounds %struct.cooccur_rec, ptr %cr, i32 0, i32 2
  %6 = load double, ptr %val, align 8
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %4, i32 noundef %5, double noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %fin, align 8
  %call5 = call i32 @fclose(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
