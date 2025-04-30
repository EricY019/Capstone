; ModuleID = 'code/141-262444-13_recursive-reverse.c'
source_filename = "code/141-262444-13_recursive-reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.foo = private unnamed_addr constant [40 x i8] c"Learning C is fun and challenging.\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [12 x i8] c"Before: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" After: %s\0A\00", align 1
@__const.main.bar = private unnamed_addr constant [30 x i8] c"Hello out there!\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@reverse.i = internal global i32 0, align 4
@reverse.j = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %foo = alloca [40 x i8], align 16
  %bar = alloca [30 x i8], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [40 x i8]* %foo to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([40 x i8], [40 x i8]* @__const.main.foo, i32 0, i32 0), i64 40, i1 false)
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %foo, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [40 x i8], [40 x i8]* %foo, i64 0, i64 0
  call void @reverse(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [40 x i8], [40 x i8]* %foo, i64 0, i64 0
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay2)
  %1 = bitcast [30 x i8]* %bar to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 getelementptr inbounds ([30 x i8], [30 x i8]* @__const.main.bar, i32 0, i32 0), i64 30, i1 false)
  %arraydecay4 = getelementptr inbounds [30 x i8], [30 x i8]* %bar, i64 0, i64 0
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %arraydecay4)
  %arraydecay6 = getelementptr inbounds [30 x i8], [30 x i8]* %bar, i64 0, i64 0
  call void @reverse(i8* %arraydecay6)
  %arraydecay7 = getelementptr inbounds [30 x i8], [30 x i8]* %bar, i64 0, i64 0
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay7)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverse(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i32, i32* @reverse.j, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %1) #4
  %sub = sub i64 %call, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* @reverse.j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @reverse.i, align 4
  %3 = load i32, i32* @reverse.j, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %if.then3, label %if.end12

if.then3:                                         ; preds = %if.end
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i32, i32* @reverse.i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %6 to i32
  store i32 %conv4, i32* %c, align 4
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i32, i32* @reverse.j, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 %idxprom5
  %9 = load i8, i8* %arrayidx6, align 1
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i32, i32* @reverse.i, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 %idxprom7
  store i8 %9, i8* %arrayidx8, align 1
  %12 = load i32, i32* %c, align 4
  %conv9 = trunc i32 %12 to i8
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i32, i32* @reverse.j, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %idxprom10
  store i8 %conv9, i8* %arrayidx11, align 1
  %15 = load i32, i32* @reverse.i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* @reverse.i, align 4
  %16 = load i32, i32* @reverse.j, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* @reverse.j, align 4
  %17 = load i8*, i8** %s.addr, align 8
  call void @reverse(i8* %17)
  br label %return

if.end12:                                         ; preds = %if.end
  store i32 0, i32* @reverse.i, align 4
  store i32 0, i32* @reverse.j, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then3
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
