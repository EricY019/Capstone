; ModuleID = './code/016-34754env2.c'
source_filename = "./code/016-34754env2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@environ = external global ptr, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %flag_i = alloca i32, align 4
  %var_list = alloca ptr, align 8
  %cmd = alloca ptr, align 8
  %cmd_args = alloca ptr, align 8
  %cmd_args_len = alloca i64, align 8
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %nvars = alloca i64, align 8
  %equals_pos = alloca i64, align 8
  %cmd_args_index = alloca i32, align 4
  %exit_status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %flag_i, align 4
  store ptr null, ptr %var_list, align 8
  store ptr null, ptr %cmd, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 4
  store i64 %1, ptr %__vla_expr0, align 8
  store i64 0, ptr %nvars, align 8
  store i32 0, ptr %cmd_args_index, align 4
  %3 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @print_env()
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %argc.addr, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 4
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %vla, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %vla, i32 noundef 0, i64 noundef %mul, i64 noundef %5) #8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %argv.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %cmp1 = icmp ne ptr %8, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %argv.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %9, i64 %idxprom3
  %11 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  %12 = load i32, ptr %flag_i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %flag_i, align 4
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %13 = load ptr, ptr %argv.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %13, i64 %idxprom10
  %15 = load ptr, ptr %arrayidx11, align 8
  %call12 = call ptr @strchr(ptr noundef %15, i32 noundef 61) #8
  %cmp13 = icmp ne ptr %call12, null
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end9
  %16 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %vla, i64 %idxprom16
  store i32 1, ptr %arrayidx17, align 4
  %17 = load i64, ptr %nvars, align 8
  %inc18 = add i64 %17, 1
  store i64 %inc18, ptr %nvars, align 8
  br label %for.inc

if.end19:                                         ; preds = %if.end9
  %18 = load ptr, ptr %cmd, align 8
  %cmp20 = icmp eq ptr %18, null
  br i1 %cmp20, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end19
  %19 = load ptr, ptr %argv.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %19, i64 %idxprom23
  %21 = load ptr, ptr %arrayidx24, align 8
  store ptr %21, ptr %cmd, align 8
  br label %for.inc

if.end25:                                         ; preds = %if.end19
  %22 = load ptr, ptr %cmd, align 8
  %cmp26 = icmp ne ptr %22, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  %23 = load i32, ptr %i, align 4
  store i32 %23, ptr %cmd_args_index, align 4
  br label %for.end

if.end29:                                         ; preds = %if.end25
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %if.then22, %if.then15, %if.then8
  %24 = load i32, ptr %i, align 4
  %inc30 = add nsw i32 %24, 1
  store i32 %inc30, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then28, %for.cond
  %25 = load i64, ptr %nvars, align 8
  %tobool = icmp ne i64 %25, 0
  br i1 %tobool, label %if.then31, label %if.end56

if.then31:                                        ; preds = %for.end
  %26 = load i64, ptr %nvars, align 8
  %mul32 = mul i64 %26, 8
  %call33 = call ptr @malloc(i64 noundef %mul32) #9
  store ptr %call33, ptr %var_list, align 8
  %27 = load ptr, ptr %var_list, align 8
  %cmp34 = icmp eq ptr %27, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then31
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef @.str.1) #10
  unreachable

if.end37:                                         ; preds = %if.then31
  store i32 1, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc53, %if.end37
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %argc.addr, align 4
  %cmp39 = icmp slt i32 %28, %29
  br i1 %cmp39, label %for.body41, label %for.end55

for.body41:                                       ; preds = %for.cond38
  %30 = load i32, ptr %i, align 4
  %idxprom42 = sext i32 %30 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %vla, i64 %idxprom42
  %31 = load i32, ptr %arrayidx43, align 4
  %cmp44 = icmp eq i32 %31, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %for.body41
  br label %for.inc53

if.end47:                                         ; preds = %for.body41
  %32 = load ptr, ptr %argv.addr, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %33 to i64
  %arrayidx49 = getelementptr inbounds ptr, ptr %32, i64 %idxprom48
  %34 = load ptr, ptr %arrayidx49, align 8
  %35 = load ptr, ptr %var_list, align 8
  %36 = load i32, ptr %j, align 4
  %inc50 = add nsw i32 %36, 1
  store i32 %inc50, ptr %j, align 4
  %idxprom51 = sext i32 %36 to i64
  %arrayidx52 = getelementptr inbounds ptr, ptr %35, i64 %idxprom51
  store ptr %34, ptr %arrayidx52, align 8
  br label %for.inc53

for.inc53:                                        ; preds = %if.end47, %if.then46
  %37 = load i32, ptr %i, align 4
  %inc54 = add nsw i32 %37, 1
  store i32 %inc54, ptr %i, align 4
  br label %for.cond38, !llvm.loop !7

for.end55:                                        ; preds = %for.cond38
  br label %if.end56

if.end56:                                         ; preds = %for.end55, %for.end
  %38 = load ptr, ptr %var_list, align 8
  %39 = load i64, ptr %nvars, align 8
  %40 = load i32, ptr %flag_i, align 4
  call void @set_environment(ptr noundef %38, i64 noundef %39, i32 noundef %40)
  %41 = load ptr, ptr %cmd, align 8
  %tobool57 = icmp ne ptr %41, null
  br i1 %tobool57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end56
  call void @print_env()
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end59:                                         ; preds = %if.end56
  %42 = load ptr, ptr %var_list, align 8
  call void @free(ptr noundef %42)
  %43 = load ptr, ptr %cmd, align 8
  %call60 = call i64 @strlen(ptr noundef %43) #8
  store i64 %call60, ptr %cmd_args_len, align 8
  %44 = load i32, ptr %cmd_args_index, align 4
  store i32 %44, ptr %i, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc72, %if.end59
  %45 = load i32, ptr %i, align 4
  %tobool62 = icmp ne i32 %45, 0
  br i1 %tobool62, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond61
  %46 = load ptr, ptr %argv.addr, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom63 = sext i32 %47 to i64
  %arrayidx64 = getelementptr inbounds ptr, ptr %46, i64 %idxprom63
  %48 = load ptr, ptr %arrayidx64, align 8
  %cmp65 = icmp ne ptr %48, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond61
  %49 = phi i1 [ false, %for.cond61 ], [ %cmp65, %land.rhs ]
  br i1 %49, label %for.body67, label %for.end74

for.body67:                                       ; preds = %land.end
  %50 = load i64, ptr %cmd_args_len, align 8
  %inc68 = add i64 %50, 1
  store i64 %inc68, ptr %cmd_args_len, align 8
  %51 = load ptr, ptr %argv.addr, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom69 = sext i32 %52 to i64
  %arrayidx70 = getelementptr inbounds ptr, ptr %51, i64 %idxprom69
  %53 = load ptr, ptr %arrayidx70, align 8
  %call71 = call i64 @strlen(ptr noundef %53) #8
  %54 = load i64, ptr %cmd_args_len, align 8
  %add = add i64 %54, %call71
  store i64 %add, ptr %cmd_args_len, align 8
  br label %for.inc72

for.inc72:                                        ; preds = %for.body67
  %55 = load i32, ptr %i, align 4
  %inc73 = add nsw i32 %55, 1
  store i32 %inc73, ptr %i, align 4
  br label %for.cond61, !llvm.loop !8

for.end74:                                        ; preds = %land.end
  %56 = load i64, ptr %cmd_args_len, align 8
  %inc75 = add i64 %56, 1
  store i64 %inc75, ptr %cmd_args_len, align 8
  %57 = load i64, ptr %cmd_args_len, align 8
  %call76 = call ptr @malloc(i64 noundef %57) #9
  store ptr %call76, ptr %cmd_args, align 8
  %cmp77 = icmp eq ptr %call76, null
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %for.end74
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef @.str.1) #10
  unreachable

if.end80:                                         ; preds = %for.end74
  %58 = load ptr, ptr %cmd_args, align 8
  %59 = load ptr, ptr %cmd, align 8
  %60 = load ptr, ptr %cmd, align 8
  %call81 = call i64 @strlen(ptr noundef %60) #8
  %add82 = add i64 %call81, 1
  %61 = load ptr, ptr %cmd_args, align 8
  %62 = call i64 @llvm.objectsize.i64.p0(ptr %61, i1 false, i1 true, i1 false)
  %call83 = call ptr @__strncpy_chk(ptr noundef %58, ptr noundef %59, i64 noundef %add82, i64 noundef %62) #8
  %63 = load i32, ptr %cmd_args_index, align 4
  store i32 %63, ptr %i, align 4
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc101, %if.end80
  %64 = load i32, ptr %i, align 4
  %tobool85 = icmp ne i32 %64, 0
  br i1 %tobool85, label %land.rhs86, label %land.end91

land.rhs86:                                       ; preds = %for.cond84
  %65 = load ptr, ptr %argv.addr, align 8
  %66 = load i32, ptr %i, align 4
  %idxprom87 = sext i32 %66 to i64
  %arrayidx88 = getelementptr inbounds ptr, ptr %65, i64 %idxprom87
  %67 = load ptr, ptr %arrayidx88, align 8
  %cmp89 = icmp ne ptr %67, null
  br label %land.end91

land.end91:                                       ; preds = %land.rhs86, %for.cond84
  %68 = phi i1 [ false, %for.cond84 ], [ %cmp89, %land.rhs86 ]
  br i1 %68, label %for.body92, label %for.end103

for.body92:                                       ; preds = %land.end91
  %69 = load ptr, ptr %cmd_args, align 8
  %70 = load ptr, ptr %cmd_args, align 8
  %71 = call i64 @llvm.objectsize.i64.p0(ptr %70, i1 false, i1 true, i1 false)
  %call93 = call ptr @__strncat_chk(ptr noundef %69, ptr noundef @.str.2, i64 noundef 1, i64 noundef %71) #8
  %72 = load ptr, ptr %cmd_args, align 8
  %73 = load ptr, ptr %argv.addr, align 8
  %74 = load i32, ptr %i, align 4
  %idxprom94 = sext i32 %74 to i64
  %arrayidx95 = getelementptr inbounds ptr, ptr %73, i64 %idxprom94
  %75 = load ptr, ptr %arrayidx95, align 8
  %76 = load ptr, ptr %argv.addr, align 8
  %77 = load i32, ptr %i, align 4
  %idxprom96 = sext i32 %77 to i64
  %arrayidx97 = getelementptr inbounds ptr, ptr %76, i64 %idxprom96
  %78 = load ptr, ptr %arrayidx97, align 8
  %call98 = call i64 @strlen(ptr noundef %78) #8
  %add99 = add i64 %call98, 1
  %79 = load ptr, ptr %cmd_args, align 8
  %80 = call i64 @llvm.objectsize.i64.p0(ptr %79, i1 false, i1 true, i1 false)
  %call100 = call ptr @__strncat_chk(ptr noundef %72, ptr noundef %75, i64 noundef %add99, i64 noundef %80) #8
  br label %for.inc101

for.inc101:                                       ; preds = %for.body92
  %81 = load i32, ptr %i, align 4
  %inc102 = add nsw i32 %81, 1
  store i32 %inc102, ptr %i, align 4
  br label %for.cond84, !llvm.loop !9

for.end103:                                       ; preds = %land.end91
  %82 = load ptr, ptr %cmd_args, align 8
  %call104 = call i32 @run_cmd(ptr noundef %82)
  store i32 %call104, ptr %exit_status, align 4
  %83 = load ptr, ptr %cmd_args, align 8
  call void @free(ptr noundef %83)
  %84 = load i32, ptr %exit_status, align 4
  store i32 %84, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end103, %if.then58, %if.then
  %85 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %85)
  %86 = load i32, ptr %retval, align 4
  ret i32 %86
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @print_env() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr @environ, align 8
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr @environ, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 %idxprom1
  %5 = load ptr, ptr %arrayidx2, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strchr(ptr noundef, i32 noundef) #2

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #4

; Function Attrs: cold noreturn
declare void @err(i32 noundef, ptr noundef, ...) #5

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @set_environment(ptr noundef %env_list, i64 noundef %env_list_len, i32 noundef %replace) #0 {
entry:
  %env_list.addr = alloca ptr, align 8
  %env_list_len.addr = alloca i64, align 8
  %replace.addr = alloca i32, align 4
  %clearenv = alloca [1 x ptr], align 8
  %i = alloca i32, align 4
  store ptr %env_list, ptr %env_list.addr, align 8
  store i64 %env_list_len, ptr %env_list_len.addr, align 8
  store i32 %replace, ptr %replace.addr, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %clearenv, i8 0, i64 8, i1 false)
  %0 = load i32, ptr %replace.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x ptr], ptr %clearenv, i64 0, i64 0
  store ptr %arraydecay, ptr @environ, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4
  %conv = sext i32 %1 to i64
  %2 = load i64, ptr %env_list_len.addr, align 8
  %cmp = icmp ult i64 %conv, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %env_list.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @"\01_putenv"(ptr noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @free(ptr noundef) #6

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind
declare ptr @__strncat_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @run_cmd(ptr noundef %cmd) #0 {
entry:
  %cmd.addr = alloca ptr, align 8
  store ptr %cmd, ptr %cmd.addr, align 8
  %0 = load ptr, ptr %cmd.addr, align 8
  %call = call i32 @"\01_system"(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

declare i32 @printf(ptr noundef, ...) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare i32 @"\01_putenv"(ptr noundef) #6

declare i32 @"\01_system"(ptr noundef) #6

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { allocsize(0) }
attributes #10 = { cold noreturn }

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
