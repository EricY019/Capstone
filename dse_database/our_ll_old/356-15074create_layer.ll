; ModuleID = './code/356-15074create_layer.c'
source_filename = "./code/356-15074create_layer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.file_name = private unnamed_addr constant [10 x i8] c"layer.msh\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"$MeshFormat\0A2 0 8\0A$EndMeshFormat\0A$Nodes\0A%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"$EndNodes\0A$Elements\0A%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"$EndElements\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%d 4 3 0 1 0 %d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %file = alloca ptr, align 8
  %file_name = alloca [10 x i8], align 1
  %cur_num = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %tetr_num = alloca i32, align 4
  %k18 = alloca i32, align 4
  %j22 = alloca i32, align 4
  %i26 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %file_name, ptr align 1 @__const.main.file_name, i64 10, i1 false)
  %arraydecay = getelementptr inbounds [10 x i8], ptr %file_name, i64 0, i64 0
  %call = call ptr @"\01_fopen"(ptr noundef %arraydecay, ptr noundef @.str)
  store ptr %call, ptr %file, align 8
  %0 = load ptr, ptr %file, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.1, i32 noundef 404010) #4
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %1 = load i32, ptr %k, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc11, %for.body
  %2 = load i32, ptr %j, align 4
  %cmp3 = icmp slt i32 %2, 201
  br i1 %cmp3, label %for.body4, label %for.end13

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %3 = load i32, ptr %i, align 4
  %cmp6 = icmp slt i32 %3, 201
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %j, align 4
  %6 = load i32, ptr %k, align 4
  %call8 = call i32 @get_num_in_zone(i32 noundef %4, i32 noundef %5, i32 noundef %6)
  store i32 %call8, ptr %cur_num, align 4
  %7 = load i32, ptr %cur_num, align 4
  %cmp9 = icmp sge i32 %7, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %8 = load ptr, ptr %file, align 8
  %9 = load i32, ptr %cur_num, align 4
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %j, align 4
  %12 = load i32, ptr %k, align 4
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.2, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond5, !llvm.loop !5

for.end:                                          ; preds = %for.cond5
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %14 = load i32, ptr %j, align 4
  %inc12 = add nsw i32 %14, 1
  store i32 %inc12, ptr %j, align 4
  br label %for.cond2, !llvm.loop !7

for.end13:                                        ; preds = %for.cond2
  br label %for.inc14

for.inc14:                                        ; preds = %for.end13
  %15 = load i32, ptr %k, align 4
  %inc15 = add nsw i32 %15, 1
  store i32 %inc15, ptr %k, align 4
  br label %for.cond, !llvm.loop !8

for.end16:                                        ; preds = %for.cond
  %16 = load ptr, ptr %file, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.3, i32 noundef 2160000) #4
  store i32 1, ptr %tetr_num, align 4
  store i32 0, ptr %k18, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc37, %for.end16
  %17 = load i32, ptr %k18, align 4
  %cmp20 = icmp slt i32 %17, 9
  br i1 %cmp20, label %for.body21, label %for.end39

for.body21:                                       ; preds = %for.cond19
  store i32 0, ptr %j22, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc34, %for.body21
  %18 = load i32, ptr %j22, align 4
  %cmp24 = icmp slt i32 %18, 200
  br i1 %cmp24, label %for.body25, label %for.end36

for.body25:                                       ; preds = %for.cond23
  store i32 0, ptr %i26, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc31, %for.body25
  %19 = load i32, ptr %i26, align 4
  %cmp28 = icmp slt i32 %19, 200
  br i1 %cmp28, label %for.body29, label %for.end33

for.body29:                                       ; preds = %for.cond27
  %20 = load ptr, ptr %file, align 8
  %21 = load i32, ptr %tetr_num, align 4
  %22 = load i32, ptr %i26, align 4
  %23 = load i32, ptr %j22, align 4
  %24 = load i32, ptr %k18, align 4
  %call30 = call i32 @write_tetrs(ptr noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %24)
  %25 = load i32, ptr %tetr_num, align 4
  %add = add nsw i32 %25, 6
  store i32 %add, ptr %tetr_num, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.body29
  %26 = load i32, ptr %i26, align 4
  %inc32 = add nsw i32 %26, 1
  store i32 %inc32, ptr %i26, align 4
  br label %for.cond27, !llvm.loop !9

for.end33:                                        ; preds = %for.cond27
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %27 = load i32, ptr %j22, align 4
  %inc35 = add nsw i32 %27, 1
  store i32 %inc35, ptr %j22, align 4
  br label %for.cond23, !llvm.loop !10

for.end36:                                        ; preds = %for.cond23
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %28 = load i32, ptr %k18, align 4
  %inc38 = add nsw i32 %28, 1
  store i32 %inc38, ptr %k18, align 4
  br label %for.cond19, !llvm.loop !11

for.end39:                                        ; preds = %for.cond19
  %29 = load ptr, ptr %file, align 8
  %call40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.4) #4
  %30 = load ptr, ptr %file, align 8
  %call41 = call i32 @fclose(ptr noundef %30)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @get_num_in_zone(i32 noundef %i, i32 noundef %j, i32 noundef %k) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  %0 = load i32, ptr %k.addr, align 4
  %mul = mul nsw i32 %0, 201
  %mul1 = mul nsw i32 %mul, 201
  %1 = load i32, ptr %j.addr, align 4
  %mul2 = mul nsw i32 %1, 201
  %add = add nsw i32 %mul1, %mul2
  %2 = load i32, ptr %i.addr, align 4
  %add3 = add nsw i32 %add, %2
  %add4 = add nsw i32 %add3, 1
  ret i32 %add4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @write_tetrs(ptr noundef %file, i32 noundef %num, i32 noundef %i, i32 noundef %j, i32 noundef %k) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store i32 %num, ptr %num.addr, align 4
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  %0 = load ptr, ptr %file.addr, align 8
  %1 = load i32, ptr %num.addr, align 4
  %2 = load i32, ptr %i.addr, align 4
  %3 = load i32, ptr %j.addr, align 4
  %4 = load i32, ptr %k.addr, align 4
  %call = call i32 @get_absolute_num(i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %5 = load i32, ptr %i.addr, align 4
  %6 = load i32, ptr %j.addr, align 4
  %add = add nsw i32 %6, 1
  %7 = load i32, ptr %k.addr, align 4
  %add1 = add nsw i32 %7, 1
  %call2 = call i32 @get_absolute_num(i32 noundef %5, i32 noundef %add, i32 noundef %add1)
  %8 = load i32, ptr %i.addr, align 4
  %9 = load i32, ptr %j.addr, align 4
  %add3 = add nsw i32 %9, 1
  %10 = load i32, ptr %k.addr, align 4
  %call4 = call i32 @get_absolute_num(i32 noundef %8, i32 noundef %add3, i32 noundef %10)
  %11 = load i32, ptr %i.addr, align 4
  %add5 = add nsw i32 %11, 1
  %12 = load i32, ptr %j.addr, align 4
  %add6 = add nsw i32 %12, 1
  %13 = load i32, ptr %k.addr, align 4
  %call7 = call i32 @get_absolute_num(i32 noundef %add5, i32 noundef %add6, i32 noundef %13)
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.5, i32 noundef %1, i32 noundef %call, i32 noundef %call2, i32 noundef %call4, i32 noundef %call7) #4
  %14 = load ptr, ptr %file.addr, align 8
  %15 = load i32, ptr %num.addr, align 4
  %add9 = add nsw i32 %15, 1
  %16 = load i32, ptr %i.addr, align 4
  %17 = load i32, ptr %j.addr, align 4
  %18 = load i32, ptr %k.addr, align 4
  %add10 = add nsw i32 %18, 1
  %call11 = call i32 @get_absolute_num(i32 noundef %16, i32 noundef %17, i32 noundef %add10)
  %19 = load i32, ptr %i.addr, align 4
  %20 = load i32, ptr %j.addr, align 4
  %add12 = add nsw i32 %20, 1
  %21 = load i32, ptr %k.addr, align 4
  %add13 = add nsw i32 %21, 1
  %call14 = call i32 @get_absolute_num(i32 noundef %19, i32 noundef %add12, i32 noundef %add13)
  %22 = load i32, ptr %i.addr, align 4
  %add15 = add nsw i32 %22, 1
  %23 = load i32, ptr %j.addr, align 4
  %add16 = add nsw i32 %23, 1
  %24 = load i32, ptr %k.addr, align 4
  %add17 = add nsw i32 %24, 1
  %call18 = call i32 @get_absolute_num(i32 noundef %add15, i32 noundef %add16, i32 noundef %add17)
  %25 = load i32, ptr %i.addr, align 4
  %26 = load i32, ptr %j.addr, align 4
  %27 = load i32, ptr %k.addr, align 4
  %call19 = call i32 @get_absolute_num(i32 noundef %25, i32 noundef %26, i32 noundef %27)
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.5, i32 noundef %add9, i32 noundef %call11, i32 noundef %call14, i32 noundef %call18, i32 noundef %call19) #4
  %28 = load ptr, ptr %file.addr, align 8
  %29 = load i32, ptr %num.addr, align 4
  %add21 = add nsw i32 %29, 2
  %30 = load i32, ptr %i.addr, align 4
  %31 = load i32, ptr %j.addr, align 4
  %add22 = add nsw i32 %31, 1
  %32 = load i32, ptr %k.addr, align 4
  %add23 = add nsw i32 %32, 1
  %call24 = call i32 @get_absolute_num(i32 noundef %30, i32 noundef %add22, i32 noundef %add23)
  %33 = load i32, ptr %i.addr, align 4
  %34 = load i32, ptr %j.addr, align 4
  %35 = load i32, ptr %k.addr, align 4
  %call25 = call i32 @get_absolute_num(i32 noundef %33, i32 noundef %34, i32 noundef %35)
  %36 = load i32, ptr %i.addr, align 4
  %add26 = add nsw i32 %36, 1
  %37 = load i32, ptr %j.addr, align 4
  %add27 = add nsw i32 %37, 1
  %38 = load i32, ptr %k.addr, align 4
  %add28 = add nsw i32 %38, 1
  %call29 = call i32 @get_absolute_num(i32 noundef %add26, i32 noundef %add27, i32 noundef %add28)
  %39 = load i32, ptr %i.addr, align 4
  %add30 = add nsw i32 %39, 1
  %40 = load i32, ptr %j.addr, align 4
  %add31 = add nsw i32 %40, 1
  %41 = load i32, ptr %k.addr, align 4
  %call32 = call i32 @get_absolute_num(i32 noundef %add30, i32 noundef %add31, i32 noundef %41)
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.5, i32 noundef %add21, i32 noundef %call24, i32 noundef %call25, i32 noundef %call29, i32 noundef %call32) #4
  %42 = load ptr, ptr %file.addr, align 8
  %43 = load i32, ptr %num.addr, align 4
  %add34 = add nsw i32 %43, 3
  %44 = load i32, ptr %i.addr, align 4
  %45 = load i32, ptr %j.addr, align 4
  %46 = load i32, ptr %k.addr, align 4
  %call35 = call i32 @get_absolute_num(i32 noundef %44, i32 noundef %45, i32 noundef %46)
  %47 = load i32, ptr %i.addr, align 4
  %add36 = add nsw i32 %47, 1
  %48 = load i32, ptr %j.addr, align 4
  %49 = load i32, ptr %k.addr, align 4
  %call37 = call i32 @get_absolute_num(i32 noundef %add36, i32 noundef %48, i32 noundef %49)
  %50 = load i32, ptr %i.addr, align 4
  %add38 = add nsw i32 %50, 1
  %51 = load i32, ptr %j.addr, align 4
  %add39 = add nsw i32 %51, 1
  %52 = load i32, ptr %k.addr, align 4
  %call40 = call i32 @get_absolute_num(i32 noundef %add38, i32 noundef %add39, i32 noundef %52)
  %53 = load i32, ptr %i.addr, align 4
  %add41 = add nsw i32 %53, 1
  %54 = load i32, ptr %j.addr, align 4
  %add42 = add nsw i32 %54, 1
  %55 = load i32, ptr %k.addr, align 4
  %add43 = add nsw i32 %55, 1
  %call44 = call i32 @get_absolute_num(i32 noundef %add41, i32 noundef %add42, i32 noundef %add43)
  %call45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.5, i32 noundef %add34, i32 noundef %call35, i32 noundef %call37, i32 noundef %call40, i32 noundef %call44) #4
  %56 = load ptr, ptr %file.addr, align 8
  %57 = load i32, ptr %num.addr, align 4
  %add46 = add nsw i32 %57, 4
  %58 = load i32, ptr %i.addr, align 4
  %59 = load i32, ptr %j.addr, align 4
  %60 = load i32, ptr %k.addr, align 4
  %add47 = add nsw i32 %60, 1
  %call48 = call i32 @get_absolute_num(i32 noundef %58, i32 noundef %59, i32 noundef %add47)
  %61 = load i32, ptr %i.addr, align 4
  %add49 = add nsw i32 %61, 1
  %62 = load i32, ptr %j.addr, align 4
  %63 = load i32, ptr %k.addr, align 4
  %call50 = call i32 @get_absolute_num(i32 noundef %add49, i32 noundef %62, i32 noundef %63)
  %64 = load i32, ptr %i.addr, align 4
  %add51 = add nsw i32 %64, 1
  %65 = load i32, ptr %j.addr, align 4
  %add52 = add nsw i32 %65, 1
  %66 = load i32, ptr %k.addr, align 4
  %add53 = add nsw i32 %66, 1
  %call54 = call i32 @get_absolute_num(i32 noundef %add51, i32 noundef %add52, i32 noundef %add53)
  %67 = load i32, ptr %i.addr, align 4
  %68 = load i32, ptr %j.addr, align 4
  %69 = load i32, ptr %k.addr, align 4
  %call55 = call i32 @get_absolute_num(i32 noundef %67, i32 noundef %68, i32 noundef %69)
  %call56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef @.str.5, i32 noundef %add46, i32 noundef %call48, i32 noundef %call50, i32 noundef %call54, i32 noundef %call55) #4
  %70 = load ptr, ptr %file.addr, align 8
  %71 = load i32, ptr %num.addr, align 4
  %add57 = add nsw i32 %71, 5
  %72 = load i32, ptr %i.addr, align 4
  %add58 = add nsw i32 %72, 1
  %73 = load i32, ptr %j.addr, align 4
  %74 = load i32, ptr %k.addr, align 4
  %add59 = add nsw i32 %74, 1
  %call60 = call i32 @get_absolute_num(i32 noundef %add58, i32 noundef %73, i32 noundef %add59)
  %75 = load i32, ptr %i.addr, align 4
  %add61 = add nsw i32 %75, 1
  %76 = load i32, ptr %j.addr, align 4
  %add62 = add nsw i32 %76, 1
  %77 = load i32, ptr %k.addr, align 4
  %add63 = add nsw i32 %77, 1
  %call64 = call i32 @get_absolute_num(i32 noundef %add61, i32 noundef %add62, i32 noundef %add63)
  %78 = load i32, ptr %i.addr, align 4
  %79 = load i32, ptr %j.addr, align 4
  %80 = load i32, ptr %k.addr, align 4
  %add65 = add nsw i32 %80, 1
  %call66 = call i32 @get_absolute_num(i32 noundef %78, i32 noundef %79, i32 noundef %add65)
  %81 = load i32, ptr %i.addr, align 4
  %add67 = add nsw i32 %81, 1
  %82 = load i32, ptr %j.addr, align 4
  %83 = load i32, ptr %k.addr, align 4
  %call68 = call i32 @get_absolute_num(i32 noundef %add67, i32 noundef %82, i32 noundef %83)
  %call69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef @.str.5, i32 noundef %add57, i32 noundef %call60, i32 noundef %call64, i32 noundef %call66, i32 noundef %call68) #4
  ret i32 0
}

declare i32 @fclose(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @get_absolute_num(i32 noundef %i, i32 noundef %j, i32 noundef %k) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  %0 = load i32, ptr %k.addr, align 4
  %mul = mul nsw i32 %0, 201
  %mul1 = mul nsw i32 %mul, 201
  %add = add nsw i32 1, %mul1
  %1 = load i32, ptr %j.addr, align 4
  %mul2 = mul nsw i32 %1, 201
  %add3 = add nsw i32 %add, %mul2
  %2 = load i32, ptr %i.addr, align 4
  %add4 = add nsw i32 %add3, %2
  ret i32 %add4
}

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
