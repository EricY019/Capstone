; ModuleID = './code/251-25291xor.c'
source_filename = "./code/251-25291xor.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"CANT OPEN %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"USAGE:\0A xor file0 file1\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @size(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %sz = alloca i64, align 8
  store ptr %fp, ptr %fp.addr, align 8
  %0 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2)
  %1 = load ptr, ptr %fp.addr, align 8
  %call1 = call i64 @ftell(ptr noundef %1)
  store i64 %call1, ptr %sz, align 8
  %2 = load ptr, ptr %fp.addr, align 8
  %call2 = call i32 @fseek(ptr noundef %2, i64 noundef 0, i32 noundef 0)
  %3 = load i64, ptr %sz, align 8
  ret i64 %3
}

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

declare i64 @ftell(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @min(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  store i64 %b, ptr %b.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  %1 = load i64, ptr %b.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %b.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @apply(ptr noundef %cyphername, ptr noundef %filename) #0 {
entry:
  %cyphername.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %cypher = alloca ptr, align 8
  %file = alloca ptr, align 8
  %i = alloca i64, align 8
  %num_bytes = alloca i64, align 8
  %f = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %cyphername, ptr %cyphername.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  %0 = load ptr, ptr %cyphername.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str)
  store ptr %call, ptr %cypher, align 8
  %1 = load ptr, ptr %cypher, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cyphername.addr, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %filename.addr, align 8
  %call2 = call ptr @"\01_fopen"(ptr noundef %3, ptr noundef @.str)
  store ptr %call2, ptr %file, align 8
  %4 = load ptr, ptr %file, align 8
  %tobool3 = icmp ne ptr %4, null
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %filename.addr, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %5)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  store i64 0, ptr %i, align 8
  %6 = load ptr, ptr %file, align 8
  %call7 = call i64 @size(ptr noundef %6)
  %7 = load ptr, ptr %cypher, align 8
  %call8 = call i64 @size(ptr noundef %7)
  %call9 = call i64 @min(i64 noundef %call7, i64 noundef %call8)
  store i64 %call9, ptr %num_bytes, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %8 = load i64, ptr %i, align 8
  %9 = load i64, ptr %num_bytes, align 8
  %cmp = icmp ult i64 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %file, align 8
  %call10 = call i32 @fgetc(ptr noundef %10)
  store i32 %call10, ptr %f, align 4
  %11 = load ptr, ptr %cypher, align 8
  %call11 = call i32 @fgetc(ptr noundef %11)
  store i32 %call11, ptr %c, align 4
  %12 = load i32, ptr %f, align 4
  %13 = load i32, ptr %c, align 4
  %xor = xor i32 %12, %13
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %xor)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, ptr %i, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @fgetc(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @usage() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @eq(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  %call = call ptr @strstr(ptr noundef %0, ptr noundef %1) #3
  %cmp = icmp ne ptr %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare ptr @strstr(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %cc, ptr noundef %cv) #0 {
entry:
  %retval = alloca i32, align 4
  %cc.addr = alloca i32, align 4
  %cv.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %f = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %cc, ptr %cc.addr, align 4
  store ptr %cv, ptr %cv.addr, align 8
  %0 = load i32, ptr %cc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %cc.addr, align 4
  %1 = load i32, ptr %cc.addr, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %c, align 8
  %4 = load ptr, ptr %cv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %4, i64 2
  %5 = load ptr, ptr %arrayidx1, align 8
  store ptr %5, ptr %f, align 8
  %6 = load ptr, ptr %c, align 8
  %7 = load ptr, ptr %f, align 8
  call void @apply(ptr noundef %6, ptr noundef %7)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @usage()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
