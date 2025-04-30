; ModuleID = './code/098-22616list1207.c'
source_filename = "./code/098-22616list1207.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.Student = type { [64 x i8], i32, float, i64 }

@__const.main.std = private unnamed_addr constant [5 x %struct.Student] [%struct.Student { [64 x i8] c"Sato\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 178, float 0x404E9999A0000000, i64 80000 }, %struct.Student { [64 x i8] c"Sanaka\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 175, float 6.250000e+01, i64 73000 }, %struct.Student { [64 x i8] c"Takao\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 173, float 0x40558CCCC0000000, i64 0 }, %struct.Student { [64 x i8] c"Mike\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 165, float 0x4052133340000000, i64 70000 }, %struct.Student { [64 x i8] c"Masaki\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 179, float 7.750000e+01, i64 70000 }], align 8
@.str = private unnamed_addr constant [19 x i8] c"%-8s %6d%6.1f%7ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\0A Sort by height.\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swap_Student(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %temp = alloca %struct.Student, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %temp, ptr align 8 %0, i64 80, i1 false)
  %1 = load ptr, ptr %x.addr, align 8
  %2 = load ptr, ptr %y.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 80, i1 false)
  %3 = load ptr, ptr %y.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %temp, i64 80, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @sort_by_height(ptr noundef %a, i32 noundef %n) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %n.addr, align 4
  %sub1 = sub nsw i32 %2, 1
  store i32 %sub1, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4
  %4 = load i32, ptr %i, align 4
  %cmp3 = icmp sgt i32 %3, %4
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %5 = load ptr, ptr %a.addr, align 8
  %6 = load i32, ptr %j, align 4
  %sub5 = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub5 to i64
  %arrayidx = getelementptr inbounds %struct.Student, ptr %5, i64 %idxprom
  %height = getelementptr inbounds %struct.Student, ptr %arrayidx, i32 0, i32 1
  %7 = load i32, ptr %height, align 8
  %8 = load ptr, ptr %a.addr, align 8
  %9 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds %struct.Student, ptr %8, i64 %idxprom6
  %height8 = getelementptr inbounds %struct.Student, ptr %arrayidx7, i32 0, i32 1
  %10 = load i32, ptr %height8, align 8
  %cmp9 = icmp sgt i32 %7, %10
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %11 = load ptr, ptr %a.addr, align 8
  %12 = load i32, ptr %j, align 4
  %sub10 = sub nsw i32 %12, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds %struct.Student, ptr %11, i64 %idxprom11
  %13 = load ptr, ptr %a.addr, align 8
  %14 = load i32, ptr %j, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds %struct.Student, ptr %13, i64 %idxprom13
  call void @swap_Student(ptr noundef %arrayidx12, ptr noundef %arrayidx14)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond2, !llvm.loop !5

for.end:                                          ; preds = %for.cond2
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end16:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %std = alloca [5 x %struct.Student], align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %std, ptr align 8 @__const.main.std, i64 400, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.Student], ptr %std, i64 0, i64 %idxprom
  %name = getelementptr inbounds %struct.Student, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x i8], ptr %name, i64 0, i64 0
  %2 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [5 x %struct.Student], ptr %std, i64 0, i64 %idxprom1
  %height = getelementptr inbounds %struct.Student, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %height, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [5 x %struct.Student], ptr %std, i64 0, i64 %idxprom3
  %weight = getelementptr inbounds %struct.Student, ptr %arrayidx4, i32 0, i32 2
  %5 = load float, ptr %weight, align 4
  %conv = fpext float %5 to double
  %6 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [5 x %struct.Student], ptr %std, i64 0, i64 %idxprom5
  %schols = getelementptr inbounds %struct.Student, ptr %arrayidx6, i32 0, i32 3
  %7 = load i64, ptr %schols, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay, i32 noundef %3, double noundef %conv, i64 noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %arraydecay7 = getelementptr inbounds [5 x %struct.Student], ptr %std, i64 0, i64 0
  call void @sort_by_height(ptr noundef %arraydecay7, i32 noundef 5)
  %call8 = call i32 @puts(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc28, %for.end
  %9 = load i32, ptr %i, align 4
  %cmp10 = icmp slt i32 %9, 5
  br i1 %cmp10, label %for.body12, label %for.end30

for.body12:                                       ; preds = %for.cond9
  %10 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [5 x %struct.Student], ptr %std, i64 0, i64 %idxprom13
  %name15 = getelementptr inbounds %struct.Student, ptr %arrayidx14, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [64 x i8], ptr %name15, i64 0, i64 0
  %11 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [5 x %struct.Student], ptr %std, i64 0, i64 %idxprom17
  %height19 = getelementptr inbounds %struct.Student, ptr %arrayidx18, i32 0, i32 1
  %12 = load i32, ptr %height19, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [5 x %struct.Student], ptr %std, i64 0, i64 %idxprom20
  %weight22 = getelementptr inbounds %struct.Student, ptr %arrayidx21, i32 0, i32 2
  %14 = load float, ptr %weight22, align 4
  %conv23 = fpext float %14 to double
  %15 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [5 x %struct.Student], ptr %std, i64 0, i64 %idxprom24
  %schols26 = getelementptr inbounds %struct.Student, ptr %arrayidx25, i32 0, i32 3
  %16 = load i64, ptr %schols26, align 8
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay16, i32 noundef %12, double noundef %conv23, i64 noundef %16)
  br label %for.inc28

for.inc28:                                        ; preds = %for.body12
  %17 = load i32, ptr %i, align 4
  %inc29 = add nsw i32 %17, 1
  store i32 %inc29, ptr %i, align 4
  br label %for.cond9, !llvm.loop !9

for.end30:                                        ; preds = %for.cond9
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

declare i32 @puts(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
