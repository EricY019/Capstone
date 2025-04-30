; ModuleID = 'code/048-33667foll-vfork.c'
source_filename = "code/048-33667foll-vfork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"vforked-prog\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"I'm the child!\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"exec failed\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"I'm the proud parent of child #%d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %pid = alloca i32, align 4
  %prog = alloca [4096 x i8], align 16
  %len = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %add = add nsw i32 1, %0
  store i32 %add, i32* %pid, align 4
  %call = call i32 @vfork() #7
  store i32 %call, i32* %pid, align 4
  %1 = load i32, i32* %pid, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %prog, i64 0, i64 0
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  %call1 = call i8* @strcpy(i8* %arraydecay, i8* %3) #8
  %arraydecay2 = getelementptr inbounds [4096 x i8], [4096 x i8]* %prog, i64 0, i64 0
  %call3 = call i64 @strlen(i8* %arraydecay2) #9
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %len, align 4
  %arraydecay4 = getelementptr inbounds [4096 x i8], [4096 x i8]* %prog, i64 0, i64 0
  %4 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay4, i64 %idx.ext
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 -10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr5, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 12, i1 false)
  %5 = load i32, i32* %len, align 4
  %add6 = add nsw i32 %5, 2
  %idxprom = sext i32 %add6 to i64
  %arrayidx7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %prog, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx7, align 1
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %arraydecay9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %prog, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %prog, i64 0, i64 0
  %call11 = call i32 (i8*, i8*, ...) @execlp(i8* %arraydecay9, i8* %arraydecay10, i8* null) #8
  call void @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  call void @_exit(i32 1) #10
  unreachable

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %pid, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.else
  ret i32 0
}

; Function Attrs: nounwind returns_twice
declare dso_local i32 @vfork() #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare dso_local i32 @execlp(i8*, i8*, ...) #2

declare dso_local void @perror(i8*) #5

; Function Attrs: noreturn
declare dso_local void @_exit(i32) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind returns_twice "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind returns_twice }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
