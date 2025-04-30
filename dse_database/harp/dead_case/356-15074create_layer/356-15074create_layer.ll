; ModuleID = 'code/356-15074create_layer.c'
source_filename = "code/356-15074create_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@__const.main.file_name = private unnamed_addr constant [10 x i8] c"layer.msh\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"$MeshFormat\0A2 0 8\0A$EndMeshFormat\0A$Nodes\0A%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"$EndNodes\0A$Elements\0A%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"$EndElements\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%d 4 3 0 1 0 %d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %file_name = alloca [10 x i8], align 1
  %cur_num = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %tetr_num = alloca i32, align 4
  %k18 = alloca i32, align 4
  %j22 = alloca i32, align 4
  %i26 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [10 x i8]* %file_name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.main.file_name, i32 0, i32 0), i64 10, i1 false)
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %file_name, i64 0, i64 0
  %call = call %struct._IO_FILE* @fopen(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 404010)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %2 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %2, 10
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc11, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %3, 201
  br i1 %cmp3, label %for.body4, label %for.end13

for.body4:                                        ; preds = %for.cond2
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %4, 201
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %k, align 4
  %call8 = call i32 @get_num_in_zone(i32 %5, i32 %6, i32 %7)
  store i32 %call8, i32* %cur_num, align 4
  %8 = load i32, i32* %cur_num, align 4
  %cmp9 = icmp sge i32 %8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %10 = load i32, i32* %cur_num, align 4
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %k, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %10, i32 %11, i32 %12, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond5, !llvm.loop !4

for.end:                                          ; preds = %for.cond5
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %15 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %15, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.cond2, !llvm.loop !6

for.end13:                                        ; preds = %for.cond2
  br label %for.inc14

for.inc14:                                        ; preds = %for.end13
  %16 = load i32, i32* %k, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %k, align 4
  br label %for.cond, !llvm.loop !7

for.end16:                                        ; preds = %for.cond
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 2160000)
  store i32 1, i32* %tetr_num, align 4
  store i32 0, i32* %k18, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc37, %for.end16
  %18 = load i32, i32* %k18, align 4
  %cmp20 = icmp slt i32 %18, 9
  br i1 %cmp20, label %for.body21, label %for.end39

for.body21:                                       ; preds = %for.cond19
  store i32 0, i32* %j22, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc34, %for.body21
  %19 = load i32, i32* %j22, align 4
  %cmp24 = icmp slt i32 %19, 200
  br i1 %cmp24, label %for.body25, label %for.end36

for.body25:                                       ; preds = %for.cond23
  store i32 0, i32* %i26, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc31, %for.body25
  %20 = load i32, i32* %i26, align 4
  %cmp28 = icmp slt i32 %20, 200
  br i1 %cmp28, label %for.body29, label %for.end33

for.body29:                                       ; preds = %for.cond27
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %22 = load i32, i32* %tetr_num, align 4
  %23 = load i32, i32* %i26, align 4
  %24 = load i32, i32* %j22, align 4
  %25 = load i32, i32* %k18, align 4
  %call30 = call i32 @write_tetrs(%struct._IO_FILE* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %26 = load i32, i32* %tetr_num, align 4
  %add = add nsw i32 %26, 6
  store i32 %add, i32* %tetr_num, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.body29
  %27 = load i32, i32* %i26, align 4
  %inc32 = add nsw i32 %27, 1
  store i32 %inc32, i32* %i26, align 4
  br label %for.cond27, !llvm.loop !8

for.end33:                                        ; preds = %for.cond27
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %28 = load i32, i32* %j22, align 4
  %inc35 = add nsw i32 %28, 1
  store i32 %inc35, i32* %j22, align 4
  br label %for.cond23, !llvm.loop !9

for.end36:                                        ; preds = %for.cond23
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %29 = load i32, i32* %k18, align 4
  %inc38 = add nsw i32 %29, 1
  store i32 %inc38, i32* %k18, align 4
  br label %for.cond19, !llvm.loop !10

for.end39:                                        ; preds = %for.cond19
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call41 = call i32 @fclose(%struct._IO_FILE* %31)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_num_in_zone(i32 %i, i32 %j, i32 %k) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %mul = mul nsw i32 %0, 201
  %mul1 = mul nsw i32 %mul, 201
  %1 = load i32, i32* %j.addr, align 4
  %mul2 = mul nsw i32 %1, 201
  %add = add nsw i32 %mul1, %mul2
  %2 = load i32, i32* %i.addr, align 4
  %add3 = add nsw i32 %add, %2
  %add4 = add nsw i32 %add3, 1
  ret i32 %add4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_tetrs(%struct._IO_FILE* %file, i32 %num, i32 %i, i32 %j, i32 %k) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %num.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %1 = load i32, i32* %num.addr, align 4
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %j.addr, align 4
  %4 = load i32, i32* %k.addr, align 4
  %call = call i32 @get_absolute_num(i32 %2, i32 %3, i32 %4)
  %5 = load i32, i32* %i.addr, align 4
  %6 = load i32, i32* %j.addr, align 4
  %add = add nsw i32 %6, 1
  %7 = load i32, i32* %k.addr, align 4
  %add1 = add nsw i32 %7, 1
  %call2 = call i32 @get_absolute_num(i32 %5, i32 %add, i32 %add1)
  %8 = load i32, i32* %i.addr, align 4
  %9 = load i32, i32* %j.addr, align 4
  %add3 = add nsw i32 %9, 1
  %10 = load i32, i32* %k.addr, align 4
  %call4 = call i32 @get_absolute_num(i32 %8, i32 %add3, i32 %10)
  %11 = load i32, i32* %i.addr, align 4
  %add5 = add nsw i32 %11, 1
  %12 = load i32, i32* %j.addr, align 4
  %add6 = add nsw i32 %12, 1
  %13 = load i32, i32* %k.addr, align 4
  %call7 = call i32 @get_absolute_num(i32 %add5, i32 %add6, i32 %13)
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %1, i32 %call, i32 %call2, i32 %call4, i32 %call7)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %15 = load i32, i32* %num.addr, align 4
  %add9 = add nsw i32 %15, 1
  %16 = load i32, i32* %i.addr, align 4
  %17 = load i32, i32* %j.addr, align 4
  %18 = load i32, i32* %k.addr, align 4
  %add10 = add nsw i32 %18, 1
  %call11 = call i32 @get_absolute_num(i32 %16, i32 %17, i32 %add10)
  %19 = load i32, i32* %i.addr, align 4
  %20 = load i32, i32* %j.addr, align 4
  %add12 = add nsw i32 %20, 1
  %21 = load i32, i32* %k.addr, align 4
  %add13 = add nsw i32 %21, 1
  %call14 = call i32 @get_absolute_num(i32 %19, i32 %add12, i32 %add13)
  %22 = load i32, i32* %i.addr, align 4
  %add15 = add nsw i32 %22, 1
  %23 = load i32, i32* %j.addr, align 4
  %add16 = add nsw i32 %23, 1
  %24 = load i32, i32* %k.addr, align 4
  %add17 = add nsw i32 %24, 1
  %call18 = call i32 @get_absolute_num(i32 %add15, i32 %add16, i32 %add17)
  %25 = load i32, i32* %i.addr, align 4
  %26 = load i32, i32* %j.addr, align 4
  %27 = load i32, i32* %k.addr, align 4
  %call19 = call i32 @get_absolute_num(i32 %25, i32 %26, i32 %27)
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %add9, i32 %call11, i32 %call14, i32 %call18, i32 %call19)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %29 = load i32, i32* %num.addr, align 4
  %add21 = add nsw i32 %29, 2
  %30 = load i32, i32* %i.addr, align 4
  %31 = load i32, i32* %j.addr, align 4
  %add22 = add nsw i32 %31, 1
  %32 = load i32, i32* %k.addr, align 4
  %add23 = add nsw i32 %32, 1
  %call24 = call i32 @get_absolute_num(i32 %30, i32 %add22, i32 %add23)
  %33 = load i32, i32* %i.addr, align 4
  %34 = load i32, i32* %j.addr, align 4
  %35 = load i32, i32* %k.addr, align 4
  %call25 = call i32 @get_absolute_num(i32 %33, i32 %34, i32 %35)
  %36 = load i32, i32* %i.addr, align 4
  %add26 = add nsw i32 %36, 1
  %37 = load i32, i32* %j.addr, align 4
  %add27 = add nsw i32 %37, 1
  %38 = load i32, i32* %k.addr, align 4
  %add28 = add nsw i32 %38, 1
  %call29 = call i32 @get_absolute_num(i32 %add26, i32 %add27, i32 %add28)
  %39 = load i32, i32* %i.addr, align 4
  %add30 = add nsw i32 %39, 1
  %40 = load i32, i32* %j.addr, align 4
  %add31 = add nsw i32 %40, 1
  %41 = load i32, i32* %k.addr, align 4
  %call32 = call i32 @get_absolute_num(i32 %add30, i32 %add31, i32 %41)
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %add21, i32 %call24, i32 %call25, i32 %call29, i32 %call32)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %43 = load i32, i32* %num.addr, align 4
  %add34 = add nsw i32 %43, 3
  %44 = load i32, i32* %i.addr, align 4
  %45 = load i32, i32* %j.addr, align 4
  %46 = load i32, i32* %k.addr, align 4
  %call35 = call i32 @get_absolute_num(i32 %44, i32 %45, i32 %46)
  %47 = load i32, i32* %i.addr, align 4
  %add36 = add nsw i32 %47, 1
  %48 = load i32, i32* %j.addr, align 4
  %49 = load i32, i32* %k.addr, align 4
  %call37 = call i32 @get_absolute_num(i32 %add36, i32 %48, i32 %49)
  %50 = load i32, i32* %i.addr, align 4
  %add38 = add nsw i32 %50, 1
  %51 = load i32, i32* %j.addr, align 4
  %add39 = add nsw i32 %51, 1
  %52 = load i32, i32* %k.addr, align 4
  %call40 = call i32 @get_absolute_num(i32 %add38, i32 %add39, i32 %52)
  %53 = load i32, i32* %i.addr, align 4
  %add41 = add nsw i32 %53, 1
  %54 = load i32, i32* %j.addr, align 4
  %add42 = add nsw i32 %54, 1
  %55 = load i32, i32* %k.addr, align 4
  %add43 = add nsw i32 %55, 1
  %call44 = call i32 @get_absolute_num(i32 %add41, i32 %add42, i32 %add43)
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %add34, i32 %call35, i32 %call37, i32 %call40, i32 %call44)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %57 = load i32, i32* %num.addr, align 4
  %add46 = add nsw i32 %57, 4
  %58 = load i32, i32* %i.addr, align 4
  %59 = load i32, i32* %j.addr, align 4
  %60 = load i32, i32* %k.addr, align 4
  %add47 = add nsw i32 %60, 1
  %call48 = call i32 @get_absolute_num(i32 %58, i32 %59, i32 %add47)
  %61 = load i32, i32* %i.addr, align 4
  %add49 = add nsw i32 %61, 1
  %62 = load i32, i32* %j.addr, align 4
  %63 = load i32, i32* %k.addr, align 4
  %call50 = call i32 @get_absolute_num(i32 %add49, i32 %62, i32 %63)
  %64 = load i32, i32* %i.addr, align 4
  %add51 = add nsw i32 %64, 1
  %65 = load i32, i32* %j.addr, align 4
  %add52 = add nsw i32 %65, 1
  %66 = load i32, i32* %k.addr, align 4
  %add53 = add nsw i32 %66, 1
  %call54 = call i32 @get_absolute_num(i32 %add51, i32 %add52, i32 %add53)
  %67 = load i32, i32* %i.addr, align 4
  %68 = load i32, i32* %j.addr, align 4
  %69 = load i32, i32* %k.addr, align 4
  %call55 = call i32 @get_absolute_num(i32 %67, i32 %68, i32 %69)
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %add46, i32 %call48, i32 %call50, i32 %call54, i32 %call55)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %71 = load i32, i32* %num.addr, align 4
  %add57 = add nsw i32 %71, 5
  %72 = load i32, i32* %i.addr, align 4
  %add58 = add nsw i32 %72, 1
  %73 = load i32, i32* %j.addr, align 4
  %74 = load i32, i32* %k.addr, align 4
  %add59 = add nsw i32 %74, 1
  %call60 = call i32 @get_absolute_num(i32 %add58, i32 %73, i32 %add59)
  %75 = load i32, i32* %i.addr, align 4
  %add61 = add nsw i32 %75, 1
  %76 = load i32, i32* %j.addr, align 4
  %add62 = add nsw i32 %76, 1
  %77 = load i32, i32* %k.addr, align 4
  %add63 = add nsw i32 %77, 1
  %call64 = call i32 @get_absolute_num(i32 %add61, i32 %add62, i32 %add63)
  %78 = load i32, i32* %i.addr, align 4
  %79 = load i32, i32* %j.addr, align 4
  %80 = load i32, i32* %k.addr, align 4
  %add65 = add nsw i32 %80, 1
  %call66 = call i32 @get_absolute_num(i32 %78, i32 %79, i32 %add65)
  %81 = load i32, i32* %i.addr, align 4
  %add67 = add nsw i32 %81, 1
  %82 = load i32, i32* %j.addr, align 4
  %83 = load i32, i32* %k.addr, align 4
  %call68 = call i32 @get_absolute_num(i32 %add67, i32 %82, i32 %83)
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %add57, i32 %call60, i32 %call64, i32 %call66, i32 %call68)
  ret i32 0
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_absolute_num(i32 %i, i32 %j, i32 %k) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %mul = mul nsw i32 %0, 201
  %mul1 = mul nsw i32 %mul, 201
  %add = add nsw i32 1, %mul1
  %1 = load i32, i32* %j.addr, align 4
  %mul2 = mul nsw i32 %1, 201
  %add3 = add nsw i32 %add, %mul2
  %2 = load i32, i32* %i.addr, align 4
  %add4 = add nsw i32 %add3, %2
  ret i32 %add4
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
