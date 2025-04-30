; ModuleID = './code/123-28487bbcl.c'
source_filename = "./code/123-28487bbcl.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { ptr, ptr, i64, [0 x i8] }

@__stdinp = external global ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"\1B[1H\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[0J\00", align 1
@__stdoutp = external global ptr, align 8
@front = internal global ptr null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Cannont allocate memmory\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s\1B[0K\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %buff = alloca ptr, align 8
  %size = alloca i64, align 8
  %len = alloca i64, align 8
  %name = alloca ptr, align 8
  %position = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %buff, align 8
  store i64 0, ptr %size, align 8
  store i32 0, ptr %position, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %sw.default, %if.then11, %if.then, %entry
  %0 = load ptr, ptr @__stdinp, align 8
  %call = call i64 @getline(ptr noundef %buff, ptr noundef %size, ptr noundef %0)
  store i64 %call, ptr %len, align 8
  %cmp = icmp sgt i64 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %buff, align 8
  %call1 = call ptr @strchr(ptr noundef %1, i32 noundef 32) #6
  %2 = load ptr, ptr %buff, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %call1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 2
  %conv = trunc i64 %add to i32
  store i32 %conv, ptr %position, align 4
  %3 = load i32, ptr %position, align 4
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %4 = load i64, ptr %len, align 8
  %5 = load i32, ptr %position, align 4
  %add4 = add nsw i32 %5, 3
  %conv5 = sext i32 %add4 to i64
  %cmp6 = icmp slt i64 %4, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond, !llvm.loop !5

if.end:                                           ; preds = %land.lhs.true, %while.body
  %6 = load ptr, ptr %buff, align 8
  %7 = load i32, ptr %position, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv8 = sext i8 %8 to i32
  switch i32 %conv8, label %sw.default [
    i32 33, label %sw.bb
    i32 118, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load ptr, ptr %buff, align 8
  %10 = load i32, ptr %position, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, ptr %add.ptr, i64 3
  store ptr %add.ptr9, ptr %name, align 8
  %11 = load ptr, ptr %name, align 8
  %call10 = call ptr @endname(ptr noundef %11, i8 noundef signext 40)
  %tobool = icmp ne ptr %call10, null
  br i1 %tobool, label %if.end12, label %if.then11

if.then11:                                        ; preds = %sw.bb
  br label %while.cond, !llvm.loop !5

if.end12:                                         ; preds = %sw.bb
  %12 = load ptr, ptr %name, align 8
  %call13 = call i32 @delete(ptr noundef %12)
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %13 = load ptr, ptr %buff, align 8
  %14 = load i32, ptr %position, align 4
  %idx.ext15 = sext i32 %14 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %13, i64 %idx.ext15
  %add.ptr17 = getelementptr inbounds i8, ptr %add.ptr16, i64 2
  store ptr %add.ptr17, ptr %name, align 8
  %15 = load ptr, ptr %name, align 8
  %call18 = call ptr @endname(ptr noundef %15, i8 noundef signext 10)
  %16 = load ptr, ptr %buff, align 8
  %17 = load i32, ptr %position, align 4
  %sub = sub nsw i32 %17, 1
  %idxprom19 = sext i32 %sub to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %16, i64 %idxprom19
  %18 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %18 to i32
  %cmp22 = icmp eq i32 %conv21, 43
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %sw.bb14
  %19 = load ptr, ptr %name, align 8
  %call25 = call i32 @add(ptr noundef %19)
  br label %if.end27

if.else:                                          ; preds = %sw.bb14
  %20 = load ptr, ptr %name, align 8
  %call26 = call i32 @away(ptr noundef %20)
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then24
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %while.cond, !llvm.loop !5

sw.epilog:                                        ; preds = %if.end27, %if.end12
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  call void @print()
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %21 = load ptr, ptr @__stdoutp, align 8
  %call30 = call i32 @fflush(ptr noundef %21)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  call void @clear()
  %22 = load ptr, ptr %buff, align 8
  call void @free(ptr noundef %22)
  ret i32 0
}

declare i64 @getline(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @strchr(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @endname(ptr noundef %name, i8 noundef signext %end) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %end.addr = alloca i8, align 1
  %ob = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i8 %end, ptr %end.addr, align 1
  %0 = load ptr, ptr %name.addr, align 8
  %1 = load i8, ptr %end.addr, align 1
  %conv = sext i8 %1 to i32
  %call = call ptr @strchr(ptr noundef %0, i32 noundef %conv) #6
  store ptr %call, ptr %ob, align 8
  %2 = load ptr, ptr %ob, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %ob, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  store i8 0, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %ob, align 8
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @delete(ptr noundef %name) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %next = alloca ptr, align 8
  %prev = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call ptr @find(ptr noundef %0, ptr noundef null)
  store ptr %call, ptr %n, align 8
  %1 = load ptr, ptr %n, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %n, align 8
  %next1 = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next1, align 8
  store ptr %3, ptr %next, align 8
  %4 = load ptr, ptr %n, align 8
  %prev2 = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %prev2, align 8
  store ptr %5, ptr %prev, align 8
  %6 = load ptr, ptr %next, align 8
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %prev, align 8
  %8 = load ptr, ptr %next, align 8
  %prev4 = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 1
  store ptr %7, ptr %prev4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %9 = load ptr, ptr %prev, align 8
  %cmp5 = icmp eq ptr %9, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %next, align 8
  store ptr %10, ptr @front, align 8
  br label %if.end8

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %next, align 8
  %12 = load ptr, ptr %prev, align 8
  %next7 = getelementptr inbounds %struct.node, ptr %12, i32 0, i32 0
  store ptr %11, ptr %next7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %13 = load ptr, ptr %n, align 8
  call void @free(ptr noundef %13)
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @add(ptr noundef %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %la = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #6
  %add = add i64 %call, 1
  store i64 %add, ptr %len, align 8
  store ptr null, ptr %la, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call1 = call ptr @find(ptr noundef %1, ptr noundef %la)
  %tobool = icmp ne ptr %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %len, align 8
  %add2 = add i64 24, %2
  %call3 = call ptr @malloc(i64 noundef %add2) #7
  store ptr %call3, ptr %new, align 8
  %3 = load ptr, ptr %new, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @perror(ptr noundef @.str.2) #8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %new, align 8
  %name6 = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i8], ptr %name6, i64 0, i64 0
  %5 = load ptr, ptr %name.addr, align 8
  %6 = load i64, ptr %len, align 8
  %7 = load ptr, ptr %new, align 8
  %name7 = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 3
  %arraydecay8 = getelementptr inbounds [0 x i8], ptr %name7, i64 0, i64 0
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay8, i1 false, i1 true, i1 false)
  %call9 = call ptr @__memcpy_chk(ptr noundef %arraydecay, ptr noundef %5, i64 noundef %6, i64 noundef %8) #6
  %9 = load ptr, ptr %la, align 8
  %10 = load ptr, ptr %new, align 8
  %prev = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 1
  store ptr %9, ptr %prev, align 8
  %11 = load ptr, ptr %la, align 8
  %cmp10 = icmp ne ptr %11, null
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end5
  %12 = load ptr, ptr %la, align 8
  %next = getelementptr inbounds %struct.node, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %next, align 8
  %14 = load ptr, ptr %new, align 8
  %next12 = getelementptr inbounds %struct.node, ptr %14, i32 0, i32 0
  store ptr %13, ptr %next12, align 8
  %15 = load ptr, ptr %new, align 8
  %16 = load ptr, ptr %la, align 8
  %next13 = getelementptr inbounds %struct.node, ptr %16, i32 0, i32 0
  store ptr %15, ptr %next13, align 8
  br label %if.end15

if.else:                                          ; preds = %if.end5
  %17 = load ptr, ptr @front, align 8
  %18 = load ptr, ptr %new, align 8
  %next14 = getelementptr inbounds %struct.node, ptr %18, i32 0, i32 0
  store ptr %17, ptr %next14, align 8
  %19 = load ptr, ptr %new, align 8
  store ptr %19, ptr @front, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  %20 = load ptr, ptr %new, align 8
  %next16 = getelementptr inbounds %struct.node, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %next16, align 8
  %tobool17 = icmp ne ptr %21, null
  br i1 %tobool17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end15
  %22 = load ptr, ptr %new, align 8
  %23 = load ptr, ptr %new, align 8
  %next19 = getelementptr inbounds %struct.node, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %next19, align 8
  %prev20 = getelementptr inbounds %struct.node, ptr %24, i32 0, i32 1
  store ptr %22, ptr %prev20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then4, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @away(ptr noundef %name) #0 {
entry:
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @fflush(ptr noundef) #1

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @find(ptr noundef %name, ptr noundef %ret) #0 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %ret.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %comparison = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store ptr %ret, ptr %ret.addr, align 8
  %0 = load ptr, ptr @front, align 8
  store ptr %0, ptr %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %entry
  %1 = load ptr, ptr %n, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %name.addr, align 8
  %3 = load ptr, ptr %n, align 8
  %name1 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i8], ptr %name1, i64 0, i64 0
  %call = call i32 @strcasecmp(ptr noundef %2, ptr noundef %arraydecay)
  store i32 %call, ptr %comparison, align 4
  %4 = load ptr, ptr %ret.addr, align 8
  %tobool2 = icmp ne ptr %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = load i32, ptr %comparison, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %n, align 8
  %7 = load ptr, ptr %ret.addr, align 8
  store ptr %6, ptr %7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %8 = load i32, ptr %comparison, align 4
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %9 = load i32, ptr %comparison, align 4
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  br label %while.end

if.end8:                                          ; preds = %if.end5
  %10 = load ptr, ptr %n, align 8
  %next = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next, align 8
  store ptr %11, ptr %n, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %if.then7, %while.cond
  %12 = load ptr, ptr %n, align 8
  store ptr %12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then4
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

declare i32 @strcasecmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

; Function Attrs: cold
declare void @perror(ptr noundef) #4

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @print() #0 {
entry:
  %n = alloca ptr, align 8
  %0 = load ptr, ptr @front, align 8
  store ptr %0, ptr %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %n, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %n, align 8
  %name = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i8], ptr %name, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %arraydecay)
  %3 = load ptr, ptr %n, align 8
  %next = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %next, align 8
  store ptr %4, ptr %n, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @clear() #0 {
entry:
  %n = alloca ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr @front, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr @front, align 8
  %next = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %next, align 8
  store ptr %2, ptr %n, align 8
  %3 = load ptr, ptr @front, align 8
  call void @free(ptr noundef %3)
  %4 = load ptr, ptr %n, align 8
  store ptr %4, ptr @front, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { allocsize(0) }
attributes #8 = { cold }

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
