; ModuleID = './code/309-32389sda.bf.c'
source_filename = "./code/309-32389sda.bf.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %mem = alloca [30000 x i8], align 1
  %mem_ptr = alloca ptr, align 8
  %end = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  store ptr %arraydecay, ptr %mem_ptr, align 8
  %arraydecay1 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 30000
  store ptr %add.ptr, ptr %end, align 8
  %0 = load ptr, ptr %mem_ptr, align 8
  %add.ptr2 = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %add.ptr2, ptr %mem_ptr, align 8
  %1 = load ptr, ptr %mem_ptr, align 8
  %2 = load ptr, ptr %end, align 8
  %cmp = icmp uge ptr %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay3 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %3 = load ptr, ptr %end, align 8
  %4 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr4 = getelementptr inbounds i8, ptr %arraydecay3, i64 %sub.ptr.sub
  store ptr %add.ptr4, ptr %mem_ptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %mem_ptr, align 8
  %6 = load i8, ptr %5, align 1
  %conv = sext i8 %6 to i32
  %add = add nsw i32 %conv, 8
  %conv5 = trunc i32 %add to i8
  store i8 %conv5, ptr %5, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %if.end
  %7 = load ptr, ptr %mem_ptr, align 8
  %8 = load i8, ptr %7, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %mem_ptr, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %9, i64 -1
  store ptr %add.ptr6, ptr %mem_ptr, align 8
  %10 = load ptr, ptr %mem_ptr, align 8
  %arraydecay7 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %cmp8 = icmp ult ptr %10, %arraydecay7
  br i1 %cmp8, label %if.then10, label %if.end16

if.then10:                                        ; preds = %while.body
  %11 = load ptr, ptr %end, align 8
  %arraydecay11 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %12 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast12 = ptrtoint ptr %arraydecay11 to i64
  %sub.ptr.rhs.cast13 = ptrtoint ptr %12 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %idx.neg = sub i64 0, %sub.ptr.sub14
  %add.ptr15 = getelementptr inbounds i8, ptr %11, i64 %idx.neg
  store ptr %add.ptr15, ptr %mem_ptr, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %while.body
  %13 = load ptr, ptr %mem_ptr, align 8
  %14 = load i8, ptr %13, align 1
  %conv17 = sext i8 %14 to i32
  %add18 = add nsw i32 %conv17, 9
  %conv19 = trunc i32 %add18 to i8
  store i8 %conv19, ptr %13, align 1
  %15 = load ptr, ptr %mem_ptr, align 8
  %add.ptr20 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %add.ptr20, ptr %mem_ptr, align 8
  %16 = load ptr, ptr %mem_ptr, align 8
  %17 = load ptr, ptr %end, align 8
  %cmp21 = icmp uge ptr %16, %17
  br i1 %cmp21, label %if.then23, label %if.end29

if.then23:                                        ; preds = %if.end16
  %arraydecay24 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %18 = load ptr, ptr %end, align 8
  %19 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast25 = ptrtoint ptr %18 to i64
  %sub.ptr.rhs.cast26 = ptrtoint ptr %19 to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %add.ptr28 = getelementptr inbounds i8, ptr %arraydecay24, i64 %sub.ptr.sub27
  store ptr %add.ptr28, ptr %mem_ptr, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.end16
  %20 = load ptr, ptr %mem_ptr, align 8
  %21 = load i8, ptr %20, align 1
  %conv30 = sext i8 %21 to i32
  %sub = sub nsw i32 %conv30, 1
  %conv31 = trunc i32 %sub to i8
  store i8 %conv31, ptr %20, align 1
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %22 = load ptr, ptr %mem_ptr, align 8
  %add.ptr32 = getelementptr inbounds i8, ptr %22, i64 -1
  store ptr %add.ptr32, ptr %mem_ptr, align 8
  %23 = load ptr, ptr %mem_ptr, align 8
  %arraydecay33 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %cmp34 = icmp ult ptr %23, %arraydecay33
  br i1 %cmp34, label %if.then36, label %if.end43

if.then36:                                        ; preds = %while.end
  %24 = load ptr, ptr %end, align 8
  %arraydecay37 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %25 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast38 = ptrtoint ptr %arraydecay37 to i64
  %sub.ptr.rhs.cast39 = ptrtoint ptr %25 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %idx.neg41 = sub i64 0, %sub.ptr.sub40
  %add.ptr42 = getelementptr inbounds i8, ptr %24, i64 %idx.neg41
  store ptr %add.ptr42, ptr %mem_ptr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %while.end
  %26 = load ptr, ptr %mem_ptr, align 8
  %27 = load i8, ptr %26, align 1
  %conv44 = sext i8 %27 to i32
  %call = call i32 @putchar(i32 noundef %conv44)
  %28 = load ptr, ptr %mem_ptr, align 8
  %add.ptr45 = getelementptr inbounds i8, ptr %28, i64 2
  store ptr %add.ptr45, ptr %mem_ptr, align 8
  %29 = load ptr, ptr %mem_ptr, align 8
  %30 = load ptr, ptr %end, align 8
  %cmp46 = icmp uge ptr %29, %30
  br i1 %cmp46, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.end43
  %arraydecay49 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %31 = load ptr, ptr %end, align 8
  %32 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast50 = ptrtoint ptr %31 to i64
  %sub.ptr.rhs.cast51 = ptrtoint ptr %32 to i64
  %sub.ptr.sub52 = sub i64 %sub.ptr.lhs.cast50, %sub.ptr.rhs.cast51
  %add.ptr53 = getelementptr inbounds i8, ptr %arraydecay49, i64 %sub.ptr.sub52
  store ptr %add.ptr53, ptr %mem_ptr, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.end43
  %33 = load ptr, ptr %mem_ptr, align 8
  %34 = load i8, ptr %33, align 1
  %conv55 = sext i8 %34 to i32
  %add56 = add nsw i32 %conv55, 1
  %conv57 = trunc i32 %add56 to i8
  store i8 %conv57, ptr %33, align 1
  %35 = load ptr, ptr %mem_ptr, align 8
  %add.ptr58 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %add.ptr58, ptr %mem_ptr, align 8
  %36 = load ptr, ptr %mem_ptr, align 8
  %37 = load ptr, ptr %end, align 8
  %cmp59 = icmp uge ptr %36, %37
  br i1 %cmp59, label %if.then61, label %if.end67

if.then61:                                        ; preds = %if.end54
  %arraydecay62 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %38 = load ptr, ptr %end, align 8
  %39 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast63 = ptrtoint ptr %38 to i64
  %sub.ptr.rhs.cast64 = ptrtoint ptr %39 to i64
  %sub.ptr.sub65 = sub i64 %sub.ptr.lhs.cast63, %sub.ptr.rhs.cast64
  %add.ptr66 = getelementptr inbounds i8, ptr %arraydecay62, i64 %sub.ptr.sub65
  store ptr %add.ptr66, ptr %mem_ptr, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then61, %if.end54
  %40 = load ptr, ptr %mem_ptr, align 8
  %41 = load i8, ptr %40, align 1
  %conv68 = sext i8 %41 to i32
  %add69 = add nsw i32 %conv68, 1
  %conv70 = trunc i32 %add69 to i8
  store i8 %conv70, ptr %40, align 1
  %42 = load ptr, ptr %mem_ptr, align 8
  %add.ptr71 = getelementptr inbounds i8, ptr %42, i64 1
  store ptr %add.ptr71, ptr %mem_ptr, align 8
  %43 = load ptr, ptr %mem_ptr, align 8
  %44 = load ptr, ptr %end, align 8
  %cmp72 = icmp uge ptr %43, %44
  br i1 %cmp72, label %if.then74, label %if.end80

if.then74:                                        ; preds = %if.end67
  %arraydecay75 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %45 = load ptr, ptr %end, align 8
  %46 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast76 = ptrtoint ptr %45 to i64
  %sub.ptr.rhs.cast77 = ptrtoint ptr %46 to i64
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77
  %add.ptr79 = getelementptr inbounds i8, ptr %arraydecay75, i64 %sub.ptr.sub78
  store ptr %add.ptr79, ptr %mem_ptr, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then74, %if.end67
  %47 = load ptr, ptr %mem_ptr, align 8
  %48 = load i8, ptr %47, align 1
  %conv81 = sext i8 %48 to i32
  %add82 = add nsw i32 %conv81, 2
  %conv83 = trunc i32 %add82 to i8
  store i8 %conv83, ptr %47, align 1
  %49 = load ptr, ptr %mem_ptr, align 8
  %add.ptr84 = getelementptr inbounds i8, ptr %49, i64 1
  store ptr %add.ptr84, ptr %mem_ptr, align 8
  %50 = load ptr, ptr %mem_ptr, align 8
  %51 = load ptr, ptr %end, align 8
  %cmp85 = icmp uge ptr %50, %51
  br i1 %cmp85, label %if.then87, label %if.end93

if.then87:                                        ; preds = %if.end80
  %arraydecay88 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %52 = load ptr, ptr %end, align 8
  %53 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast89 = ptrtoint ptr %52 to i64
  %sub.ptr.rhs.cast90 = ptrtoint ptr %53 to i64
  %sub.ptr.sub91 = sub i64 %sub.ptr.lhs.cast89, %sub.ptr.rhs.cast90
  %add.ptr92 = getelementptr inbounds i8, ptr %arraydecay88, i64 %sub.ptr.sub91
  store ptr %add.ptr92, ptr %mem_ptr, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then87, %if.end80
  br label %while.cond94

while.cond94:                                     ; preds = %while.body96, %if.end93
  %54 = load ptr, ptr %mem_ptr, align 8
  %55 = load i8, ptr %54, align 1
  %tobool95 = icmp ne i8 %55, 0
  br i1 %tobool95, label %while.body96, label %while.end100

while.body96:                                     ; preds = %while.cond94
  %56 = load ptr, ptr %mem_ptr, align 8
  %57 = load i8, ptr %56, align 1
  %conv97 = sext i8 %57 to i32
  %sub98 = sub nsw i32 %conv97, 1
  %conv99 = trunc i32 %sub98 to i8
  store i8 %conv99, ptr %56, align 1
  br label %while.cond94, !llvm.loop !7

while.end100:                                     ; preds = %while.cond94
  %58 = load ptr, ptr %mem_ptr, align 8
  %59 = load i8, ptr %58, align 1
  %conv101 = sext i8 %59 to i32
  %add102 = add nsw i32 %conv101, 1
  %conv103 = trunc i32 %add102 to i8
  store i8 %conv103, ptr %58, align 1
  %60 = load ptr, ptr %mem_ptr, align 8
  %add.ptr104 = getelementptr inbounds i8, ptr %60, i64 -1
  store ptr %add.ptr104, ptr %mem_ptr, align 8
  %61 = load ptr, ptr %mem_ptr, align 8
  %arraydecay105 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %cmp106 = icmp ult ptr %61, %arraydecay105
  br i1 %cmp106, label %if.then108, label %if.end115

if.then108:                                       ; preds = %while.end100
  %62 = load ptr, ptr %end, align 8
  %arraydecay109 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %63 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast110 = ptrtoint ptr %arraydecay109 to i64
  %sub.ptr.rhs.cast111 = ptrtoint ptr %63 to i64
  %sub.ptr.sub112 = sub i64 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast111
  %idx.neg113 = sub i64 0, %sub.ptr.sub112
  %add.ptr114 = getelementptr inbounds i8, ptr %62, i64 %idx.neg113
  store ptr %add.ptr114, ptr %mem_ptr, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then108, %while.end100
  br label %while.cond116

while.cond116:                                    ; preds = %if.end185, %if.end115
  %64 = load ptr, ptr %mem_ptr, align 8
  %65 = load i8, ptr %64, align 1
  %tobool117 = icmp ne i8 %65, 0
  br i1 %tobool117, label %while.body118, label %while.end186

while.body118:                                    ; preds = %while.cond116
  %66 = load ptr, ptr %mem_ptr, align 8
  %add.ptr119 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %add.ptr119, ptr %mem_ptr, align 8
  %67 = load ptr, ptr %mem_ptr, align 8
  %68 = load ptr, ptr %end, align 8
  %cmp120 = icmp uge ptr %67, %68
  br i1 %cmp120, label %if.then122, label %if.end128

if.then122:                                       ; preds = %while.body118
  %arraydecay123 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %69 = load ptr, ptr %end, align 8
  %70 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast124 = ptrtoint ptr %69 to i64
  %sub.ptr.rhs.cast125 = ptrtoint ptr %70 to i64
  %sub.ptr.sub126 = sub i64 %sub.ptr.lhs.cast124, %sub.ptr.rhs.cast125
  %add.ptr127 = getelementptr inbounds i8, ptr %arraydecay123, i64 %sub.ptr.sub126
  store ptr %add.ptr127, ptr %mem_ptr, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.then122, %while.body118
  br label %while.cond129

while.cond129:                                    ; preds = %if.end172, %if.end128
  %71 = load ptr, ptr %mem_ptr, align 8
  %72 = load i8, ptr %71, align 1
  %tobool130 = icmp ne i8 %72, 0
  br i1 %tobool130, label %while.body131, label %while.end173

while.body131:                                    ; preds = %while.cond129
  %73 = load ptr, ptr %mem_ptr, align 8
  %74 = load i8, ptr %73, align 1
  %conv132 = sext i8 %74 to i32
  %sub133 = sub nsw i32 %conv132, 1
  %conv134 = trunc i32 %sub133 to i8
  store i8 %conv134, ptr %73, align 1
  %75 = load ptr, ptr %mem_ptr, align 8
  %add.ptr135 = getelementptr inbounds i8, ptr %75, i64 1
  store ptr %add.ptr135, ptr %mem_ptr, align 8
  %76 = load ptr, ptr %mem_ptr, align 8
  %77 = load ptr, ptr %end, align 8
  %cmp136 = icmp uge ptr %76, %77
  br i1 %cmp136, label %if.then138, label %if.end144

if.then138:                                       ; preds = %while.body131
  %arraydecay139 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %78 = load ptr, ptr %end, align 8
  %79 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast140 = ptrtoint ptr %78 to i64
  %sub.ptr.rhs.cast141 = ptrtoint ptr %79 to i64
  %sub.ptr.sub142 = sub i64 %sub.ptr.lhs.cast140, %sub.ptr.rhs.cast141
  %add.ptr143 = getelementptr inbounds i8, ptr %arraydecay139, i64 %sub.ptr.sub142
  store ptr %add.ptr143, ptr %mem_ptr, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.then138, %while.body131
  %80 = load ptr, ptr %mem_ptr, align 8
  %81 = load i8, ptr %80, align 1
  %conv145 = sext i8 %81 to i32
  %add146 = add nsw i32 %conv145, 1
  %conv147 = trunc i32 %add146 to i8
  store i8 %conv147, ptr %80, align 1
  %82 = load ptr, ptr %mem_ptr, align 8
  %add.ptr148 = getelementptr inbounds i8, ptr %82, i64 -2
  store ptr %add.ptr148, ptr %mem_ptr, align 8
  %83 = load ptr, ptr %mem_ptr, align 8
  %arraydecay149 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %cmp150 = icmp ult ptr %83, %arraydecay149
  br i1 %cmp150, label %if.then152, label %if.end159

if.then152:                                       ; preds = %if.end144
  %84 = load ptr, ptr %end, align 8
  %arraydecay153 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %85 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast154 = ptrtoint ptr %arraydecay153 to i64
  %sub.ptr.rhs.cast155 = ptrtoint ptr %85 to i64
  %sub.ptr.sub156 = sub i64 %sub.ptr.lhs.cast154, %sub.ptr.rhs.cast155
  %idx.neg157 = sub i64 0, %sub.ptr.sub156
  %add.ptr158 = getelementptr inbounds i8, ptr %84, i64 %idx.neg157
  store ptr %add.ptr158, ptr %mem_ptr, align 8
  br label %if.end159

if.end159:                                        ; preds = %if.then152, %if.end144
  %86 = load ptr, ptr %mem_ptr, align 8
  %87 = load i8, ptr %86, align 1
  %conv160 = sext i8 %87 to i32
  %add161 = add nsw i32 %conv160, 4
  %conv162 = trunc i32 %add161 to i8
  store i8 %conv162, ptr %86, align 1
  %88 = load ptr, ptr %mem_ptr, align 8
  %add.ptr163 = getelementptr inbounds i8, ptr %88, i64 1
  store ptr %add.ptr163, ptr %mem_ptr, align 8
  %89 = load ptr, ptr %mem_ptr, align 8
  %90 = load ptr, ptr %end, align 8
  %cmp164 = icmp uge ptr %89, %90
  br i1 %cmp164, label %if.then166, label %if.end172

if.then166:                                       ; preds = %if.end159
  %arraydecay167 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %91 = load ptr, ptr %end, align 8
  %92 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast168 = ptrtoint ptr %91 to i64
  %sub.ptr.rhs.cast169 = ptrtoint ptr %92 to i64
  %sub.ptr.sub170 = sub i64 %sub.ptr.lhs.cast168, %sub.ptr.rhs.cast169
  %add.ptr171 = getelementptr inbounds i8, ptr %arraydecay167, i64 %sub.ptr.sub170
  store ptr %add.ptr171, ptr %mem_ptr, align 8
  br label %if.end172

if.end172:                                        ; preds = %if.then166, %if.end159
  br label %while.cond129, !llvm.loop !8

while.end173:                                     ; preds = %while.cond129
  %93 = load ptr, ptr %mem_ptr, align 8
  %add.ptr174 = getelementptr inbounds i8, ptr %93, i64 -2
  store ptr %add.ptr174, ptr %mem_ptr, align 8
  %94 = load ptr, ptr %mem_ptr, align 8
  %arraydecay175 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %cmp176 = icmp ult ptr %94, %arraydecay175
  br i1 %cmp176, label %if.then178, label %if.end185

if.then178:                                       ; preds = %while.end173
  %95 = load ptr, ptr %end, align 8
  %arraydecay179 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %96 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast180 = ptrtoint ptr %arraydecay179 to i64
  %sub.ptr.rhs.cast181 = ptrtoint ptr %96 to i64
  %sub.ptr.sub182 = sub i64 %sub.ptr.lhs.cast180, %sub.ptr.rhs.cast181
  %idx.neg183 = sub i64 0, %sub.ptr.sub182
  %add.ptr184 = getelementptr inbounds i8, ptr %95, i64 %idx.neg183
  store ptr %add.ptr184, ptr %mem_ptr, align 8
  br label %if.end185

if.end185:                                        ; preds = %if.then178, %while.end173
  br label %while.cond116, !llvm.loop !9

while.end186:                                     ; preds = %while.cond116
  %97 = load ptr, ptr %mem_ptr, align 8
  %add.ptr187 = getelementptr inbounds i8, ptr %97, i64 1
  store ptr %add.ptr187, ptr %mem_ptr, align 8
  %98 = load ptr, ptr %mem_ptr, align 8
  %99 = load ptr, ptr %end, align 8
  %cmp188 = icmp uge ptr %98, %99
  br i1 %cmp188, label %if.then190, label %if.end196

if.then190:                                       ; preds = %while.end186
  %arraydecay191 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %100 = load ptr, ptr %end, align 8
  %101 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast192 = ptrtoint ptr %100 to i64
  %sub.ptr.rhs.cast193 = ptrtoint ptr %101 to i64
  %sub.ptr.sub194 = sub i64 %sub.ptr.lhs.cast192, %sub.ptr.rhs.cast193
  %add.ptr195 = getelementptr inbounds i8, ptr %arraydecay191, i64 %sub.ptr.sub194
  store ptr %add.ptr195, ptr %mem_ptr, align 8
  br label %if.end196

if.end196:                                        ; preds = %if.then190, %while.end186
  %102 = load ptr, ptr %mem_ptr, align 8
  %103 = load i8, ptr %102, align 1
  %conv197 = sext i8 %103 to i32
  %call198 = call i32 @putchar(i32 noundef %conv197)
  %104 = load ptr, ptr %mem_ptr, align 8
  %105 = load i8, ptr %104, align 1
  %conv199 = sext i8 %105 to i32
  %add200 = add nsw i32 %conv199, 7
  %conv201 = trunc i32 %add200 to i8
  store i8 %conv201, ptr %104, align 1
  %106 = load ptr, ptr %mem_ptr, align 8
  %107 = load i8, ptr %106, align 1
  %conv202 = sext i8 %107 to i32
  %call203 = call i32 @putchar(i32 noundef %conv202)
  %108 = load ptr, ptr %mem_ptr, align 8
  %109 = load i8, ptr %108, align 1
  %conv204 = sext i8 %109 to i32
  %call205 = call i32 @putchar(i32 noundef %conv204)
  %110 = load ptr, ptr %mem_ptr, align 8
  %111 = load i8, ptr %110, align 1
  %conv206 = sext i8 %111 to i32
  %add207 = add nsw i32 %conv206, 3
  %conv208 = trunc i32 %add207 to i8
  store i8 %conv208, ptr %110, align 1
  %112 = load ptr, ptr %mem_ptr, align 8
  %113 = load i8, ptr %112, align 1
  %conv209 = sext i8 %113 to i32
  %call210 = call i32 @putchar(i32 noundef %conv209)
  %114 = load ptr, ptr %mem_ptr, align 8
  %add.ptr211 = getelementptr inbounds i8, ptr %114, i64 2
  store ptr %add.ptr211, ptr %mem_ptr, align 8
  %115 = load ptr, ptr %mem_ptr, align 8
  %116 = load ptr, ptr %end, align 8
  %cmp212 = icmp uge ptr %115, %116
  br i1 %cmp212, label %if.then214, label %if.end220

if.then214:                                       ; preds = %if.end196
  %arraydecay215 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %117 = load ptr, ptr %end, align 8
  %118 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast216 = ptrtoint ptr %117 to i64
  %sub.ptr.rhs.cast217 = ptrtoint ptr %118 to i64
  %sub.ptr.sub218 = sub i64 %sub.ptr.lhs.cast216, %sub.ptr.rhs.cast217
  %add.ptr219 = getelementptr inbounds i8, ptr %arraydecay215, i64 %sub.ptr.sub218
  store ptr %add.ptr219, ptr %mem_ptr, align 8
  br label %if.end220

if.end220:                                        ; preds = %if.then214, %if.end196
  %119 = load ptr, ptr %mem_ptr, align 8
  %120 = load i8, ptr %119, align 1
  %conv221 = sext i8 %120 to i32
  %add222 = add nsw i32 %conv221, 7
  %conv223 = trunc i32 %add222 to i8
  store i8 %conv223, ptr %119, align 1
  %121 = load ptr, ptr %mem_ptr, align 8
  %122 = load i8, ptr %121, align 1
  %conv224 = sext i8 %122 to i32
  %call225 = call i32 @putchar(i32 noundef %conv224)
  %123 = load ptr, ptr %mem_ptr, align 8
  %add.ptr226 = getelementptr inbounds i8, ptr %123, i64 -3
  store ptr %add.ptr226, ptr %mem_ptr, align 8
  %124 = load ptr, ptr %mem_ptr, align 8
  %arraydecay227 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %cmp228 = icmp ult ptr %124, %arraydecay227
  br i1 %cmp228, label %if.then230, label %if.end237

if.then230:                                       ; preds = %if.end220
  %125 = load ptr, ptr %end, align 8
  %arraydecay231 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %126 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast232 = ptrtoint ptr %arraydecay231 to i64
  %sub.ptr.rhs.cast233 = ptrtoint ptr %126 to i64
  %sub.ptr.sub234 = sub i64 %sub.ptr.lhs.cast232, %sub.ptr.rhs.cast233
  %idx.neg235 = sub i64 0, %sub.ptr.sub234
  %add.ptr236 = getelementptr inbounds i8, ptr %125, i64 %idx.neg235
  store ptr %add.ptr236, ptr %mem_ptr, align 8
  br label %if.end237

if.end237:                                        ; preds = %if.then230, %if.end220
  br label %while.cond238

while.cond238:                                    ; preds = %if.end276, %if.end237
  %127 = load ptr, ptr %mem_ptr, align 8
  %128 = load i8, ptr %127, align 1
  %tobool239 = icmp ne i8 %128, 0
  br i1 %tobool239, label %while.body240, label %while.end277

while.body240:                                    ; preds = %while.cond238
  br label %while.cond241

while.cond241:                                    ; preds = %while.body243, %while.body240
  %129 = load ptr, ptr %mem_ptr, align 8
  %130 = load i8, ptr %129, align 1
  %tobool242 = icmp ne i8 %130, 0
  br i1 %tobool242, label %while.body243, label %while.end247

while.body243:                                    ; preds = %while.cond241
  %131 = load ptr, ptr %mem_ptr, align 8
  %132 = load i8, ptr %131, align 1
  %conv244 = sext i8 %132 to i32
  %sub245 = sub nsw i32 %conv244, 1
  %conv246 = trunc i32 %sub245 to i8
  store i8 %conv246, ptr %131, align 1
  br label %while.cond241, !llvm.loop !10

while.end247:                                     ; preds = %while.cond241
  %133 = load ptr, ptr %mem_ptr, align 8
  %add.ptr248 = getelementptr inbounds i8, ptr %133, i64 -1
  store ptr %add.ptr248, ptr %mem_ptr, align 8
  %134 = load ptr, ptr %mem_ptr, align 8
  %arraydecay249 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %cmp250 = icmp ult ptr %134, %arraydecay249
  br i1 %cmp250, label %if.then252, label %if.end259

if.then252:                                       ; preds = %while.end247
  %135 = load ptr, ptr %end, align 8
  %arraydecay253 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %136 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast254 = ptrtoint ptr %arraydecay253 to i64
  %sub.ptr.rhs.cast255 = ptrtoint ptr %136 to i64
  %sub.ptr.sub256 = sub i64 %sub.ptr.lhs.cast254, %sub.ptr.rhs.cast255
  %idx.neg257 = sub i64 0, %sub.ptr.sub256
  %add.ptr258 = getelementptr inbounds i8, ptr %135, i64 %idx.neg257
  store ptr %add.ptr258, ptr %mem_ptr, align 8
  br label %if.end259

if.end259:                                        ; preds = %if.then252, %while.end247
  br label %while.cond260

while.cond260:                                    ; preds = %while.body262, %if.end259
  %137 = load ptr, ptr %mem_ptr, align 8
  %138 = load i8, ptr %137, align 1
  %tobool261 = icmp ne i8 %138, 0
  br i1 %tobool261, label %while.body262, label %while.end266

while.body262:                                    ; preds = %while.cond260
  %139 = load ptr, ptr %mem_ptr, align 8
  %140 = load i8, ptr %139, align 1
  %conv263 = sext i8 %140 to i32
  %sub264 = sub nsw i32 %conv263, 1
  %conv265 = trunc i32 %sub264 to i8
  store i8 %conv265, ptr %139, align 1
  br label %while.cond260, !llvm.loop !11

while.end266:                                     ; preds = %while.cond260
  %141 = load ptr, ptr %mem_ptr, align 8
  %add.ptr267 = getelementptr inbounds i8, ptr %141, i64 1
  store ptr %add.ptr267, ptr %mem_ptr, align 8
  %142 = load ptr, ptr %mem_ptr, align 8
  %143 = load ptr, ptr %end, align 8
  %cmp268 = icmp uge ptr %142, %143
  br i1 %cmp268, label %if.then270, label %if.end276

if.then270:                                       ; preds = %while.end266
  %arraydecay271 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %144 = load ptr, ptr %end, align 8
  %145 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast272 = ptrtoint ptr %144 to i64
  %sub.ptr.rhs.cast273 = ptrtoint ptr %145 to i64
  %sub.ptr.sub274 = sub i64 %sub.ptr.lhs.cast272, %sub.ptr.rhs.cast273
  %add.ptr275 = getelementptr inbounds i8, ptr %arraydecay271, i64 %sub.ptr.sub274
  store ptr %add.ptr275, ptr %mem_ptr, align 8
  br label %if.end276

if.end276:                                        ; preds = %if.then270, %while.end266
  br label %while.cond238, !llvm.loop !12

while.end277:                                     ; preds = %while.cond238
  %146 = load ptr, ptr %mem_ptr, align 8
  %add.ptr278 = getelementptr inbounds i8, ptr %146, i64 -1
  store ptr %add.ptr278, ptr %mem_ptr, align 8
  %147 = load ptr, ptr %mem_ptr, align 8
  %arraydecay279 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %cmp280 = icmp ult ptr %147, %arraydecay279
  br i1 %cmp280, label %if.then282, label %if.end289

if.then282:                                       ; preds = %while.end277
  %148 = load ptr, ptr %end, align 8
  %arraydecay283 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %149 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast284 = ptrtoint ptr %arraydecay283 to i64
  %sub.ptr.rhs.cast285 = ptrtoint ptr %149 to i64
  %sub.ptr.sub286 = sub i64 %sub.ptr.lhs.cast284, %sub.ptr.rhs.cast285
  %idx.neg287 = sub i64 0, %sub.ptr.sub286
  %add.ptr288 = getelementptr inbounds i8, ptr %148, i64 %idx.neg287
  store ptr %add.ptr288, ptr %mem_ptr, align 8
  br label %if.end289

if.end289:                                        ; preds = %if.then282, %while.end277
  %150 = load ptr, ptr %mem_ptr, align 8
  %151 = load i8, ptr %150, align 1
  %conv290 = sext i8 %151 to i32
  %add291 = add nsw i32 %conv290, 15
  %conv292 = trunc i32 %add291 to i8
  store i8 %conv292, ptr %150, align 1
  %152 = load ptr, ptr %mem_ptr, align 8
  %153 = load i8, ptr %152, align 1
  %conv293 = sext i8 %153 to i32
  %call294 = call i32 @putchar(i32 noundef %conv293)
  %154 = load ptr, ptr %mem_ptr, align 8
  %add.ptr295 = getelementptr inbounds i8, ptr %154, i64 2
  store ptr %add.ptr295, ptr %mem_ptr, align 8
  %155 = load ptr, ptr %mem_ptr, align 8
  %156 = load ptr, ptr %end, align 8
  %cmp296 = icmp uge ptr %155, %156
  br i1 %cmp296, label %if.then298, label %if.end304

if.then298:                                       ; preds = %if.end289
  %arraydecay299 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %157 = load ptr, ptr %end, align 8
  %158 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast300 = ptrtoint ptr %157 to i64
  %sub.ptr.rhs.cast301 = ptrtoint ptr %158 to i64
  %sub.ptr.sub302 = sub i64 %sub.ptr.lhs.cast300, %sub.ptr.rhs.cast301
  %add.ptr303 = getelementptr inbounds i8, ptr %arraydecay299, i64 %sub.ptr.sub302
  store ptr %add.ptr303, ptr %mem_ptr, align 8
  br label %if.end304

if.end304:                                        ; preds = %if.then298, %if.end289
  %159 = load ptr, ptr %mem_ptr, align 8
  %160 = load i8, ptr %159, align 1
  %conv305 = sext i8 %160 to i32
  %call306 = call i32 @putchar(i32 noundef %conv305)
  %161 = load ptr, ptr %mem_ptr, align 8
  %162 = load i8, ptr %161, align 1
  %conv307 = sext i8 %162 to i32
  %add308 = add nsw i32 %conv307, 3
  %conv309 = trunc i32 %add308 to i8
  store i8 %conv309, ptr %161, align 1
  %163 = load ptr, ptr %mem_ptr, align 8
  %164 = load i8, ptr %163, align 1
  %conv310 = sext i8 %164 to i32
  %call311 = call i32 @putchar(i32 noundef %conv310)
  %165 = load ptr, ptr %mem_ptr, align 8
  %166 = load i8, ptr %165, align 1
  %conv312 = sext i8 %166 to i32
  %sub313 = sub nsw i32 %conv312, 6
  %conv314 = trunc i32 %sub313 to i8
  store i8 %conv314, ptr %165, align 1
  %167 = load ptr, ptr %mem_ptr, align 8
  %168 = load i8, ptr %167, align 1
  %conv315 = sext i8 %168 to i32
  %call316 = call i32 @putchar(i32 noundef %conv315)
  %169 = load ptr, ptr %mem_ptr, align 8
  %170 = load i8, ptr %169, align 1
  %conv317 = sext i8 %170 to i32
  %sub318 = sub nsw i32 %conv317, 8
  %conv319 = trunc i32 %sub318 to i8
  store i8 %conv319, ptr %169, align 1
  %171 = load ptr, ptr %mem_ptr, align 8
  %172 = load i8, ptr %171, align 1
  %conv320 = sext i8 %172 to i32
  %call321 = call i32 @putchar(i32 noundef %conv320)
  %173 = load ptr, ptr %mem_ptr, align 8
  %add.ptr322 = getelementptr inbounds i8, ptr %173, i64 2
  store ptr %add.ptr322, ptr %mem_ptr, align 8
  %174 = load ptr, ptr %mem_ptr, align 8
  %175 = load ptr, ptr %end, align 8
  %cmp323 = icmp uge ptr %174, %175
  br i1 %cmp323, label %if.then325, label %if.end331

if.then325:                                       ; preds = %if.end304
  %arraydecay326 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %176 = load ptr, ptr %end, align 8
  %177 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast327 = ptrtoint ptr %176 to i64
  %sub.ptr.rhs.cast328 = ptrtoint ptr %177 to i64
  %sub.ptr.sub329 = sub i64 %sub.ptr.lhs.cast327, %sub.ptr.rhs.cast328
  %add.ptr330 = getelementptr inbounds i8, ptr %arraydecay326, i64 %sub.ptr.sub329
  store ptr %add.ptr330, ptr %mem_ptr, align 8
  br label %if.end331

if.end331:                                        ; preds = %if.then325, %if.end304
  %178 = load ptr, ptr %mem_ptr, align 8
  %179 = load i8, ptr %178, align 1
  %conv332 = sext i8 %179 to i32
  %add333 = add nsw i32 %conv332, 1
  %conv334 = trunc i32 %add333 to i8
  store i8 %conv334, ptr %178, align 1
  %180 = load ptr, ptr %mem_ptr, align 8
  %181 = load i8, ptr %180, align 1
  %conv335 = sext i8 %181 to i32
  %call336 = call i32 @putchar(i32 noundef %conv335)
  %182 = load ptr, ptr %mem_ptr, align 8
  %add.ptr337 = getelementptr inbounds i8, ptr %182, i64 1
  store ptr %add.ptr337, ptr %mem_ptr, align 8
  %183 = load ptr, ptr %mem_ptr, align 8
  %184 = load ptr, ptr %end, align 8
  %cmp338 = icmp uge ptr %183, %184
  br i1 %cmp338, label %if.then340, label %if.end346

if.then340:                                       ; preds = %if.end331
  %arraydecay341 = getelementptr inbounds [30000 x i8], ptr %mem, i64 0, i64 0
  %185 = load ptr, ptr %end, align 8
  %186 = load ptr, ptr %mem_ptr, align 8
  %sub.ptr.lhs.cast342 = ptrtoint ptr %185 to i64
  %sub.ptr.rhs.cast343 = ptrtoint ptr %186 to i64
  %sub.ptr.sub344 = sub i64 %sub.ptr.lhs.cast342, %sub.ptr.rhs.cast343
  %add.ptr345 = getelementptr inbounds i8, ptr %arraydecay341, i64 %sub.ptr.sub344
  store ptr %add.ptr345, ptr %mem_ptr, align 8
  br label %if.end346

if.end346:                                        ; preds = %if.then340, %if.end331
  %187 = load ptr, ptr %mem_ptr, align 8
  %188 = load i8, ptr %187, align 1
  %conv347 = sext i8 %188 to i32
  %add348 = add nsw i32 %conv347, 4
  %conv349 = trunc i32 %add348 to i8
  store i8 %conv349, ptr %187, align 1
  %189 = load ptr, ptr %mem_ptr, align 8
  %190 = load i8, ptr %189, align 1
  %conv350 = sext i8 %190 to i32
  %call351 = call i32 @putchar(i32 noundef %conv350)
  %191 = load i32, ptr %retval, align 4
  ret i32 %191
}

declare i32 @putchar(i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
!12 = distinct !{!12, !6}
