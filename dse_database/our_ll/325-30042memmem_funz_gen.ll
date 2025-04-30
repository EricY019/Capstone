; ModuleID = 'code/325-30042memmem_funz_gen.c'
source_filename = "code/325-30042memmem_funz_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dati = type { [256 x i8], i32 }

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.str = private unnamed_addr constant [40 x i8] c"zlatanibrahimovic%40parigistgermain.com\00", align 16
@__const.main.sub = private unnamed_addr constant [4 x i8] c"%40\00", align 1
@__const.main.neu = private unnamed_addr constant [2 x i8] c"@\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printa(i8* %dato, i32 %len) #0 {
entry:
  %dato.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %dato, i8** %dato.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %dato.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @substitutor(%struct.dati* %d, i8* %str, i8* %sub, i8* %neu) #0 {
entry:
  %d.addr = alloca %struct.dati*, align 8
  %str.addr = alloca i8*, align 8
  %sub.addr = alloca i8*, align 8
  %neu.addr = alloca i8*, align 8
  %ret = alloca i8*, align 8
  %len_str = alloca i32, align 4
  %len_sub = alloca i32, align 4
  %len_neu = alloca i32, align 4
  %diff_bef = alloca i32, align 4
  %diff_aft = alloca i32, align 4
  store %struct.dati* %d, %struct.dati** %d.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8* %sub, i8** %sub.addr, align 8
  store i8* %neu, i8** %neu.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len_str, align 4
  %1 = load i8*, i8** %sub.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #4
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %len_sub, align 4
  %2 = load i8*, i8** %neu.addr, align 8
  %call3 = call i64 @strlen(i8* %2) #4
  %conv4 = trunc i64 %call3 to i32
  store i32 %conv4, i32* %len_neu, align 4
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i32, i32* %len_str, align 4
  %conv5 = sext i32 %4 to i64
  %5 = load i8*, i8** %sub.addr, align 8
  %6 = load i32, i32* %len_sub, align 4
  %conv6 = sext i32 %6 to i64
  %call7 = call i8* @memmem(i8* %3, i64 %conv5, i8* %5, i64 %conv6) #4
  store i8* %call7, i8** %ret, align 8
  %7 = load i8*, i8** %ret, align 8
  %8 = load i8*, i8** %str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv8 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv8, i32* %diff_bef, align 4
  %9 = load i8*, i8** %str.addr, align 8
  %10 = load i32, i32* %diff_bef, align 4
  call void @printa(i8* %9, i32 %10)
  %11 = load i32, i32* %len_str, align 4
  %12 = load i32, i32* %diff_bef, align 4
  %sub9 = sub nsw i32 %11, %12
  %13 = load i32, i32* %len_sub, align 4
  %sub10 = sub nsw i32 %sub9, %13
  store i32 %sub10, i32* %diff_aft, align 4
  %14 = load i8*, i8** %str.addr, align 8
  %15 = load i32, i32* %diff_bef, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %16 = load i32, i32* %len_sub, align 4
  %idx.ext11 = sext i32 %16 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext11
  %17 = load i32, i32* %diff_aft, align 4
  call void @printa(i8* %add.ptr12, i32 %17)
  %18 = load %struct.dati*, %struct.dati** %d.addr, align 8
  %dato = getelementptr inbounds %struct.dati, %struct.dati* %18, i32 0, i32 0
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %dato, i64 0, i64 0
  %19 = load i8*, i8** %str.addr, align 8
  %20 = load i32, i32* %diff_bef, align 4
  %conv13 = sext i32 %20 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %arraydecay, i8* align 1 %19, i64 %conv13, i1 false)
  %21 = load %struct.dati*, %struct.dati** %d.addr, align 8
  %dato14 = getelementptr inbounds %struct.dati, %struct.dati* %21, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %dato14, i64 0, i64 0
  %22 = load i32, i32* %diff_bef, align 4
  call void @printa(i8* %arraydecay15, i32 %22)
  %23 = load %struct.dati*, %struct.dati** %d.addr, align 8
  %dato16 = getelementptr inbounds %struct.dati, %struct.dati* %23, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [256 x i8], [256 x i8]* %dato16, i64 0, i64 0
  %24 = load i32, i32* %diff_bef, align 4
  %idx.ext18 = sext i32 %24 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %arraydecay17, i64 %idx.ext18
  %25 = load i8*, i8** %neu.addr, align 8
  %26 = load i32, i32* %len_neu, align 4
  %conv20 = sext i32 %26 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr19, i8* align 1 %25, i64 %conv20, i1 false)
  %27 = load %struct.dati*, %struct.dati** %d.addr, align 8
  %dato21 = getelementptr inbounds %struct.dati, %struct.dati* %27, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [256 x i8], [256 x i8]* %dato21, i64 0, i64 0
  %28 = load i32, i32* %diff_bef, align 4
  %29 = load i32, i32* %len_neu, align 4
  %add = add nsw i32 %28, %29
  call void @printa(i8* %arraydecay22, i32 %add)
  %30 = load %struct.dati*, %struct.dati** %d.addr, align 8
  %dato23 = getelementptr inbounds %struct.dati, %struct.dati* %30, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %dato23, i64 0, i64 0
  %31 = load i32, i32* %diff_bef, align 4
  %idx.ext25 = sext i32 %31 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %arraydecay24, i64 %idx.ext25
  %32 = load i32, i32* %len_neu, align 4
  %idx.ext27 = sext i32 %32 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr26, i64 %idx.ext27
  %33 = load i8*, i8** %str.addr, align 8
  %34 = load i32, i32* %diff_bef, align 4
  %idx.ext29 = sext i32 %34 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %33, i64 %idx.ext29
  %35 = load i32, i32* %len_sub, align 4
  %idx.ext31 = sext i32 %35 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr30, i64 %idx.ext31
  %36 = load i32, i32* %diff_aft, align 4
  %conv33 = sext i32 %36 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr28, i8* align 1 %add.ptr32, i64 %conv33, i1 false)
  %37 = load %struct.dati*, %struct.dati** %d.addr, align 8
  %dato34 = getelementptr inbounds %struct.dati, %struct.dati* %37, i32 0, i32 0
  %arraydecay35 = getelementptr inbounds [256 x i8], [256 x i8]* %dato34, i64 0, i64 0
  %38 = load i32, i32* %len_str, align 4
  %39 = load i32, i32* %len_sub, align 4
  %sub36 = sub nsw i32 %38, %39
  %40 = load i32, i32* %len_neu, align 4
  %add37 = add nsw i32 %sub36, %40
  call void @printa(i8* %arraydecay35, i32 %add37)
  %41 = load i32, i32* %len_str, align 4
  %42 = load i32, i32* %len_sub, align 4
  %sub38 = sub nsw i32 %41, %42
  %43 = load i32, i32* %len_neu, align 4
  %add39 = add nsw i32 %sub38, %43
  %44 = load %struct.dati*, %struct.dati** %d.addr, align 8
  %lung = getelementptr inbounds %struct.dati, %struct.dati* %44, i32 0, i32 1
  store i32 %add39, i32* %lung, align 4
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @memmem(i8*, i64, i8*, i64) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %d = alloca %struct.dati, align 4
  %str = alloca [40 x i8], align 16
  %sub = alloca [4 x i8], align 1
  %neu = alloca [2 x i8], align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [40 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([40 x i8], [40 x i8]* @__const.main.str, i32 0, i32 0), i64 40, i1 false)
  %1 = bitcast [4 x i8]* %sub to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.main.sub, i32 0, i32 0), i64 4, i1 false)
  %2 = bitcast [2 x i8]* %neu to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.main.neu, i32 0, i32 0), i64 2, i1 false)
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %str, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %sub, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [2 x i8], [2 x i8]* %neu, i64 0, i64 0
  call void @substitutor(%struct.dati* %d, i8* %arraydecay, i8* %arraydecay1, i8* %arraydecay2)
  %dato = getelementptr inbounds %struct.dati, %struct.dati* %d, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %dato, i64 0, i64 0
  %lung = getelementptr inbounds %struct.dati, %struct.dati* %d, i32 0, i32 1
  %3 = load i32, i32* %lung, align 4
  call void @printa(i8* %arraydecay3, i32 %3)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
