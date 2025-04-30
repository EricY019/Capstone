; ModuleID = 'code/250-11761signest.c'
source_filename = "code/250-11761signest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }

@p = dso_local global i8* null, align 8
@keeper.recurse = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bowler() #0 {
entry:
  %0 = load i8*, i8** @p, align 8
  %1 = load volatile i8, i8* %0, align 1
  %conv = sext i8 %1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @keeper(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* @keeper.recurse, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @keeper.recurse, align 4
  %cmp = icmp slt i32 %inc, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @bowler()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @_exit(i32 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @_exit(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %act = alloca %struct.sigaction, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.sigaction* %act to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 152, i1 false)
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 0
  %sa_handler = bitcast %union.anon* %__sigaction_handler to void (i32)**
  store void (i32)* @keeper, void (i32)** %sa_handler, align 8
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 2
  store i32 1073741824, i32* %sa_flags, align 8
  %call = call i32 @sigaction(i32 11, %struct.sigaction* %act, %struct.sigaction* null) #5
  %call1 = call i32 @sigaction(i32 7, %struct.sigaction* %act, %struct.sigaction* null) #5
  %call2 = call i64 @bowler()
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
