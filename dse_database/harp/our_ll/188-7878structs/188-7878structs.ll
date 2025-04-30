; ModuleID = 'code/188-7878structs.c'
source_filename = "code/188-7878structs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }

@.str = private unnamed_addr constant [59 x i8] c"Accessing struct member with 'member access operator': %i\0A\00", align 1
@__const.main.text1 = private unnamed_addr constant [37 x i8] c"Sending pointer variable to function\00", align 16
@__const.main.text2 = private unnamed_addr constant [28 x i8] c"Sending pointer to function\00", align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %nd = alloca %struct.node, align 8
  %md = alloca %struct.node*, align 8
  %text1 = alloca [37 x i8], align 16
  %text2 = alloca [28 x i8], align 16
  %n = getelementptr inbounds %struct.node, %struct.node* %nd, i32 0, i32 0
  store i32 10, i32* %n, align 8
  store %struct.node* %nd, %struct.node** %md, align 8
  %n1 = getelementptr inbounds %struct.node, %struct.node* %nd, i32 0, i32 0
  %0 = load i32, i32* %n1, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %0)
  %1 = bitcast [37 x i8]* %text1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 getelementptr inbounds ([37 x i8], [37 x i8]* @__const.main.text1, i32 0, i32 0), i64 37, i1 false)
  %2 = load %struct.node*, %struct.node** %md, align 8
  %arraydecay = getelementptr inbounds [37 x i8], [37 x i8]* %text1, i64 0, i64 0
  call void @getStruct(%struct.node* %2, i8* %arraydecay)
  %3 = bitcast [28 x i8]* %text2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 getelementptr inbounds ([28 x i8], [28 x i8]* @__const.main.text2, i32 0, i32 0), i64 28, i1 false)
  %arraydecay2 = getelementptr inbounds [28 x i8], [28 x i8]* %text2, i64 0, i64 0
  call void @getStruct(%struct.node* %nd, i8* %arraydecay2)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getStruct(%struct.node* %s, i8* %text) #0 {
entry:
  %s.addr = alloca %struct.node*, align 8
  %text.addr = alloca i8*, align 8
  store %struct.node* %s, %struct.node** %s.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  %0 = load i8*, i8** %text.addr, align 8
  %1 = load %struct.node*, %struct.node** %s.addr, align 8
  %n = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  %2 = load i32, i32* %n, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %0, i32 %2)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
