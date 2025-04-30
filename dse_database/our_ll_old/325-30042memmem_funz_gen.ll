; ModuleID = './code/325-30042memmem_funz_gen.c'
source_filename = "./code/325-30042memmem_funz_gen.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.dati = type { [256 x i8], i32 }

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.str = private unnamed_addr constant [40 x i8] c"zlatanibrahimovic%40parigistgermain.com\00", align 1
@__const.main.sub = private unnamed_addr constant [4 x i8] c"%40\00", align 1
@__const.main.neu = private unnamed_addr constant [2 x i8] c"@\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printa(ptr noundef %dato, i32 noundef %len) #0 {
entry:
  %dato.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %dato, ptr %dato.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %dato.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @substitutor(ptr noundef %d, ptr noundef %str, ptr noundef %sub, ptr noundef %neu) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %sub.addr = alloca ptr, align 8
  %neu.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %len_str = alloca i32, align 4
  %len_sub = alloca i32, align 4
  %len_neu = alloca i32, align 4
  %diff_bef = alloca i32, align 4
  %diff_aft = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  store ptr %str, ptr %str.addr, align 8
  store ptr %sub, ptr %sub.addr, align 8
  store ptr %neu, ptr %neu.addr, align 8
  %0 = load ptr, ptr %str.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %len_str, align 4
  %1 = load ptr, ptr %sub.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %1) #5
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, ptr %len_sub, align 4
  %2 = load ptr, ptr %neu.addr, align 8
  %call3 = call i64 @strlen(ptr noundef %2) #5
  %conv4 = trunc i64 %call3 to i32
  store i32 %conv4, ptr %len_neu, align 4
  %3 = load ptr, ptr %str.addr, align 8
  %4 = load i32, ptr %len_str, align 4
  %conv5 = sext i32 %4 to i64
  %5 = load ptr, ptr %sub.addr, align 8
  %6 = load i32, ptr %len_sub, align 4
  %conv6 = sext i32 %6 to i64
  %call7 = call ptr @memmem(ptr noundef %3, i64 noundef %conv5, ptr noundef %5, i64 noundef %conv6)
  store ptr %call7, ptr %ret, align 8
  %7 = load ptr, ptr %ret, align 8
  %8 = load ptr, ptr %str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv8 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv8, ptr %diff_bef, align 4
  %9 = load ptr, ptr %str.addr, align 8
  %10 = load i32, ptr %diff_bef, align 4
  call void @printa(ptr noundef %9, i32 noundef %10)
  %11 = load i32, ptr %len_str, align 4
  %12 = load i32, ptr %diff_bef, align 4
  %sub9 = sub nsw i32 %11, %12
  %13 = load i32, ptr %len_sub, align 4
  %sub10 = sub nsw i32 %sub9, %13
  store i32 %sub10, ptr %diff_aft, align 4
  %14 = load ptr, ptr %str.addr, align 8
  %15 = load i32, ptr %diff_bef, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  %16 = load i32, ptr %len_sub, align 4
  %idx.ext11 = sext i32 %16 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext11
  %17 = load i32, ptr %diff_aft, align 4
  call void @printa(ptr noundef %add.ptr12, i32 noundef %17)
  %18 = load ptr, ptr %d.addr, align 8
  %dato = getelementptr inbounds %struct.dati, ptr %18, i32 0, i32 0
  %arraydecay = getelementptr inbounds [256 x i8], ptr %dato, i64 0, i64 0
  %19 = load ptr, ptr %str.addr, align 8
  %20 = load i32, ptr %diff_bef, align 4
  %conv13 = sext i32 %20 to i64
  %21 = load ptr, ptr %d.addr, align 8
  %dato14 = getelementptr inbounds %struct.dati, ptr %21, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [256 x i8], ptr %dato14, i64 0, i64 0
  %22 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay15, i1 false, i1 true, i1 false)
  %call16 = call ptr @__memcpy_chk(ptr noundef %arraydecay, ptr noundef %19, i64 noundef %conv13, i64 noundef %22) #5
  %23 = load ptr, ptr %d.addr, align 8
  %dato17 = getelementptr inbounds %struct.dati, ptr %23, i32 0, i32 0
  %arraydecay18 = getelementptr inbounds [256 x i8], ptr %dato17, i64 0, i64 0
  %24 = load i32, ptr %diff_bef, align 4
  call void @printa(ptr noundef %arraydecay18, i32 noundef %24)
  %25 = load ptr, ptr %d.addr, align 8
  %dato19 = getelementptr inbounds %struct.dati, ptr %25, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [256 x i8], ptr %dato19, i64 0, i64 0
  %26 = load i32, ptr %diff_bef, align 4
  %idx.ext21 = sext i32 %26 to i64
  %add.ptr22 = getelementptr inbounds i8, ptr %arraydecay20, i64 %idx.ext21
  %27 = load ptr, ptr %neu.addr, align 8
  %28 = load i32, ptr %len_neu, align 4
  %conv23 = sext i32 %28 to i64
  %29 = load ptr, ptr %d.addr, align 8
  %dato24 = getelementptr inbounds %struct.dati, ptr %29, i32 0, i32 0
  %arraydecay25 = getelementptr inbounds [256 x i8], ptr %dato24, i64 0, i64 0
  %30 = load i32, ptr %diff_bef, align 4
  %idx.ext26 = sext i32 %30 to i64
  %add.ptr27 = getelementptr inbounds i8, ptr %arraydecay25, i64 %idx.ext26
  %31 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr27, i1 false, i1 true, i1 false)
  %call28 = call ptr @__memcpy_chk(ptr noundef %add.ptr22, ptr noundef %27, i64 noundef %conv23, i64 noundef %31) #5
  %32 = load ptr, ptr %d.addr, align 8
  %dato29 = getelementptr inbounds %struct.dati, ptr %32, i32 0, i32 0
  %arraydecay30 = getelementptr inbounds [256 x i8], ptr %dato29, i64 0, i64 0
  %33 = load i32, ptr %diff_bef, align 4
  %34 = load i32, ptr %len_neu, align 4
  %add = add nsw i32 %33, %34
  call void @printa(ptr noundef %arraydecay30, i32 noundef %add)
  %35 = load ptr, ptr %d.addr, align 8
  %dato31 = getelementptr inbounds %struct.dati, ptr %35, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [256 x i8], ptr %dato31, i64 0, i64 0
  %36 = load i32, ptr %diff_bef, align 4
  %idx.ext33 = sext i32 %36 to i64
  %add.ptr34 = getelementptr inbounds i8, ptr %arraydecay32, i64 %idx.ext33
  %37 = load i32, ptr %len_neu, align 4
  %idx.ext35 = sext i32 %37 to i64
  %add.ptr36 = getelementptr inbounds i8, ptr %add.ptr34, i64 %idx.ext35
  %38 = load ptr, ptr %str.addr, align 8
  %39 = load i32, ptr %diff_bef, align 4
  %idx.ext37 = sext i32 %39 to i64
  %add.ptr38 = getelementptr inbounds i8, ptr %38, i64 %idx.ext37
  %40 = load i32, ptr %len_sub, align 4
  %idx.ext39 = sext i32 %40 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %add.ptr38, i64 %idx.ext39
  %41 = load i32, ptr %diff_aft, align 4
  %conv41 = sext i32 %41 to i64
  %42 = load ptr, ptr %d.addr, align 8
  %dato42 = getelementptr inbounds %struct.dati, ptr %42, i32 0, i32 0
  %arraydecay43 = getelementptr inbounds [256 x i8], ptr %dato42, i64 0, i64 0
  %43 = load i32, ptr %diff_bef, align 4
  %idx.ext44 = sext i32 %43 to i64
  %add.ptr45 = getelementptr inbounds i8, ptr %arraydecay43, i64 %idx.ext44
  %44 = load i32, ptr %len_neu, align 4
  %idx.ext46 = sext i32 %44 to i64
  %add.ptr47 = getelementptr inbounds i8, ptr %add.ptr45, i64 %idx.ext46
  %45 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr47, i1 false, i1 true, i1 false)
  %call48 = call ptr @__memcpy_chk(ptr noundef %add.ptr36, ptr noundef %add.ptr40, i64 noundef %conv41, i64 noundef %45) #5
  %46 = load ptr, ptr %d.addr, align 8
  %dato49 = getelementptr inbounds %struct.dati, ptr %46, i32 0, i32 0
  %arraydecay50 = getelementptr inbounds [256 x i8], ptr %dato49, i64 0, i64 0
  %47 = load i32, ptr %len_str, align 4
  %48 = load i32, ptr %len_sub, align 4
  %sub51 = sub nsw i32 %47, %48
  %49 = load i32, ptr %len_neu, align 4
  %add52 = add nsw i32 %sub51, %49
  call void @printa(ptr noundef %arraydecay50, i32 noundef %add52)
  %50 = load i32, ptr %len_str, align 4
  %51 = load i32, ptr %len_sub, align 4
  %sub53 = sub nsw i32 %50, %51
  %52 = load i32, ptr %len_neu, align 4
  %add54 = add nsw i32 %sub53, %52
  %53 = load ptr, ptr %d.addr, align 8
  %lung = getelementptr inbounds %struct.dati, ptr %53, i32 0, i32 1
  store i32 %add54, ptr %lung, align 4
  ret void
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

declare ptr @memmem(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %d = alloca %struct.dati, align 4
  %str = alloca [40 x i8], align 1
  %sub = alloca [4 x i8], align 1
  %neu = alloca [2 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str, ptr align 1 @__const.main.str, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %sub, ptr align 1 @__const.main.sub, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %neu, ptr align 1 @__const.main.neu, i64 2, i1 false)
  %arraydecay = getelementptr inbounds [40 x i8], ptr %str, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [4 x i8], ptr %sub, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [2 x i8], ptr %neu, i64 0, i64 0
  call void @substitutor(ptr noundef %d, ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2)
  %dato = getelementptr inbounds %struct.dati, ptr %d, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [256 x i8], ptr %dato, i64 0, i64 0
  %lung = getelementptr inbounds %struct.dati, ptr %d, i32 0, i32 1
  %0 = load i32, ptr %lung, align 4
  call void @printa(ptr noundef %arraydecay3, i32 noundef %0)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
