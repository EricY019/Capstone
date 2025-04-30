; ModuleID = './code/382-347920100430-1.c'
source_filename = "./code/382-347920100430-1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.info_t = type { i32, %struct.packed_struct }
%struct.packed_struct = type { %struct.packed_struct1, [4 x %struct.packed_struct2] }
%struct.packed_struct1 = type { i8, i8 }
%struct.packed_struct2 = type <{ i8, i8, [104 x i16], [13 x i8] }>

@g = internal global i16 0, align 2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %info = alloca %struct.info_t, align 4
  store i32 0, ptr %retval, align 4
  %buf = getelementptr inbounds %struct.info_t, ptr %info, i32 0, i32 1
  %pst1 = getelementptr inbounds %struct.packed_struct, ptr %buf, i32 0, i32 0
  %cc11 = getelementptr inbounds %struct.packed_struct1, ptr %pst1, i32 0, i32 0
  store i8 2, ptr %cc11, align 4
  %buf1 = getelementptr inbounds %struct.info_t, ptr %info, i32 0, i32 1
  %pst2 = getelementptr inbounds %struct.packed_struct, ptr %buf1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x %struct.packed_struct2], ptr %pst2, i64 0, i64 1
  %cc22 = getelementptr inbounds %struct.packed_struct2, ptr %arrayidx, i32 0, i32 1
  store i8 8, ptr %cc22, align 1
  %buf2 = getelementptr inbounds %struct.info_t, ptr %info, i32 0, i32 1
  %pst23 = getelementptr inbounds %struct.packed_struct, ptr %buf2, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [4 x %struct.packed_struct2], ptr %pst23, i64 0, i64 0
  %cc225 = getelementptr inbounds %struct.packed_struct2, ptr %arrayidx4, i32 0, i32 1
  store i8 8, ptr %cc225, align 1
  %call = call i32 @foo(ptr noundef %info)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @foo(ptr noundef %info) #0 {
entry:
  %info.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %info.addr, align 8
  %buf = getelementptr inbounds %struct.info_t, ptr %1, i32 0, i32 1
  %pst1 = getelementptr inbounds %struct.packed_struct, ptr %buf, i32 0, i32 0
  %cc11 = getelementptr inbounds %struct.packed_struct1, ptr %pst1, i32 0, i32 0
  %2 = load i8, ptr %cc11, align 4
  %conv = zext i8 %2 to i32
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4
  %4 = load ptr, ptr %info.addr, align 8
  %buf3 = getelementptr inbounds %struct.info_t, ptr %4, i32 0, i32 1
  %pst2 = getelementptr inbounds %struct.packed_struct, ptr %buf3, i32 0, i32 1
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.packed_struct2], ptr %pst2, i64 0, i64 %idxprom
  %cc22 = getelementptr inbounds %struct.packed_struct2, ptr %arrayidx, i32 0, i32 1
  %6 = load i8, ptr %cc22, align 1
  %conv4 = zext i8 %6 to i32
  %cmp5 = icmp slt i32 %3, %conv4
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond2
  %7 = load ptr, ptr %info.addr, align 8
  %buf8 = getelementptr inbounds %struct.info_t, ptr %7, i32 0, i32 1
  %pst29 = getelementptr inbounds %struct.packed_struct, ptr %buf8, i32 0, i32 1
  %8 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [4 x %struct.packed_struct2], ptr %pst29, i64 0, i64 %idxprom10
  %ss = getelementptr inbounds %struct.packed_struct2, ptr %arrayidx11, i32 0, i32 2
  %9 = load i32, ptr %j, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [104 x i16], ptr %ss, i64 0, i64 %idxprom12
  %10 = load i16, ptr %arrayidx13, align 1
  call void @dummy(i16 noundef zeroext %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %11 = load i32, ptr %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond2, !llvm.loop !5

for.end:                                          ; preds = %for.cond2
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %12 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %12, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end16:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @dummy(i16 noundef zeroext %s) #0 {
entry:
  %s.addr = alloca i16, align 2
  store i16 %s, ptr %s.addr, align 2
  %0 = load i16, ptr %s.addr, align 2
  store i16 %0, ptr @g, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
