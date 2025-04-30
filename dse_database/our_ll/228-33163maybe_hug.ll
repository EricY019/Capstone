; ModuleID = 'code/228-33163maybe_hug.c'
source_filename = "code/228-33163maybe_hug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.human = type { i8*, i16, i16 }

@.str = private unnamed_addr constant [25 x i8] c"%s accepted your offer!\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"*hugs*\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"You Hugged %s! :^)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"You asked for a hug.\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"They'd rather not, thanks for being considerate.\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Amber\00", align 1
@__const.main.person = private unnamed_addr constant %struct.human { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i16 1, i16 1 }, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"They're not as cute as you first thought...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @executeHug(i8* %person.coerce0, i64 %person.coerce1) #0 {
entry:
  %person = alloca %struct.human, align 8
  %0 = bitcast %struct.human* %person to { i8*, i64 }*
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  store i8* %person.coerce0, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  store i64 %person.coerce1, i64* %2, align 8
  %name = getelementptr inbounds %struct.human, %struct.human* %person, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %3)
  %call1 = call i32 @sleep(i32 3)
  %call2 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %call3 = call i32 @sleep(i32 3)
  %name4 = getelementptr inbounds %struct.human, %struct.human* %person, i32 0, i32 0
  %4 = load i8*, i8** %name4, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %4)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @offerHug(i8* %person.coerce0, i64 %person.coerce1) #0 {
entry:
  %person = alloca %struct.human, align 8
  %0 = bitcast %struct.human* %person to { i8*, i64 }*
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  store i8* %person.coerce0, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  store i64 %person.coerce1, i64* %2, align 8
  %call = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %call1 = call i32 @sleep(i32 3)
  %likesPhysicalContact = getelementptr inbounds %struct.human, %struct.human* %person, i32 0, i32 1
  %3 = load i16, i16* %likesPhysicalContact, align 8
  %tobool = icmp ne i16 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.human* %person to { i8*, i64 }*
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  call void @executeHug(i8* %6, i64 %8)
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i32 @puts(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %person = alloca %struct.human, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.human* %person to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.human* @__const.main.person to i8*), i64 16, i1 false)
  %isCutie = getelementptr inbounds %struct.human, %struct.human* %person, i32 0, i32 2
  %1 = load i16, i16* %isCutie, align 2
  %tobool = icmp ne i16 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.human* %person to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  call void @offerHug(i8* %4, i64 %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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
