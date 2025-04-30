; ModuleID = 'code/000-6282tester-5.c'
source_filename = "code/000-6282tester-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Memory failed to allocate!\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"Memory failed to contain correct data after many allocations (beginning of segment)!\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"Memory failed to contain correct data after many allocations (end of segment)!\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Memory was allocated and freed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %realloc_ptr = alloca i8*, align 8
  %dictionary = alloca i8**, align 8
  %dictionary_elem_size = alloca i32*, align 8
  %dictionary_ct = alloca i32, align 4
  %data_written = alloca i32, align 4
  %size = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 1) #3
  store i8* null, i8** %realloc_ptr, align 8
  %call1 = call noalias align 16 i8* @malloc(i64 3200000) #3
  %0 = bitcast i8* %call1 to i8**
  store i8** %0, i8*** %dictionary, align 8
  %call2 = call noalias align 16 i8* @malloc(i64 1600000) #3
  %1 = bitcast i8* %call2 to i32*
  store i32* %1, i32** %dictionary_elem_size, align 8
  store i32 0, i32* %dictionary_ct, align 4
  store i32 0, i32* %data_written, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 400000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 @rand() #3
  %rem = srem i32 %call3, 102377
  %add = add nsw i32 %rem, 24
  store i32 %add, i32* %size, align 4
  %3 = load i8*, i8** %realloc_ptr, align 8
  %cmp4 = icmp eq i8* %3, null
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %size, align 4
  %conv = sext i32 %4 to i64
  %call5 = call noalias align 16 i8* @malloc(i64 %conv) #3
  store i8* %call5, i8** %ptr, align 8
  store i32 0, i32* %data_written, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %5 = load i8*, i8** %realloc_ptr, align 8
  %6 = load i32, i32* %size, align 4
  %conv6 = sext i32 %6 to i64
  %call7 = call align 16 i8* @realloc(i8* %5, i64 %conv6) #3
  store i8* %call7, i8** %ptr, align 8
  store i8* null, i8** %realloc_ptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i8*, i8** %ptr, align 8
  %cmp8 = icmp eq i8* %7, null
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %call13 = call i32 @rand() #3
  %rem14 = srem i32 %call13, 100
  %cmp15 = icmp slt i32 %rem14, 95
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.end12
  %8 = load i8*, i8** %ptr, align 8
  call void @free(i8* %8) #3
  br label %if.end35

if.else18:                                        ; preds = %if.end12
  %9 = load i32, i32* %data_written, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.else18
  %10 = load i8**, i8*** %dictionary, align 8
  %11 = load i32, i32* %dictionary_ct, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %12 = bitcast i8** %arrayidx to i8*
  %13 = load i8*, i8** %ptr, align 8
  %14 = bitcast i8* %13 to i8**
  store i8* %12, i8** %14, align 8
  store i32 1, i32* %data_written, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.else18
  %call21 = call i32 @rand() #3
  %rem22 = srem i32 %call21, 100
  %cmp23 = icmp slt i32 %rem22, 50
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.end20
  %15 = load i8*, i8** %ptr, align 8
  store i8* %15, i8** %realloc_ptr, align 8
  br label %if.end34

if.else26:                                        ; preds = %if.end20
  %16 = load i8**, i8*** %dictionary, align 8
  %17 = load i32, i32* %dictionary_ct, align 4
  %idxprom27 = sext i32 %17 to i64
  %arrayidx28 = getelementptr inbounds i8*, i8** %16, i64 %idxprom27
  %18 = bitcast i8** %arrayidx28 to i8*
  %19 = load i8*, i8** %ptr, align 8
  %20 = load i32, i32* %size, align 4
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr i8, i8* %19, i64 %idx.ext
  %add.ptr29 = getelementptr i8, i8* %add.ptr, i64 -8
  %21 = bitcast i8* %add.ptr29 to i8**
  store i8* %18, i8** %21, align 8
  %22 = load i8*, i8** %ptr, align 8
  %23 = load i8**, i8*** %dictionary, align 8
  %24 = load i32, i32* %dictionary_ct, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds i8*, i8** %23, i64 %idxprom30
  store i8* %22, i8** %arrayidx31, align 8
  %25 = load i32, i32* %size, align 4
  %26 = load i32*, i32** %dictionary_elem_size, align 8
  %27 = load i32, i32* %dictionary_ct, align 4
  %idxprom32 = sext i32 %27 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %26, i64 %idxprom32
  store i32 %25, i32* %arrayidx33, align 4
  %28 = load i32, i32* %dictionary_ct, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %dictionary_ct, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else26, %if.then25
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then17
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %29 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %29, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %dictionary_ct, align 4
  %sub = sub nsw i32 %30, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc66, %for.end
  %31 = load i32, i32* %i, align 4
  %cmp38 = icmp sge i32 %31, 0
  br i1 %cmp38, label %for.body40, label %for.end67

for.body40:                                       ; preds = %for.cond37
  %32 = load i8**, i8*** %dictionary, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %33 to i64
  %arrayidx42 = getelementptr inbounds i8*, i8** %32, i64 %idxprom41
  %34 = load i8*, i8** %arrayidx42, align 8
  %35 = bitcast i8* %34 to i8**
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** %dictionary, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %38 to i64
  %arrayidx44 = getelementptr inbounds i8*, i8** %37, i64 %idxprom43
  %39 = bitcast i8** %arrayidx44 to i8*
  %cmp45 = icmp ne i8* %36, %39
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %for.body40
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  store i32 100, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %for.body40
  %40 = load i8**, i8*** %dictionary, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %41 to i64
  %arrayidx51 = getelementptr inbounds i8*, i8** %40, i64 %idxprom50
  %42 = load i8*, i8** %arrayidx51, align 8
  %43 = load i32*, i32** %dictionary_elem_size, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %44 to i64
  %arrayidx53 = getelementptr inbounds i32, i32* %43, i64 %idxprom52
  %45 = load i32, i32* %arrayidx53, align 4
  %idx.ext54 = sext i32 %45 to i64
  %add.ptr55 = getelementptr i8, i8* %42, i64 %idx.ext54
  %add.ptr56 = getelementptr i8, i8* %add.ptr55, i64 -8
  %46 = bitcast i8* %add.ptr56 to i8**
  %47 = load i8*, i8** %46, align 8
  %48 = load i8**, i8*** %dictionary, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %49 to i64
  %arrayidx58 = getelementptr inbounds i8*, i8** %48, i64 %idxprom57
  %50 = bitcast i8** %arrayidx58 to i8*
  %cmp59 = icmp ne i8* %47, %50
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end49
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  store i32 101, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end49
  %51 = load i8**, i8*** %dictionary, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %52 to i64
  %arrayidx65 = getelementptr inbounds i8*, i8** %51, i64 %idxprom64
  %53 = load i8*, i8** %arrayidx65, align 8
  call void @free(i8* %53) #3
  br label %for.inc66

for.inc66:                                        ; preds = %if.end63
  %54 = load i32, i32* %i, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond37, !llvm.loop !6

for.end67:                                        ; preds = %for.cond37
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end67, %if.then61, %if.then47, %if.then10
  %55 = load i32, i32* %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
