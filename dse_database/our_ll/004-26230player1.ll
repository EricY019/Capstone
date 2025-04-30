; ModuleID = 'code/004-26230player1.c'
source_filename = "code/004-26230player1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.player_t = type { i8*, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [21 x i8] c"Created player '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"New player: '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_line(i8* %buf, i32 %buf_sz) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %buf_sz.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %buf_sz, i32* %buf_sz.addr, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %buf_sz.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call, i32* %c, align 4
  %cmp1 = icmp ne i32 %call, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %4, 10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %5 = load i32, i32* %c, align 4
  %conv = trunc i32 %5 to i8
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %if.then, %land.end
  %9 = load i8*, i8** %buf.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 %idxprom3
  store i8 0, i8* %arrayidx4, align 1
  ret void
}

declare dso_local i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i8*, i32 } @player_new(i8* %name) #0 {
entry:
  %retval = alloca %struct.player_t, align 8
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %name1 = getelementptr inbounds %struct.player_t, %struct.player_t* %retval, i32 0, i32 0
  store i8* %0, i8** %name1, align 8
  %energy = getelementptr inbounds %struct.player_t, %struct.player_t* %retval, i32 0, i32 1
  store i32 100, i32* %energy, align 8
  %1 = bitcast %struct.player_t* %retval to { i8*, i32 }*
  %2 = load { i8*, i32 }, { i8*, i32 }* %1, align 8
  ret { i8*, i32 } %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i8*, i32 } @player_new_ask_user_for_name() #0 {
entry:
  %retval = alloca %struct.player_t, align 8
  %buf_sz = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  store i32 10, i32* %buf_sz, align 4
  %0 = call i8* @llvm.stacksave()
  store i8* %0, i8** %saved_stack, align 8
  %vla = alloca i8, i64 10, align 16
  call void @read_line(i8* %vla, i32 10)
  %call = call { i8*, i32 } @player_new(i8* %vla)
  %1 = bitcast %struct.player_t* %retval to { i8*, i32 }*
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  %3 = extractvalue { i8*, i32 } %call, 0
  store i8* %3, i8** %2, align 8
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %5 = extractvalue { i8*, i32 } %call, 1
  store i32 %5, i32* %4, align 8
  %name = getelementptr inbounds %struct.player_t, %struct.player_t* %retval, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %6)
  %7 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %7)
  %8 = bitcast %struct.player_t* %retval to { i8*, i32 }*
  %9 = load { i8*, i32 }, { i8*, i32 }* %8, align 8
  ret { i8*, i32 } %9
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca %struct.player_t, align 8
  store i32 0, i32* %retval, align 4
  %call = call { i8*, i32 } @player_new_ask_user_for_name()
  %0 = bitcast %struct.player_t* %p to { i8*, i32 }*
  %1 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  %2 = extractvalue { i8*, i32 } %call, 0
  store i8* %2, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %4 = extractvalue { i8*, i32 } %call, 1
  store i32 %4, i32* %3, align 8
  %name = getelementptr inbounds %struct.player_t, %struct.player_t* %p, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
