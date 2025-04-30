; ModuleID = 'code/016-34754env2.c'
source_filename = "code/016-34754env2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@environ = external dso_local global i8**, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %flag_i = alloca i32, align 4
  %var_list = alloca i8**, align 8
  %cmd = alloca i8*, align 8
  %cmd_args = alloca i8*, align 8
  %cmd_args_len = alloca i64, align 8
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %nvars = alloca i64, align 8
  %equals_pos = alloca i64, align 8
  %cmd_args_index = alloca i32, align 4
  %exit_status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %flag_i, align 4
  store i8** null, i8*** %var_list, align 8
  store i8* null, i8** %cmd, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i64 0, i64* %nvars, align 8
  store i32 0, i32* %cmd_args_index, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @print_env()
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = bitcast i32* %vla to i8*
  %5 = load i32, i32* %argc.addr, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 %mul, i1 false)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i8**, i8*** %argv.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %cmp1 = icmp ne i8* %8, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8**, i8*** %argv.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds i8*, i8** %9, i64 %idxprom3
  %11 = load i8*, i8** %arrayidx4, align 8
  %call = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #7
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  %12 = load i32, i32* %flag_i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %flag_i, align 4
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %13 = load i8**, i8*** %argv.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i8*, i8** %13, i64 %idxprom9
  %15 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i8* @strchr(i8* %15, i32 61) #7
  %cmp12 = icmp ne i8* %call11, null
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end8
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %vla, i64 %idxprom15
  store i32 1, i32* %arrayidx16, align 4
  %17 = load i64, i64* %nvars, align 8
  %inc17 = add i64 %17, 1
  store i64 %inc17, i64* %nvars, align 8
  br label %for.inc

if.end18:                                         ; preds = %if.end8
  %18 = load i8*, i8** %cmd, align 8
  %cmp19 = icmp eq i8* %18, null
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end18
  %19 = load i8**, i8*** %argv.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds i8*, i8** %19, i64 %idxprom22
  %21 = load i8*, i8** %arrayidx23, align 8
  store i8* %21, i8** %cmd, align 8
  br label %for.inc

if.end24:                                         ; preds = %if.end18
  %22 = load i8*, i8** %cmd, align 8
  %cmp25 = icmp ne i8* %22, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  %23 = load i32, i32* %i, align 4
  store i32 %23, i32* %cmd_args_index, align 4
  br label %for.end

if.end28:                                         ; preds = %if.end24
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %if.then21, %if.then14, %if.then7
  %24 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %24, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then27, %for.cond
  %25 = load i64, i64* %nvars, align 8
  %tobool = icmp ne i64 %25, 0
  br i1 %tobool, label %if.then30, label %if.end55

if.then30:                                        ; preds = %for.end
  %26 = load i64, i64* %nvars, align 8
  %mul31 = mul i64 %26, 8
  %call32 = call noalias align 16 i8* @malloc(i64 %mul31) #8
  %27 = bitcast i8* %call32 to i8**
  store i8** %27, i8*** %var_list, align 8
  %28 = load i8**, i8*** %var_list, align 8
  %cmp33 = icmp eq i8** %28, null
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then30
  call void (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #9
  unreachable

if.end36:                                         ; preds = %if.then30
  store i32 1, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc52, %if.end36
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %argc.addr, align 4
  %cmp38 = icmp slt i32 %29, %30
  br i1 %cmp38, label %for.body40, label %for.end54

for.body40:                                       ; preds = %for.cond37
  %31 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %vla, i64 %idxprom41
  %32 = load i32, i32* %arrayidx42, align 4
  %cmp43 = icmp eq i32 %32, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %for.body40
  br label %for.inc52

if.end46:                                         ; preds = %for.body40
  %33 = load i8**, i8*** %argv.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %34 to i64
  %arrayidx48 = getelementptr inbounds i8*, i8** %33, i64 %idxprom47
  %35 = load i8*, i8** %arrayidx48, align 8
  %36 = load i8**, i8*** %var_list, align 8
  %37 = load i32, i32* %j, align 4
  %inc49 = add nsw i32 %37, 1
  store i32 %inc49, i32* %j, align 4
  %idxprom50 = sext i32 %37 to i64
  %arrayidx51 = getelementptr inbounds i8*, i8** %36, i64 %idxprom50
  store i8* %35, i8** %arrayidx51, align 8
  br label %for.inc52

for.inc52:                                        ; preds = %if.end46, %if.then45
  %38 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %38, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond37, !llvm.loop !6

for.end54:                                        ; preds = %for.cond37
  br label %if.end55

if.end55:                                         ; preds = %for.end54, %for.end
  %39 = load i8**, i8*** %var_list, align 8
  %40 = load i64, i64* %nvars, align 8
  %41 = load i32, i32* %flag_i, align 4
  call void @set_environment(i8** %39, i64 %40, i32 %41)
  %42 = load i8*, i8** %cmd, align 8
  %tobool56 = icmp ne i8* %42, null
  br i1 %tobool56, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end55
  call void @print_env()
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end58:                                         ; preds = %if.end55
  %43 = load i8**, i8*** %var_list, align 8
  %44 = bitcast i8** %43 to i8*
  call void @free(i8* %44) #8
  %45 = load i8*, i8** %cmd, align 8
  %call59 = call i64 @strlen(i8* %45) #7
  store i64 %call59, i64* %cmd_args_len, align 8
  %46 = load i32, i32* %cmd_args_index, align 4
  store i32 %46, i32* %i, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc71, %if.end58
  %47 = load i32, i32* %i, align 4
  %tobool61 = icmp ne i32 %47, 0
  br i1 %tobool61, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond60
  %48 = load i8**, i8*** %argv.addr, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %49 to i64
  %arrayidx63 = getelementptr inbounds i8*, i8** %48, i64 %idxprom62
  %50 = load i8*, i8** %arrayidx63, align 8
  %cmp64 = icmp ne i8* %50, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond60
  %51 = phi i1 [ false, %for.cond60 ], [ %cmp64, %land.rhs ]
  br i1 %51, label %for.body66, label %for.end73

for.body66:                                       ; preds = %land.end
  %52 = load i64, i64* %cmd_args_len, align 8
  %inc67 = add i64 %52, 1
  store i64 %inc67, i64* %cmd_args_len, align 8
  %53 = load i8**, i8*** %argv.addr, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %54 to i64
  %arrayidx69 = getelementptr inbounds i8*, i8** %53, i64 %idxprom68
  %55 = load i8*, i8** %arrayidx69, align 8
  %call70 = call i64 @strlen(i8* %55) #7
  %56 = load i64, i64* %cmd_args_len, align 8
  %add = add i64 %56, %call70
  store i64 %add, i64* %cmd_args_len, align 8
  br label %for.inc71

for.inc71:                                        ; preds = %for.body66
  %57 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %57, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond60, !llvm.loop !7

for.end73:                                        ; preds = %land.end
  %58 = load i64, i64* %cmd_args_len, align 8
  %inc74 = add i64 %58, 1
  store i64 %inc74, i64* %cmd_args_len, align 8
  %59 = load i64, i64* %cmd_args_len, align 8
  %call75 = call noalias align 16 i8* @malloc(i64 %59) #8
  store i8* %call75, i8** %cmd_args, align 8
  %cmp76 = icmp eq i8* %call75, null
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %for.end73
  call void (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #9
  unreachable

if.end79:                                         ; preds = %for.end73
  %60 = load i8*, i8** %cmd_args, align 8
  %61 = load i8*, i8** %cmd, align 8
  %62 = load i8*, i8** %cmd, align 8
  %call80 = call i64 @strlen(i8* %62) #7
  %add81 = add i64 %call80, 1
  %call82 = call i8* @strncpy(i8* %60, i8* %61, i64 %add81) #8
  %63 = load i32, i32* %cmd_args_index, align 4
  store i32 %63, i32* %i, align 4
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc100, %if.end79
  %64 = load i32, i32* %i, align 4
  %tobool84 = icmp ne i32 %64, 0
  br i1 %tobool84, label %land.rhs85, label %land.end90

land.rhs85:                                       ; preds = %for.cond83
  %65 = load i8**, i8*** %argv.addr, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %66 to i64
  %arrayidx87 = getelementptr inbounds i8*, i8** %65, i64 %idxprom86
  %67 = load i8*, i8** %arrayidx87, align 8
  %cmp88 = icmp ne i8* %67, null
  br label %land.end90

land.end90:                                       ; preds = %land.rhs85, %for.cond83
  %68 = phi i1 [ false, %for.cond83 ], [ %cmp88, %land.rhs85 ]
  br i1 %68, label %for.body91, label %for.end102

for.body91:                                       ; preds = %land.end90
  %69 = load i8*, i8** %cmd_args, align 8
  %call92 = call i8* @strncat(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1) #8
  %70 = load i8*, i8** %cmd_args, align 8
  %71 = load i8**, i8*** %argv.addr, align 8
  %72 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %72 to i64
  %arrayidx94 = getelementptr inbounds i8*, i8** %71, i64 %idxprom93
  %73 = load i8*, i8** %arrayidx94, align 8
  %74 = load i8**, i8*** %argv.addr, align 8
  %75 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %75 to i64
  %arrayidx96 = getelementptr inbounds i8*, i8** %74, i64 %idxprom95
  %76 = load i8*, i8** %arrayidx96, align 8
  %call97 = call i64 @strlen(i8* %76) #7
  %add98 = add i64 %call97, 1
  %call99 = call i8* @strncat(i8* %70, i8* %73, i64 %add98) #8
  br label %for.inc100

for.inc100:                                       ; preds = %for.body91
  %77 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %77, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond83, !llvm.loop !8

for.end102:                                       ; preds = %land.end90
  %78 = load i8*, i8** %cmd_args, align 8
  %call103 = call i32 @run_cmd(i8* %78)
  store i32 %call103, i32* %exit_status, align 4
  %79 = load i8*, i8** %cmd_args, align 8
  call void @free(i8* %79) #8
  %80 = load i32, i32* %exit_status, align 4
  store i32 %80, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end102, %if.then57, %if.then
  %81 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %retval, align 4
  ret i32 %82
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_env() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** @environ, align 8
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** @environ, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i8*, i8** %3, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx2, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #4

; Function Attrs: noreturn
declare dso_local void @err(i32, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_environment(i8** %env_list, i64 %env_list_len, i32 %replace) #0 {
entry:
  %env_list.addr = alloca i8**, align 8
  %env_list_len.addr = alloca i64, align 8
  %replace.addr = alloca i32, align 4
  %clearenv = alloca [1 x i8*], align 8
  %i = alloca i32, align 4
  store i8** %env_list, i8*** %env_list.addr, align 8
  store i64 %env_list_len, i64* %env_list_len.addr, align 8
  store i32 %replace, i32* %replace.addr, align 4
  %0 = bitcast [1 x i8*]* %clearenv to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false)
  %1 = load i32, i32* %replace.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x i8*], [1 x i8*]* %clearenv, i64 0, i64 0
  store i8** %arraydecay, i8*** @environ, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %3 = load i64, i64* %env_list_len.addr, align 8
  %cmp = icmp ult i64 %conv, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %env_list.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @putenv(i8* %6) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_cmd(i8* %cmd) #0 {
entry:
  %cmd.addr = alloca i8*, align 8
  store i8* %cmd, i8** %cmd.addr, align 8
  %0 = load i8*, i8** %cmd.addr, align 8
  %call = call i32 @system(i8* %0)
  ret i32 %call
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: nounwind
declare dso_local i32 @putenv(i8*) #4

declare dso_local i32 @system(i8*) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

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
