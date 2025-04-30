; ModuleID = './code/285-18854dir2.c'
source_filename = "./code/285-18854dir2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.dirent = type { i64, i64, i16, i16, i8, [1024 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't open the directory\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %eps = alloca ptr, align 8
  %n = alloca i32, align 4
  %cnt = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @"\01_scandir"(ptr noundef @.str, ptr noundef %eps, ptr noundef @one, ptr noundef @"\01_alphasort")
  store i32 %call, ptr %n, align 4
  %0 = load i32, ptr %n, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %cnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %cnt, align 4
  %2 = load i32, ptr %n, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %eps, align 8
  %4 = load i32, ptr %cnt, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %d_name = getelementptr inbounds %struct.dirent, ptr %5, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %d_name, i64 0, i64 0
  %call2 = call i32 @puts(ptr noundef %arraydecay)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %cnt, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %cnt, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  call void @perror(ptr noundef @.str.1) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret i32 0
}

declare i32 @"\01_scandir"(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @one(ptr noundef %unused) #0 {
entry:
  %unused.addr = alloca ptr, align 8
  store ptr %unused, ptr %unused.addr, align 8
  ret i32 1
}

declare i32 @"\01_alphasort"(ptr noundef, ptr noundef) #1

declare i32 @puts(ptr noundef) #1

; Function Attrs: cold
declare void @perror(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
