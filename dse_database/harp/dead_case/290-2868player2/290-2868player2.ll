; ModuleID = 'code/290-2868player2.c'
source_filename = "code/290-2868player2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.player_t = type { [100 x i8], i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [21 x i8] c"Created player '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Test\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"New player: '%s'\0A\00", align 1

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
define dso_local void @player_new(%struct.player_t* noalias sret(%struct.player_t) align 4 %agg.result, i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %energy = getelementptr inbounds %struct.player_t, %struct.player_t* %agg.result, i32 0, i32 1
  store i32 100, i32* %energy, align 4
  %name1 = getelementptr inbounds %struct.player_t, %struct.player_t* %agg.result, i32 0, i32 0
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %name1, i64 0, i64 0
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i8* @strncpy(i8* %arraydecay, i8* %0, i64 100) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @player_new_ask_user_for_name(%struct.player_t* noalias sret(%struct.player_t) align 4 %agg.result) #0 {
entry:
  %buf = alloca [100 x i8], align 16
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i64 0, i64 0
  call void @read_line(i8* %arraydecay, i32 100)
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i64 0, i64 0
  call void @player_new(%struct.player_t* sret(%struct.player_t) align 4 %agg.result, i8* %arraydecay1)
  %name = getelementptr inbounds %struct.player_t, %struct.player_t* %agg.result, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %arraydecay2)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca %struct.player_t, align 4
  store i32 0, i32* %retval, align 4
  call void @player_new_ask_user_for_name(%struct.player_t* sret(%struct.player_t) align 4 %p)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %name = getelementptr inbounds %struct.player_t, %struct.player_t* %p, i32 0, i32 0
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %name, i64 0, i64 0
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
