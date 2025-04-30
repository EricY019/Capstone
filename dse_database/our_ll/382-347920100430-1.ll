; ModuleID = 'code/382-347920100430-1.c'
source_filename = "code/382-347920100430-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info_t = type { i32, %struct.packed_struct }
%struct.packed_struct = type { %struct.packed_struct1, [4 x %struct.packed_struct2] }
%struct.packed_struct1 = type { i8, i8 }
%struct.packed_struct2 = type <{ i8, i8, [104 x i16], [13 x i8] }>

@g = internal global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %info = alloca %struct.info_t, align 4
  store i32 0, i32* %retval, align 4
  %buf = getelementptr inbounds %struct.info_t, %struct.info_t* %info, i32 0, i32 1
  %pst1 = getelementptr inbounds %struct.packed_struct, %struct.packed_struct* %buf, i32 0, i32 0
  %cc11 = getelementptr inbounds %struct.packed_struct1, %struct.packed_struct1* %pst1, i32 0, i32 0
  store i8 2, i8* %cc11, align 4
  %buf1 = getelementptr inbounds %struct.info_t, %struct.info_t* %info, i32 0, i32 1
  %pst2 = getelementptr inbounds %struct.packed_struct, %struct.packed_struct* %buf1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x %struct.packed_struct2], [4 x %struct.packed_struct2]* %pst2, i64 0, i64 1
  %cc22 = getelementptr inbounds %struct.packed_struct2, %struct.packed_struct2* %arrayidx, i32 0, i32 1
  store i8 8, i8* %cc22, align 1
  %buf2 = getelementptr inbounds %struct.info_t, %struct.info_t* %info, i32 0, i32 1
  %pst23 = getelementptr inbounds %struct.packed_struct, %struct.packed_struct* %buf2, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [4 x %struct.packed_struct2], [4 x %struct.packed_struct2]* %pst23, i64 0, i64 0
  %cc225 = getelementptr inbounds %struct.packed_struct2, %struct.packed_struct2* %arrayidx4, i32 0, i32 1
  store i8 8, i8* %cc225, align 1
  %call = call i32 @foo(%struct.info_t* %info)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foo(%struct.info_t* %info) #0 {
entry:
  %info.addr = alloca %struct.info_t*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.info_t* %info, %struct.info_t** %info.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.info_t*, %struct.info_t** %info.addr, align 8
  %buf = getelementptr inbounds %struct.info_t, %struct.info_t* %1, i32 0, i32 1
  %pst1 = getelementptr inbounds %struct.packed_struct, %struct.packed_struct* %buf, i32 0, i32 0
  %cc11 = getelementptr inbounds %struct.packed_struct1, %struct.packed_struct1* %pst1, i32 0, i32 0
  %2 = load i8, i8* %cc11, align 4
  %conv = zext i8 %2 to i32
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load %struct.info_t*, %struct.info_t** %info.addr, align 8
  %buf3 = getelementptr inbounds %struct.info_t, %struct.info_t* %4, i32 0, i32 1
  %pst2 = getelementptr inbounds %struct.packed_struct, %struct.packed_struct* %buf3, i32 0, i32 1
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.packed_struct2], [4 x %struct.packed_struct2]* %pst2, i64 0, i64 %idxprom
  %cc22 = getelementptr inbounds %struct.packed_struct2, %struct.packed_struct2* %arrayidx, i32 0, i32 1
  %6 = load i8, i8* %cc22, align 1
  %conv4 = zext i8 %6 to i32
  %cmp5 = icmp slt i32 %3, %conv4
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond2
  %7 = load %struct.info_t*, %struct.info_t** %info.addr, align 8
  %buf8 = getelementptr inbounds %struct.info_t, %struct.info_t* %7, i32 0, i32 1
  %pst29 = getelementptr inbounds %struct.packed_struct, %struct.packed_struct* %buf8, i32 0, i32 1
  %8 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [4 x %struct.packed_struct2], [4 x %struct.packed_struct2]* %pst29, i64 0, i64 %idxprom10
  %ss = getelementptr inbounds %struct.packed_struct2, %struct.packed_struct2* %arrayidx11, i32 0, i32 2
  %9 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [104 x i16], [104 x i16]* %ss, i64 0, i64 %idxprom12
  %10 = load i16, i16* %arrayidx13, align 1
  call void @dummy(i16 zeroext %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond2, !llvm.loop !4

for.end:                                          ; preds = %for.cond2
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %12, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end16:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dummy(i16 zeroext %s) #0 {
entry:
  %s.addr = alloca i16, align 2
  store i16 %s, i16* %s.addr, align 2
  %0 = load i16, i16* %s.addr, align 2
  store i16 %0, i16* @g, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
