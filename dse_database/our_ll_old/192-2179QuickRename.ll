; ModuleID = './code/192-2179QuickRename.c'
source_filename = "./code/192-2179QuickRename.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.dirent = type { i64, i64, i16, i16, i8, [1024 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"./\00", align 1
@__const.main.new_name = private unnamed_addr constant [11 x i8] c"MUS001.xwm\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"log.txt\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ERROR: Can not write to log.txt\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".xwm\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Renamed %s to %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\0A%d files ready\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define signext i8 @incrementName(ptr noundef %new_name, ptr noundef %file_count) #0 {
entry:
  %retval = alloca i8, align 1
  %new_name.addr = alloca ptr, align 8
  %file_count.addr = alloca ptr, align 8
  store ptr %new_name, ptr %new_name.addr, align 8
  store ptr %file_count, ptr %file_count.addr, align 8
  %0 = load ptr, ptr %file_count.addr, align 8
  %1 = load i32, ptr %0, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %0, align 4
  %2 = load ptr, ptr %file_count.addr, align 8
  %3 = load i32, ptr %2, align 4
  %cmp = icmp sgt i32 %3, 111
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %file_count.addr, align 8
  %5 = load i32, ptr %4, align 4
  %rem = srem i32 %5, 100
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %new_name.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx, align 1
  %inc3 = add i8 %7, 1
  store i8 %inc3, ptr %arrayidx, align 1
  %8 = load ptr, ptr %new_name.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %8, i64 4
  store i8 48, ptr %arrayidx4, align 1
  %9 = load ptr, ptr %new_name.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 5
  store i8 48, ptr %arrayidx5, align 1
  br label %if.end16

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %file_count.addr, align 8
  %11 = load i32, ptr %10, align 4
  %rem6 = srem i32 %11, 10
  %cmp7 = icmp eq i32 %rem6, 0
  br i1 %cmp7, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.else
  %12 = load ptr, ptr %new_name.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %12, i64 4
  %13 = load i8, ptr %arrayidx9, align 1
  %inc10 = add i8 %13, 1
  store i8 %inc10, ptr %arrayidx9, align 1
  %14 = load ptr, ptr %new_name.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %14, i64 5
  store i8 48, ptr %arrayidx11, align 1
  br label %if.end15

if.else12:                                        ; preds = %if.else
  %15 = load ptr, ptr %new_name.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %15, i64 5
  %16 = load i8, ptr %arrayidx13, align 1
  %inc14 = add i8 %16, 1
  store i8 %inc14, ptr %arrayidx13, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.else12, %if.then8
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then2
  store i8 1, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end16, %if.then
  %17 = load i8, ptr %retval, align 1
  ret i8 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define signext i8 @getNameVal(ptr noundef %name) #0 {
entry:
  %retval = alloca i8, align 1
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #4
  %cmp = icmp eq i64 %call, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 77
  br i1 %cmp1, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %name.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv5, 85
  br i1 %cmp6, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true3
  %5 = load ptr, ptr %name.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %5, i64 2
  %6 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %6 to i32
  %cmp11 = icmp eq i32 %conv10, 83
  br i1 %cmp11, label %land.lhs.true13, label %if.end

land.lhs.true13:                                  ; preds = %land.lhs.true8
  %7 = load ptr, ptr %name.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %7, i64 3
  %8 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %8 to i32
  %cmp16 = icmp sge i32 %conv15, 48
  br i1 %cmp16, label %land.lhs.true18, label %if.end

land.lhs.true18:                                  ; preds = %land.lhs.true13
  %9 = load ptr, ptr %name.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %9, i64 3
  %10 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %10 to i32
  %cmp21 = icmp sle i32 %conv20, 57
  br i1 %cmp21, label %land.lhs.true23, label %if.end

land.lhs.true23:                                  ; preds = %land.lhs.true18
  %11 = load ptr, ptr %name.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %11, i64 4
  %12 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %12 to i32
  %cmp26 = icmp sge i32 %conv25, 48
  br i1 %cmp26, label %land.lhs.true28, label %if.end

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %13 = load ptr, ptr %name.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %13, i64 4
  %14 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %14 to i32
  %cmp31 = icmp sle i32 %conv30, 57
  br i1 %cmp31, label %land.lhs.true33, label %if.end

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %15 = load ptr, ptr %name.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %15, i64 5
  %16 = load i8, ptr %arrayidx34, align 1
  %conv35 = sext i8 %16 to i32
  %cmp36 = icmp sge i32 %conv35, 48
  br i1 %cmp36, label %land.lhs.true38, label %if.end

land.lhs.true38:                                  ; preds = %land.lhs.true33
  %17 = load ptr, ptr %name.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %17, i64 5
  %18 = load i8, ptr %arrayidx39, align 1
  %conv40 = sext i8 %18 to i32
  %cmp41 = icmp sle i32 %conv40, 57
  br i1 %cmp41, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true38
  %19 = load ptr, ptr %name.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %19, i64 3
  %20 = load i8, ptr %arrayidx43, align 1
  %conv44 = sext i8 %20 to i32
  %sub = sub nsw i32 %conv44, 48
  %mul = mul nsw i32 %sub, 100
  %21 = load ptr, ptr %name.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %21, i64 4
  %22 = load i8, ptr %arrayidx45, align 1
  %conv46 = sext i8 %22 to i32
  %sub47 = sub nsw i32 %conv46, 48
  %mul48 = mul nsw i32 %sub47, 10
  %add = add nsw i32 %mul, %mul48
  %23 = load ptr, ptr %name.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %23, i64 5
  %24 = load i8, ptr %arrayidx49, align 1
  %conv50 = sext i8 %24 to i32
  %sub51 = sub nsw i32 %conv50, 48
  %add52 = add nsw i32 %add, %sub51
  %conv53 = trunc i32 %add52 to i8
  store i8 %conv53, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true38, %land.lhs.true33, %land.lhs.true28, %land.lhs.true23, %land.lhs.true18, %land.lhs.true13, %land.lhs.true8, %land.lhs.true3, %land.lhs.true, %entry
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %25 = load i8, ptr %retval, align 1
  ret i8 %25
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %dir_ptr = alloca ptr, align 8
  %entry_ptr = alloca ptr, align 8
  %cur_file_type = alloca ptr, align 8
  %cur_name_val = alloca i32, align 4
  %new_name = alloca [11 x i8], align 1
  %file_count = alloca i32, align 4
  %files_valid = alloca i8, align 1
  %fp = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @"\01_opendir"(ptr noundef @.str)
  store ptr %call, ptr %dir_ptr, align 8
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.then, label %if.end51

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %new_name, ptr align 1 @__const.main.new_name, i64 11, i1 false)
  store i32 1, ptr %file_count, align 4
  store i8 1, ptr %files_valid, align 1
  %call1 = call ptr @"\01_fopen"(ptr noundef @.str.1, ptr noundef @.str.2)
  store ptr %call1, ptr %fp, align 8
  %0 = load ptr, ptr %fp, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end48, %if.end
  %1 = load ptr, ptr %dir_ptr, align 8
  %call4 = call ptr @"\01_readdir"(ptr noundef %1)
  store ptr %call4, ptr %entry_ptr, align 8
  %tobool5 = icmp ne ptr %call4, null
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8, ptr %files_valid, align 1
  %conv = sext i8 %2 to i32
  %tobool6 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool6, %land.rhs ]
  br i1 %3, label %while.body, label %while.end49

while.body:                                       ; preds = %land.end
  %4 = load ptr, ptr %entry_ptr, align 8
  %d_name = getelementptr inbounds %struct.dirent, ptr %4, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %d_name, i64 0, i64 0
  %call7 = call ptr @strrchr(ptr noundef %arraydecay, i32 noundef 46) #4
  store ptr %call7, ptr %cur_file_type, align 8
  %5 = load ptr, ptr %cur_file_type, align 8
  %tobool8 = icmp ne ptr %5, null
  br i1 %tobool8, label %land.lhs.true, label %if.end48

land.lhs.true:                                    ; preds = %while.body
  %6 = load ptr, ptr %cur_file_type, align 8
  %call9 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.4) #4
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end48, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %7 = load ptr, ptr %entry_ptr, align 8
  %d_name12 = getelementptr inbounds %struct.dirent, ptr %7, i32 0, i32 5
  %arraydecay13 = getelementptr inbounds [1024 x i8], ptr %d_name12, i64 0, i64 0
  %call14 = call signext i8 @getNameVal(ptr noundef %arraydecay13)
  %conv15 = sext i8 %call14 to i32
  store i32 %conv15, ptr %cur_name_val, align 4
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then11
  br label %while.cond19

while.cond19:                                     ; preds = %while.body29, %if.then18
  %8 = load ptr, ptr %entry_ptr, align 8
  %d_name20 = getelementptr inbounds %struct.dirent, ptr %8, i32 0, i32 5
  %arraydecay21 = getelementptr inbounds [1024 x i8], ptr %d_name20, i64 0, i64 0
  %arraydecay22 = getelementptr inbounds [11 x i8], ptr %new_name, i64 0, i64 0
  %call23 = call i32 @rename(ptr noundef %arraydecay21, ptr noundef %arraydecay22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.rhs25, label %land.end28

land.rhs25:                                       ; preds = %while.cond19
  %9 = load i8, ptr %files_valid, align 1
  %conv26 = sext i8 %9 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br label %land.end28

land.end28:                                       ; preds = %land.rhs25, %while.cond19
  %10 = phi i1 [ false, %while.cond19 ], [ %tobool27, %land.rhs25 ]
  br i1 %10, label %while.body29, label %while.end

while.body29:                                     ; preds = %land.end28
  %arraydecay30 = getelementptr inbounds [11 x i8], ptr %new_name, i64 0, i64 0
  %call31 = call signext i8 @incrementName(ptr noundef %arraydecay30, ptr noundef %file_count)
  store i8 %call31, ptr %files_valid, align 1
  br label %while.cond19, !llvm.loop !5

while.end:                                        ; preds = %land.end28
  %11 = load i8, ptr %files_valid, align 1
  %tobool32 = icmp ne i8 %11, 0
  br i1 %tobool32, label %if.then33, label %if.end40

if.then33:                                        ; preds = %while.end
  %12 = load ptr, ptr %fp, align 8
  %13 = load ptr, ptr %entry_ptr, align 8
  %d_name34 = getelementptr inbounds %struct.dirent, ptr %13, i32 0, i32 5
  %arraydecay35 = getelementptr inbounds [1024 x i8], ptr %d_name34, i64 0, i64 0
  %arraydecay36 = getelementptr inbounds [11 x i8], ptr %new_name, i64 0, i64 0
  %call37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.5, ptr noundef %arraydecay35, ptr noundef %arraydecay36) #4
  %arraydecay38 = getelementptr inbounds [11 x i8], ptr %new_name, i64 0, i64 0
  %call39 = call signext i8 @incrementName(ptr noundef %arraydecay38, ptr noundef %file_count)
  store i8 %call39, ptr %files_valid, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %while.end
  br label %if.end47

if.else:                                          ; preds = %if.then11
  %14 = load i32, ptr %cur_name_val, align 4
  %15 = load i32, ptr %file_count, align 4
  %cmp41 = icmp eq i32 %14, %15
  br i1 %cmp41, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.else
  %arraydecay44 = getelementptr inbounds [11 x i8], ptr %new_name, i64 0, i64 0
  %call45 = call signext i8 @incrementName(ptr noundef %arraydecay44, ptr noundef %file_count)
  store i8 %call45, ptr %files_valid, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.else
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end40
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !7

while.end49:                                      ; preds = %land.end
  %16 = load ptr, ptr %fp, align 8
  %17 = load i32, ptr %file_count, align 4
  %sub = sub nsw i32 %17, 1
  %call50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.6, i32 noundef %sub) #4
  br label %if.end51

if.end51:                                         ; preds = %while.end49, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end51, %if.then2
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

declare ptr @"\01_opendir"(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

declare ptr @"\01_readdir"(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strrchr(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare i32 @rename(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
