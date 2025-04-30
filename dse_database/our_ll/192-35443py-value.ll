; ModuleID = 'code/192-35443py-value.c'
source_filename = "code/192-35443py-value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, i32 }
%union.u = type { i32 }

@evalue = dso_local global i32 2, align 4
@.str = private unnamed_addr constant [22 x i8] c"void function called\0A\00", align 1
@__const.main.st = private unnamed_addr constant [17 x i8] c"divide et impera\00", align 16
@__const.main.nullst = private unnamed_addr constant [17 x i8] c"divide\00et\00impera\00", align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"embedded x\81\82\83\84\00", align 1
@__const.main.a = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 3], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @func1() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @func2(i32 %arg1, i32 %arg2) #0 {
entry:
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  store i32 %arg1, i32* %arg1.addr, align 4
  store i32 %arg2, i32* %arg2.addr, align 4
  %0 = load i32, i32* %arg1.addr, align 4
  %1 = load i32, i32* %arg2.addr, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %cp = alloca i8*, align 8
  %s = alloca %struct.s, align 4
  %u = alloca %union.u, align 4
  %x = alloca %struct.s*, align 8
  %st = alloca [17 x i8], align 16
  %nullst = alloca [17 x i8], align 16
  %fp1 = alloca void ()*, align 8
  %fp2 = alloca i32 (i32, i32)*, align 8
  %sptr = alloca i8*, align 8
  %embed = alloca i8*, align 8
  %a = alloca [3 x i32], align 4
  %p = alloca i32*, align 8
  %i = alloca i32, align 4
  %ptr_i = alloca i32*, align 8
  %sn = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %cp, align 8
  store %struct.s* %s, %struct.s** %x, align 8
  %2 = bitcast [17 x i8]* %st to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.main.st, i32 0, i32 0), i64 17, i1 false)
  %3 = bitcast [17 x i8]* %nullst to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.main.nullst, i32 0, i32 0), i64 17, i1 false)
  store void ()* @func1, void ()** %fp1, align 8
  store i32 (i32, i32)* @func2, i32 (i32, i32)** %fp2, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %sptr, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %embed, align 8
  %4 = bitcast [3 x i32]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast ([3 x i32]* @__const.main.a to i8*), i64 12, i1 false)
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %a, i64 0, i64 0
  store i32* %arraydecay, i32** %p, align 8
  store i32 2, i32* %i, align 4
  store i32* %i, i32** %ptr_i, align 8
  store i8* null, i8** %sn, align 8
  %a1 = getelementptr inbounds %struct.s, %struct.s* %s, i32 0, i32 0
  store i32 3, i32* %a1, align 4
  %b = getelementptr inbounds %struct.s, %struct.s* %s, i32 0, i32 1
  store i32 5, i32* %b, align 4
  %a2 = bitcast %union.u* %u to i32*
  store i32 7, i32* %a2, align 4
  %5 = load void ()*, void ()** %fp1, align 8
  call void %5()
  %6 = load i32 (i32, i32)*, i32 (i32, i32)** %fp2, align 8
  %call = call i32 %6(i32 10, i32 20)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
