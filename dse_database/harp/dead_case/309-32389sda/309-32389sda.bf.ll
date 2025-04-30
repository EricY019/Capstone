; ModuleID = 'code/309-32389sda.bf.c'
source_filename = "code/309-32389sda.bf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %mem = alloca [30000 x i8], align 16
  %mem_ptr = alloca i8*, align 8
  %end = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  %arraydecay = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  store i8* %arraydecay, i8** %mem_ptr, align 8
  %arraydecay1 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay1, i64 30000
  store i8* %add.ptr, i8** %end, align 8
  %0 = load i8*, i8** %mem_ptr, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %0, i64 1
  store i8* %add.ptr2, i8** %mem_ptr, align 8
  %1 = load i8*, i8** %mem_ptr, align 8
  %2 = load i8*, i8** %end, align 8
  %cmp = icmp uge i8* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay3 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %3 = load i8*, i8** %end, align 8
  %4 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr4 = getelementptr inbounds i8, i8* %arraydecay3, i64 %sub.ptr.sub
  store i8* %add.ptr4, i8** %mem_ptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %mem_ptr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %add = add nsw i32 %conv, 8
  %conv5 = trunc i32 %add to i8
  store i8 %conv5, i8* %5, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %if.end
  %7 = load i8*, i8** %mem_ptr, align 8
  %8 = load i8, i8* %7, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %mem_ptr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %9, i64 -1
  store i8* %add.ptr6, i8** %mem_ptr, align 8
  %10 = load i8*, i8** %mem_ptr, align 8
  %arraydecay7 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %cmp8 = icmp ult i8* %10, %arraydecay7
  br i1 %cmp8, label %if.then10, label %if.end16

if.then10:                                        ; preds = %while.body
  %11 = load i8*, i8** %end, align 8
  %arraydecay11 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %12 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast12 = ptrtoint i8* %arraydecay11 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %12 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %idx.neg = sub i64 0, %sub.ptr.sub14
  %add.ptr15 = getelementptr inbounds i8, i8* %11, i64 %idx.neg
  store i8* %add.ptr15, i8** %mem_ptr, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %while.body
  %13 = load i8*, i8** %mem_ptr, align 8
  %14 = load i8, i8* %13, align 1
  %conv17 = sext i8 %14 to i32
  %add18 = add nsw i32 %conv17, 9
  %conv19 = trunc i32 %add18 to i8
  store i8 %conv19, i8* %13, align 1
  %15 = load i8*, i8** %mem_ptr, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %add.ptr20, i8** %mem_ptr, align 8
  %16 = load i8*, i8** %mem_ptr, align 8
  %17 = load i8*, i8** %end, align 8
  %cmp21 = icmp uge i8* %16, %17
  br i1 %cmp21, label %if.then23, label %if.end29

if.then23:                                        ; preds = %if.end16
  %arraydecay24 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %18 = load i8*, i8** %end, align 8
  %19 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast25 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast26 = ptrtoint i8* %19 to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %add.ptr28 = getelementptr inbounds i8, i8* %arraydecay24, i64 %sub.ptr.sub27
  store i8* %add.ptr28, i8** %mem_ptr, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.end16
  %20 = load i8*, i8** %mem_ptr, align 8
  %21 = load i8, i8* %20, align 1
  %conv30 = sext i8 %21 to i32
  %sub = sub nsw i32 %conv30, 1
  %conv31 = trunc i32 %sub to i8
  store i8 %conv31, i8* %20, align 1
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %22 = load i8*, i8** %mem_ptr, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %22, i64 -1
  store i8* %add.ptr32, i8** %mem_ptr, align 8
  %23 = load i8*, i8** %mem_ptr, align 8
  %arraydecay33 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %cmp34 = icmp ult i8* %23, %arraydecay33
  br i1 %cmp34, label %if.then36, label %if.end43

if.then36:                                        ; preds = %while.end
  %24 = load i8*, i8** %end, align 8
  %arraydecay37 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %25 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast38 = ptrtoint i8* %arraydecay37 to i64
  %sub.ptr.rhs.cast39 = ptrtoint i8* %25 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %idx.neg41 = sub i64 0, %sub.ptr.sub40
  %add.ptr42 = getelementptr inbounds i8, i8* %24, i64 %idx.neg41
  store i8* %add.ptr42, i8** %mem_ptr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %while.end
  %26 = load i8*, i8** %mem_ptr, align 8
  %27 = load i8, i8* %26, align 1
  %conv44 = sext i8 %27 to i32
  %call = call i32 @putchar(i32 %conv44)
  %28 = load i8*, i8** %mem_ptr, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %28, i64 2
  store i8* %add.ptr45, i8** %mem_ptr, align 8
  %29 = load i8*, i8** %mem_ptr, align 8
  %30 = load i8*, i8** %end, align 8
  %cmp46 = icmp uge i8* %29, %30
  br i1 %cmp46, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.end43
  %arraydecay49 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %31 = load i8*, i8** %end, align 8
  %32 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast50 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast51 = ptrtoint i8* %32 to i64
  %sub.ptr.sub52 = sub i64 %sub.ptr.lhs.cast50, %sub.ptr.rhs.cast51
  %add.ptr53 = getelementptr inbounds i8, i8* %arraydecay49, i64 %sub.ptr.sub52
  store i8* %add.ptr53, i8** %mem_ptr, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.end43
  %33 = load i8*, i8** %mem_ptr, align 8
  %34 = load i8, i8* %33, align 1
  %conv55 = sext i8 %34 to i32
  %add56 = add nsw i32 %conv55, 1
  %conv57 = trunc i32 %add56 to i8
  store i8 %conv57, i8* %33, align 1
  %35 = load i8*, i8** %mem_ptr, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %add.ptr58, i8** %mem_ptr, align 8
  %36 = load i8*, i8** %mem_ptr, align 8
  %37 = load i8*, i8** %end, align 8
  %cmp59 = icmp uge i8* %36, %37
  br i1 %cmp59, label %if.then61, label %if.end67

if.then61:                                        ; preds = %if.end54
  %arraydecay62 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %38 = load i8*, i8** %end, align 8
  %39 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast63 = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast64 = ptrtoint i8* %39 to i64
  %sub.ptr.sub65 = sub i64 %sub.ptr.lhs.cast63, %sub.ptr.rhs.cast64
  %add.ptr66 = getelementptr inbounds i8, i8* %arraydecay62, i64 %sub.ptr.sub65
  store i8* %add.ptr66, i8** %mem_ptr, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then61, %if.end54
  %40 = load i8*, i8** %mem_ptr, align 8
  %41 = load i8, i8* %40, align 1
  %conv68 = sext i8 %41 to i32
  %add69 = add nsw i32 %conv68, 1
  %conv70 = trunc i32 %add69 to i8
  store i8 %conv70, i8* %40, align 1
  %42 = load i8*, i8** %mem_ptr, align 8
  %add.ptr71 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %add.ptr71, i8** %mem_ptr, align 8
  %43 = load i8*, i8** %mem_ptr, align 8
  %44 = load i8*, i8** %end, align 8
  %cmp72 = icmp uge i8* %43, %44
  br i1 %cmp72, label %if.then74, label %if.end80

if.then74:                                        ; preds = %if.end67
  %arraydecay75 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %45 = load i8*, i8** %end, align 8
  %46 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast76 = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast77 = ptrtoint i8* %46 to i64
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77
  %add.ptr79 = getelementptr inbounds i8, i8* %arraydecay75, i64 %sub.ptr.sub78
  store i8* %add.ptr79, i8** %mem_ptr, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then74, %if.end67
  %47 = load i8*, i8** %mem_ptr, align 8
  %48 = load i8, i8* %47, align 1
  %conv81 = sext i8 %48 to i32
  %add82 = add nsw i32 %conv81, 2
  %conv83 = trunc i32 %add82 to i8
  store i8 %conv83, i8* %47, align 1
  %49 = load i8*, i8** %mem_ptr, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %add.ptr84, i8** %mem_ptr, align 8
  %50 = load i8*, i8** %mem_ptr, align 8
  %51 = load i8*, i8** %end, align 8
  %cmp85 = icmp uge i8* %50, %51
  br i1 %cmp85, label %if.then87, label %if.end93

if.then87:                                        ; preds = %if.end80
  %arraydecay88 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %52 = load i8*, i8** %end, align 8
  %53 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast89 = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast90 = ptrtoint i8* %53 to i64
  %sub.ptr.sub91 = sub i64 %sub.ptr.lhs.cast89, %sub.ptr.rhs.cast90
  %add.ptr92 = getelementptr inbounds i8, i8* %arraydecay88, i64 %sub.ptr.sub91
  store i8* %add.ptr92, i8** %mem_ptr, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then87, %if.end80
  br label %while.cond94

while.cond94:                                     ; preds = %while.body96, %if.end93
  %54 = load i8*, i8** %mem_ptr, align 8
  %55 = load i8, i8* %54, align 1
  %tobool95 = icmp ne i8 %55, 0
  br i1 %tobool95, label %while.body96, label %while.end100

while.body96:                                     ; preds = %while.cond94
  %56 = load i8*, i8** %mem_ptr, align 8
  %57 = load i8, i8* %56, align 1
  %conv97 = sext i8 %57 to i32
  %sub98 = sub nsw i32 %conv97, 1
  %conv99 = trunc i32 %sub98 to i8
  store i8 %conv99, i8* %56, align 1
  br label %while.cond94, !llvm.loop !6

while.end100:                                     ; preds = %while.cond94
  %58 = load i8*, i8** %mem_ptr, align 8
  %59 = load i8, i8* %58, align 1
  %conv101 = sext i8 %59 to i32
  %add102 = add nsw i32 %conv101, 1
  %conv103 = trunc i32 %add102 to i8
  store i8 %conv103, i8* %58, align 1
  %60 = load i8*, i8** %mem_ptr, align 8
  %add.ptr104 = getelementptr inbounds i8, i8* %60, i64 -1
  store i8* %add.ptr104, i8** %mem_ptr, align 8
  %61 = load i8*, i8** %mem_ptr, align 8
  %arraydecay105 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %cmp106 = icmp ult i8* %61, %arraydecay105
  br i1 %cmp106, label %if.then108, label %if.end115

if.then108:                                       ; preds = %while.end100
  %62 = load i8*, i8** %end, align 8
  %arraydecay109 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %63 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast110 = ptrtoint i8* %arraydecay109 to i64
  %sub.ptr.rhs.cast111 = ptrtoint i8* %63 to i64
  %sub.ptr.sub112 = sub i64 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast111
  %idx.neg113 = sub i64 0, %sub.ptr.sub112
  %add.ptr114 = getelementptr inbounds i8, i8* %62, i64 %idx.neg113
  store i8* %add.ptr114, i8** %mem_ptr, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then108, %while.end100
  br label %while.cond116

while.cond116:                                    ; preds = %if.end185, %if.end115
  %64 = load i8*, i8** %mem_ptr, align 8
  %65 = load i8, i8* %64, align 1
  %tobool117 = icmp ne i8 %65, 0
  br i1 %tobool117, label %while.body118, label %while.end186

while.body118:                                    ; preds = %while.cond116
  %66 = load i8*, i8** %mem_ptr, align 8
  %add.ptr119 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %add.ptr119, i8** %mem_ptr, align 8
  %67 = load i8*, i8** %mem_ptr, align 8
  %68 = load i8*, i8** %end, align 8
  %cmp120 = icmp uge i8* %67, %68
  br i1 %cmp120, label %if.then122, label %if.end128

if.then122:                                       ; preds = %while.body118
  %arraydecay123 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %69 = load i8*, i8** %end, align 8
  %70 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast124 = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast125 = ptrtoint i8* %70 to i64
  %sub.ptr.sub126 = sub i64 %sub.ptr.lhs.cast124, %sub.ptr.rhs.cast125
  %add.ptr127 = getelementptr inbounds i8, i8* %arraydecay123, i64 %sub.ptr.sub126
  store i8* %add.ptr127, i8** %mem_ptr, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.then122, %while.body118
  br label %while.cond129

while.cond129:                                    ; preds = %if.end172, %if.end128
  %71 = load i8*, i8** %mem_ptr, align 8
  %72 = load i8, i8* %71, align 1
  %tobool130 = icmp ne i8 %72, 0
  br i1 %tobool130, label %while.body131, label %while.end173

while.body131:                                    ; preds = %while.cond129
  %73 = load i8*, i8** %mem_ptr, align 8
  %74 = load i8, i8* %73, align 1
  %conv132 = sext i8 %74 to i32
  %sub133 = sub nsw i32 %conv132, 1
  %conv134 = trunc i32 %sub133 to i8
  store i8 %conv134, i8* %73, align 1
  %75 = load i8*, i8** %mem_ptr, align 8
  %add.ptr135 = getelementptr inbounds i8, i8* %75, i64 1
  store i8* %add.ptr135, i8** %mem_ptr, align 8
  %76 = load i8*, i8** %mem_ptr, align 8
  %77 = load i8*, i8** %end, align 8
  %cmp136 = icmp uge i8* %76, %77
  br i1 %cmp136, label %if.then138, label %if.end144

if.then138:                                       ; preds = %while.body131
  %arraydecay139 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %78 = load i8*, i8** %end, align 8
  %79 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast140 = ptrtoint i8* %78 to i64
  %sub.ptr.rhs.cast141 = ptrtoint i8* %79 to i64
  %sub.ptr.sub142 = sub i64 %sub.ptr.lhs.cast140, %sub.ptr.rhs.cast141
  %add.ptr143 = getelementptr inbounds i8, i8* %arraydecay139, i64 %sub.ptr.sub142
  store i8* %add.ptr143, i8** %mem_ptr, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.then138, %while.body131
  %80 = load i8*, i8** %mem_ptr, align 8
  %81 = load i8, i8* %80, align 1
  %conv145 = sext i8 %81 to i32
  %add146 = add nsw i32 %conv145, 1
  %conv147 = trunc i32 %add146 to i8
  store i8 %conv147, i8* %80, align 1
  %82 = load i8*, i8** %mem_ptr, align 8
  %add.ptr148 = getelementptr inbounds i8, i8* %82, i64 -2
  store i8* %add.ptr148, i8** %mem_ptr, align 8
  %83 = load i8*, i8** %mem_ptr, align 8
  %arraydecay149 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %cmp150 = icmp ult i8* %83, %arraydecay149
  br i1 %cmp150, label %if.then152, label %if.end159

if.then152:                                       ; preds = %if.end144
  %84 = load i8*, i8** %end, align 8
  %arraydecay153 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %85 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast154 = ptrtoint i8* %arraydecay153 to i64
  %sub.ptr.rhs.cast155 = ptrtoint i8* %85 to i64
  %sub.ptr.sub156 = sub i64 %sub.ptr.lhs.cast154, %sub.ptr.rhs.cast155
  %idx.neg157 = sub i64 0, %sub.ptr.sub156
  %add.ptr158 = getelementptr inbounds i8, i8* %84, i64 %idx.neg157
  store i8* %add.ptr158, i8** %mem_ptr, align 8
  br label %if.end159

if.end159:                                        ; preds = %if.then152, %if.end144
  %86 = load i8*, i8** %mem_ptr, align 8
  %87 = load i8, i8* %86, align 1
  %conv160 = sext i8 %87 to i32
  %add161 = add nsw i32 %conv160, 4
  %conv162 = trunc i32 %add161 to i8
  store i8 %conv162, i8* %86, align 1
  %88 = load i8*, i8** %mem_ptr, align 8
  %add.ptr163 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %add.ptr163, i8** %mem_ptr, align 8
  %89 = load i8*, i8** %mem_ptr, align 8
  %90 = load i8*, i8** %end, align 8
  %cmp164 = icmp uge i8* %89, %90
  br i1 %cmp164, label %if.then166, label %if.end172

if.then166:                                       ; preds = %if.end159
  %arraydecay167 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %91 = load i8*, i8** %end, align 8
  %92 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast168 = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast169 = ptrtoint i8* %92 to i64
  %sub.ptr.sub170 = sub i64 %sub.ptr.lhs.cast168, %sub.ptr.rhs.cast169
  %add.ptr171 = getelementptr inbounds i8, i8* %arraydecay167, i64 %sub.ptr.sub170
  store i8* %add.ptr171, i8** %mem_ptr, align 8
  br label %if.end172

if.end172:                                        ; preds = %if.then166, %if.end159
  br label %while.cond129, !llvm.loop !7

while.end173:                                     ; preds = %while.cond129
  %93 = load i8*, i8** %mem_ptr, align 8
  %add.ptr174 = getelementptr inbounds i8, i8* %93, i64 -2
  store i8* %add.ptr174, i8** %mem_ptr, align 8
  %94 = load i8*, i8** %mem_ptr, align 8
  %arraydecay175 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %cmp176 = icmp ult i8* %94, %arraydecay175
  br i1 %cmp176, label %if.then178, label %if.end185

if.then178:                                       ; preds = %while.end173
  %95 = load i8*, i8** %end, align 8
  %arraydecay179 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %96 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast180 = ptrtoint i8* %arraydecay179 to i64
  %sub.ptr.rhs.cast181 = ptrtoint i8* %96 to i64
  %sub.ptr.sub182 = sub i64 %sub.ptr.lhs.cast180, %sub.ptr.rhs.cast181
  %idx.neg183 = sub i64 0, %sub.ptr.sub182
  %add.ptr184 = getelementptr inbounds i8, i8* %95, i64 %idx.neg183
  store i8* %add.ptr184, i8** %mem_ptr, align 8
  br label %if.end185

if.end185:                                        ; preds = %if.then178, %while.end173
  br label %while.cond116, !llvm.loop !8

while.end186:                                     ; preds = %while.cond116
  %97 = load i8*, i8** %mem_ptr, align 8
  %add.ptr187 = getelementptr inbounds i8, i8* %97, i64 1
  store i8* %add.ptr187, i8** %mem_ptr, align 8
  %98 = load i8*, i8** %mem_ptr, align 8
  %99 = load i8*, i8** %end, align 8
  %cmp188 = icmp uge i8* %98, %99
  br i1 %cmp188, label %if.then190, label %if.end196

if.then190:                                       ; preds = %while.end186
  %arraydecay191 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %100 = load i8*, i8** %end, align 8
  %101 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast192 = ptrtoint i8* %100 to i64
  %sub.ptr.rhs.cast193 = ptrtoint i8* %101 to i64
  %sub.ptr.sub194 = sub i64 %sub.ptr.lhs.cast192, %sub.ptr.rhs.cast193
  %add.ptr195 = getelementptr inbounds i8, i8* %arraydecay191, i64 %sub.ptr.sub194
  store i8* %add.ptr195, i8** %mem_ptr, align 8
  br label %if.end196

if.end196:                                        ; preds = %if.then190, %while.end186
  %102 = load i8*, i8** %mem_ptr, align 8
  %103 = load i8, i8* %102, align 1
  %conv197 = sext i8 %103 to i32
  %call198 = call i32 @putchar(i32 %conv197)
  %104 = load i8*, i8** %mem_ptr, align 8
  %105 = load i8, i8* %104, align 1
  %conv199 = sext i8 %105 to i32
  %add200 = add nsw i32 %conv199, 7
  %conv201 = trunc i32 %add200 to i8
  store i8 %conv201, i8* %104, align 1
  %106 = load i8*, i8** %mem_ptr, align 8
  %107 = load i8, i8* %106, align 1
  %conv202 = sext i8 %107 to i32
  %call203 = call i32 @putchar(i32 %conv202)
  %108 = load i8*, i8** %mem_ptr, align 8
  %109 = load i8, i8* %108, align 1
  %conv204 = sext i8 %109 to i32
  %call205 = call i32 @putchar(i32 %conv204)
  %110 = load i8*, i8** %mem_ptr, align 8
  %111 = load i8, i8* %110, align 1
  %conv206 = sext i8 %111 to i32
  %add207 = add nsw i32 %conv206, 3
  %conv208 = trunc i32 %add207 to i8
  store i8 %conv208, i8* %110, align 1
  %112 = load i8*, i8** %mem_ptr, align 8
  %113 = load i8, i8* %112, align 1
  %conv209 = sext i8 %113 to i32
  %call210 = call i32 @putchar(i32 %conv209)
  %114 = load i8*, i8** %mem_ptr, align 8
  %add.ptr211 = getelementptr inbounds i8, i8* %114, i64 2
  store i8* %add.ptr211, i8** %mem_ptr, align 8
  %115 = load i8*, i8** %mem_ptr, align 8
  %116 = load i8*, i8** %end, align 8
  %cmp212 = icmp uge i8* %115, %116
  br i1 %cmp212, label %if.then214, label %if.end220

if.then214:                                       ; preds = %if.end196
  %arraydecay215 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %117 = load i8*, i8** %end, align 8
  %118 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast216 = ptrtoint i8* %117 to i64
  %sub.ptr.rhs.cast217 = ptrtoint i8* %118 to i64
  %sub.ptr.sub218 = sub i64 %sub.ptr.lhs.cast216, %sub.ptr.rhs.cast217
  %add.ptr219 = getelementptr inbounds i8, i8* %arraydecay215, i64 %sub.ptr.sub218
  store i8* %add.ptr219, i8** %mem_ptr, align 8
  br label %if.end220

if.end220:                                        ; preds = %if.then214, %if.end196
  %119 = load i8*, i8** %mem_ptr, align 8
  %120 = load i8, i8* %119, align 1
  %conv221 = sext i8 %120 to i32
  %add222 = add nsw i32 %conv221, 7
  %conv223 = trunc i32 %add222 to i8
  store i8 %conv223, i8* %119, align 1
  %121 = load i8*, i8** %mem_ptr, align 8
  %122 = load i8, i8* %121, align 1
  %conv224 = sext i8 %122 to i32
  %call225 = call i32 @putchar(i32 %conv224)
  %123 = load i8*, i8** %mem_ptr, align 8
  %add.ptr226 = getelementptr inbounds i8, i8* %123, i64 -3
  store i8* %add.ptr226, i8** %mem_ptr, align 8
  %124 = load i8*, i8** %mem_ptr, align 8
  %arraydecay227 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %cmp228 = icmp ult i8* %124, %arraydecay227
  br i1 %cmp228, label %if.then230, label %if.end237

if.then230:                                       ; preds = %if.end220
  %125 = load i8*, i8** %end, align 8
  %arraydecay231 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %126 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast232 = ptrtoint i8* %arraydecay231 to i64
  %sub.ptr.rhs.cast233 = ptrtoint i8* %126 to i64
  %sub.ptr.sub234 = sub i64 %sub.ptr.lhs.cast232, %sub.ptr.rhs.cast233
  %idx.neg235 = sub i64 0, %sub.ptr.sub234
  %add.ptr236 = getelementptr inbounds i8, i8* %125, i64 %idx.neg235
  store i8* %add.ptr236, i8** %mem_ptr, align 8
  br label %if.end237

if.end237:                                        ; preds = %if.then230, %if.end220
  br label %while.cond238

while.cond238:                                    ; preds = %if.end276, %if.end237
  %127 = load i8*, i8** %mem_ptr, align 8
  %128 = load i8, i8* %127, align 1
  %tobool239 = icmp ne i8 %128, 0
  br i1 %tobool239, label %while.body240, label %while.end277

while.body240:                                    ; preds = %while.cond238
  br label %while.cond241

while.cond241:                                    ; preds = %while.body243, %while.body240
  %129 = load i8*, i8** %mem_ptr, align 8
  %130 = load i8, i8* %129, align 1
  %tobool242 = icmp ne i8 %130, 0
  br i1 %tobool242, label %while.body243, label %while.end247

while.body243:                                    ; preds = %while.cond241
  %131 = load i8*, i8** %mem_ptr, align 8
  %132 = load i8, i8* %131, align 1
  %conv244 = sext i8 %132 to i32
  %sub245 = sub nsw i32 %conv244, 1
  %conv246 = trunc i32 %sub245 to i8
  store i8 %conv246, i8* %131, align 1
  br label %while.cond241, !llvm.loop !9

while.end247:                                     ; preds = %while.cond241
  %133 = load i8*, i8** %mem_ptr, align 8
  %add.ptr248 = getelementptr inbounds i8, i8* %133, i64 -1
  store i8* %add.ptr248, i8** %mem_ptr, align 8
  %134 = load i8*, i8** %mem_ptr, align 8
  %arraydecay249 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %cmp250 = icmp ult i8* %134, %arraydecay249
  br i1 %cmp250, label %if.then252, label %if.end259

if.then252:                                       ; preds = %while.end247
  %135 = load i8*, i8** %end, align 8
  %arraydecay253 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %136 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast254 = ptrtoint i8* %arraydecay253 to i64
  %sub.ptr.rhs.cast255 = ptrtoint i8* %136 to i64
  %sub.ptr.sub256 = sub i64 %sub.ptr.lhs.cast254, %sub.ptr.rhs.cast255
  %idx.neg257 = sub i64 0, %sub.ptr.sub256
  %add.ptr258 = getelementptr inbounds i8, i8* %135, i64 %idx.neg257
  store i8* %add.ptr258, i8** %mem_ptr, align 8
  br label %if.end259

if.end259:                                        ; preds = %if.then252, %while.end247
  br label %while.cond260

while.cond260:                                    ; preds = %while.body262, %if.end259
  %137 = load i8*, i8** %mem_ptr, align 8
  %138 = load i8, i8* %137, align 1
  %tobool261 = icmp ne i8 %138, 0
  br i1 %tobool261, label %while.body262, label %while.end266

while.body262:                                    ; preds = %while.cond260
  %139 = load i8*, i8** %mem_ptr, align 8
  %140 = load i8, i8* %139, align 1
  %conv263 = sext i8 %140 to i32
  %sub264 = sub nsw i32 %conv263, 1
  %conv265 = trunc i32 %sub264 to i8
  store i8 %conv265, i8* %139, align 1
  br label %while.cond260, !llvm.loop !10

while.end266:                                     ; preds = %while.cond260
  %141 = load i8*, i8** %mem_ptr, align 8
  %add.ptr267 = getelementptr inbounds i8, i8* %141, i64 1
  store i8* %add.ptr267, i8** %mem_ptr, align 8
  %142 = load i8*, i8** %mem_ptr, align 8
  %143 = load i8*, i8** %end, align 8
  %cmp268 = icmp uge i8* %142, %143
  br i1 %cmp268, label %if.then270, label %if.end276

if.then270:                                       ; preds = %while.end266
  %arraydecay271 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %144 = load i8*, i8** %end, align 8
  %145 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast272 = ptrtoint i8* %144 to i64
  %sub.ptr.rhs.cast273 = ptrtoint i8* %145 to i64
  %sub.ptr.sub274 = sub i64 %sub.ptr.lhs.cast272, %sub.ptr.rhs.cast273
  %add.ptr275 = getelementptr inbounds i8, i8* %arraydecay271, i64 %sub.ptr.sub274
  store i8* %add.ptr275, i8** %mem_ptr, align 8
  br label %if.end276

if.end276:                                        ; preds = %if.then270, %while.end266
  br label %while.cond238, !llvm.loop !11

while.end277:                                     ; preds = %while.cond238
  %146 = load i8*, i8** %mem_ptr, align 8
  %add.ptr278 = getelementptr inbounds i8, i8* %146, i64 -1
  store i8* %add.ptr278, i8** %mem_ptr, align 8
  %147 = load i8*, i8** %mem_ptr, align 8
  %arraydecay279 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %cmp280 = icmp ult i8* %147, %arraydecay279
  br i1 %cmp280, label %if.then282, label %if.end289

if.then282:                                       ; preds = %while.end277
  %148 = load i8*, i8** %end, align 8
  %arraydecay283 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %149 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast284 = ptrtoint i8* %arraydecay283 to i64
  %sub.ptr.rhs.cast285 = ptrtoint i8* %149 to i64
  %sub.ptr.sub286 = sub i64 %sub.ptr.lhs.cast284, %sub.ptr.rhs.cast285
  %idx.neg287 = sub i64 0, %sub.ptr.sub286
  %add.ptr288 = getelementptr inbounds i8, i8* %148, i64 %idx.neg287
  store i8* %add.ptr288, i8** %mem_ptr, align 8
  br label %if.end289

if.end289:                                        ; preds = %if.then282, %while.end277
  %150 = load i8*, i8** %mem_ptr, align 8
  %151 = load i8, i8* %150, align 1
  %conv290 = sext i8 %151 to i32
  %add291 = add nsw i32 %conv290, 15
  %conv292 = trunc i32 %add291 to i8
  store i8 %conv292, i8* %150, align 1
  %152 = load i8*, i8** %mem_ptr, align 8
  %153 = load i8, i8* %152, align 1
  %conv293 = sext i8 %153 to i32
  %call294 = call i32 @putchar(i32 %conv293)
  %154 = load i8*, i8** %mem_ptr, align 8
  %add.ptr295 = getelementptr inbounds i8, i8* %154, i64 2
  store i8* %add.ptr295, i8** %mem_ptr, align 8
  %155 = load i8*, i8** %mem_ptr, align 8
  %156 = load i8*, i8** %end, align 8
  %cmp296 = icmp uge i8* %155, %156
  br i1 %cmp296, label %if.then298, label %if.end304

if.then298:                                       ; preds = %if.end289
  %arraydecay299 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %157 = load i8*, i8** %end, align 8
  %158 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast300 = ptrtoint i8* %157 to i64
  %sub.ptr.rhs.cast301 = ptrtoint i8* %158 to i64
  %sub.ptr.sub302 = sub i64 %sub.ptr.lhs.cast300, %sub.ptr.rhs.cast301
  %add.ptr303 = getelementptr inbounds i8, i8* %arraydecay299, i64 %sub.ptr.sub302
  store i8* %add.ptr303, i8** %mem_ptr, align 8
  br label %if.end304

if.end304:                                        ; preds = %if.then298, %if.end289
  %159 = load i8*, i8** %mem_ptr, align 8
  %160 = load i8, i8* %159, align 1
  %conv305 = sext i8 %160 to i32
  %call306 = call i32 @putchar(i32 %conv305)
  %161 = load i8*, i8** %mem_ptr, align 8
  %162 = load i8, i8* %161, align 1
  %conv307 = sext i8 %162 to i32
  %add308 = add nsw i32 %conv307, 3
  %conv309 = trunc i32 %add308 to i8
  store i8 %conv309, i8* %161, align 1
  %163 = load i8*, i8** %mem_ptr, align 8
  %164 = load i8, i8* %163, align 1
  %conv310 = sext i8 %164 to i32
  %call311 = call i32 @putchar(i32 %conv310)
  %165 = load i8*, i8** %mem_ptr, align 8
  %166 = load i8, i8* %165, align 1
  %conv312 = sext i8 %166 to i32
  %sub313 = sub nsw i32 %conv312, 6
  %conv314 = trunc i32 %sub313 to i8
  store i8 %conv314, i8* %165, align 1
  %167 = load i8*, i8** %mem_ptr, align 8
  %168 = load i8, i8* %167, align 1
  %conv315 = sext i8 %168 to i32
  %call316 = call i32 @putchar(i32 %conv315)
  %169 = load i8*, i8** %mem_ptr, align 8
  %170 = load i8, i8* %169, align 1
  %conv317 = sext i8 %170 to i32
  %sub318 = sub nsw i32 %conv317, 8
  %conv319 = trunc i32 %sub318 to i8
  store i8 %conv319, i8* %169, align 1
  %171 = load i8*, i8** %mem_ptr, align 8
  %172 = load i8, i8* %171, align 1
  %conv320 = sext i8 %172 to i32
  %call321 = call i32 @putchar(i32 %conv320)
  %173 = load i8*, i8** %mem_ptr, align 8
  %add.ptr322 = getelementptr inbounds i8, i8* %173, i64 2
  store i8* %add.ptr322, i8** %mem_ptr, align 8
  %174 = load i8*, i8** %mem_ptr, align 8
  %175 = load i8*, i8** %end, align 8
  %cmp323 = icmp uge i8* %174, %175
  br i1 %cmp323, label %if.then325, label %if.end331

if.then325:                                       ; preds = %if.end304
  %arraydecay326 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %176 = load i8*, i8** %end, align 8
  %177 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast327 = ptrtoint i8* %176 to i64
  %sub.ptr.rhs.cast328 = ptrtoint i8* %177 to i64
  %sub.ptr.sub329 = sub i64 %sub.ptr.lhs.cast327, %sub.ptr.rhs.cast328
  %add.ptr330 = getelementptr inbounds i8, i8* %arraydecay326, i64 %sub.ptr.sub329
  store i8* %add.ptr330, i8** %mem_ptr, align 8
  br label %if.end331

if.end331:                                        ; preds = %if.then325, %if.end304
  %178 = load i8*, i8** %mem_ptr, align 8
  %179 = load i8, i8* %178, align 1
  %conv332 = sext i8 %179 to i32
  %add333 = add nsw i32 %conv332, 1
  %conv334 = trunc i32 %add333 to i8
  store i8 %conv334, i8* %178, align 1
  %180 = load i8*, i8** %mem_ptr, align 8
  %181 = load i8, i8* %180, align 1
  %conv335 = sext i8 %181 to i32
  %call336 = call i32 @putchar(i32 %conv335)
  %182 = load i8*, i8** %mem_ptr, align 8
  %add.ptr337 = getelementptr inbounds i8, i8* %182, i64 1
  store i8* %add.ptr337, i8** %mem_ptr, align 8
  %183 = load i8*, i8** %mem_ptr, align 8
  %184 = load i8*, i8** %end, align 8
  %cmp338 = icmp uge i8* %183, %184
  br i1 %cmp338, label %if.then340, label %if.end346

if.then340:                                       ; preds = %if.end331
  %arraydecay341 = getelementptr inbounds [30000 x i8], [30000 x i8]* %mem, i64 0, i64 0
  %185 = load i8*, i8** %end, align 8
  %186 = load i8*, i8** %mem_ptr, align 8
  %sub.ptr.lhs.cast342 = ptrtoint i8* %185 to i64
  %sub.ptr.rhs.cast343 = ptrtoint i8* %186 to i64
  %sub.ptr.sub344 = sub i64 %sub.ptr.lhs.cast342, %sub.ptr.rhs.cast343
  %add.ptr345 = getelementptr inbounds i8, i8* %arraydecay341, i64 %sub.ptr.sub344
  store i8* %add.ptr345, i8** %mem_ptr, align 8
  br label %if.end346

if.end346:                                        ; preds = %if.then340, %if.end331
  %187 = load i8*, i8** %mem_ptr, align 8
  %188 = load i8, i8* %187, align 1
  %conv347 = sext i8 %188 to i32
  %add348 = add nsw i32 %conv347, 4
  %conv349 = trunc i32 %add348 to i8
  store i8 %conv349, i8* %187, align 1
  %189 = load i8*, i8** %mem_ptr, align 8
  %190 = load i8, i8* %189, align 1
  %conv350 = sext i8 %190 to i32
  %call351 = call i32 @putchar(i32 %conv350)
  %191 = load i32, i32* %retval, align 4
  ret i32 %191
}

declare dso_local i32 @putchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!11 = distinct !{!11, !5}
