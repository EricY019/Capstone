; ModuleID = './code/260-3151program2.c'
source_filename = "./code/260-3151program2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node_t = type { i32, double, [10 x i8] }

@__const.main.nums = private unnamed_addr constant [6 x i32] [i32 1, i32 1, i32 2, i32 3, i32 5, i32 8], align 4
@.str = private unnamed_addr constant [9 x i8] c"data.bin\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.node = private unnamed_addr constant %struct.node_t { i32 13, double 3.141500e+00, [10 x i8] c"mydata\00\00\00\00" }, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"struct.bin\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"node.data = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"node.dbl = %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"node.str = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nums = alloca [6 x i32], align 4
  %len = alloca i32, align 4
  %output_bin = alloca ptr, align 8
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %input_bin = alloca ptr, align 8
  %i = alloca i32, align 4
  %node = alloca %struct.node_t, align 8
  %output_bin2 = alloca ptr, align 8
  %input_node = alloca %struct.node_t, align 8
  %input_bin2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %nums, ptr align 4 @__const.main.nums, i64 24, i1 false)
  store i32 6, ptr %len, align 4
  %call = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %output_bin, align 8
  %0 = load ptr, ptr %output_bin, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [6 x i32], ptr %nums, i64 0, i64 0
  %1 = load i32, ptr %len, align 4
  %conv = sext i32 %1 to i64
  %2 = load ptr, ptr %output_bin, align 8
  %call1 = call i64 @"\01_fwrite"(ptr noundef %arraydecay, i64 noundef 4, i64 noundef %conv, ptr noundef %2)
  %3 = load ptr, ptr %output_bin, align 8
  %call2 = call i32 @fclose(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %len, align 4
  %5 = zext i32 %4 to i64
  %6 = call ptr @llvm.stacksave.p0()
  store ptr %6, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %5, align 4
  store i64 %5, ptr %__vla_expr0, align 8
  %call3 = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.2)
  store ptr %call3, ptr %input_bin, align 8
  %7 = load ptr, ptr %input_bin, align 8
  %tobool4 = icmp ne ptr %7, null
  br i1 %tobool4, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.end
  %8 = load i32, ptr %len, align 4
  %conv6 = sext i32 %8 to i64
  %9 = load ptr, ptr %input_bin, align 8
  %call7 = call i64 @fread(ptr noundef %vla, i64 noundef 4, i64 noundef %conv6, ptr noundef %9)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %len, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  %13 = load i32, ptr %arrayidx, align 4
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %15 = load ptr, ptr %input_bin, align 8
  %call11 = call i32 @fclose(ptr noundef %15)
  br label %if.end12

if.end12:                                         ; preds = %for.end, %if.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %node, ptr align 8 @__const.main.node, i64 32, i1 false)
  %call13 = call ptr @"\01_fopen"(ptr noundef @.str.5, ptr noundef @.str.1)
  store ptr %call13, ptr %output_bin2, align 8
  %16 = load ptr, ptr %output_bin2, align 8
  %tobool14 = icmp ne ptr %16, null
  br i1 %tobool14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end12
  %17 = load ptr, ptr %output_bin2, align 8
  %call16 = call i64 @"\01_fwrite"(ptr noundef %node, i64 noundef 32, i64 noundef 1, ptr noundef %17)
  %18 = load ptr, ptr %output_bin2, align 8
  %call17 = call i32 @fclose(ptr noundef %18)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12
  %call19 = call ptr @"\01_fopen"(ptr noundef @.str.5, ptr noundef @.str.2)
  store ptr %call19, ptr %input_bin2, align 8
  %19 = load ptr, ptr %input_bin2, align 8
  %tobool20 = icmp ne ptr %19, null
  br i1 %tobool20, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end18
  %20 = load ptr, ptr %input_bin2, align 8
  %call22 = call i64 @fread(ptr noundef %input_node, i64 noundef 32, i64 noundef 1, ptr noundef %20)
  %data = getelementptr inbounds %struct.node_t, ptr %input_node, i32 0, i32 0
  %21 = load i32, ptr %data, align 8
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %21)
  %dbl = getelementptr inbounds %struct.node_t, ptr %input_node, i32 0, i32 1
  %22 = load double, ptr %dbl, align 8
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %22)
  %str = getelementptr inbounds %struct.node_t, ptr %input_node, i32 0, i32 2
  %arraydecay25 = getelementptr inbounds [10 x i8], ptr %str, i64 0, i64 0
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %arraydecay25)
  %23 = load ptr, ptr %input_bin2, align 8
  %call27 = call i32 @fclose(ptr noundef %23)
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %if.end18
  store i32 0, ptr %retval, align 4
  %24 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %24)
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #2

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
