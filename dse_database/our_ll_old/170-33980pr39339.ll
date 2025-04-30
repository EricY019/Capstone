; ModuleID = './code/170-33980pr39339.c'
source_filename = "./code/170-33980pr39339.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.D = type { i32 }
%struct.E = type { i64, i64, %struct.C }
%struct.C = type { i32, %struct.D }
%struct.B = type { ptr, i8 }
%struct.A = type { ptr, i32 }

@__const.main.e = private unnamed_addr constant { i64, i64, { i32, { i8, i8, i8, i8 } } } { i64 5, i64 0, { i32, { i8, i8, i8, i8 } } { i32 6, { i8, i8, i8, i8 } { i8 -1, i8 -1, i8 127, i8 85 } } }, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @foo(ptr noundef %screen, i32 noundef %c, i32 noundef %columns, ptr noundef %row) #0 {
entry:
  %screen.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %row.addr = alloca ptr, align 8
  %attr = alloca %struct.D, align 4
  %col = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %screen, ptr %screen.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  store i32 %columns, ptr %columns.addr, align 4
  store ptr %row, ptr %row.addr, align 8
  %0 = load ptr, ptr %screen.addr, align 8
  %col1 = getelementptr inbounds %struct.E, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %col1, align 8
  store i64 %1, ptr %col, align 8
  %2 = load ptr, ptr %screen.addr, align 8
  %defaults = getelementptr inbounds %struct.E, ptr %2, i32 0, i32 2
  %attr2 = getelementptr inbounds %struct.C, ptr %defaults, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %attr, ptr align 4 %attr2, i64 4, i1 false)
  %3 = load i32, ptr %columns.addr, align 4
  %bf.load = load i32, ptr %attr, align 4
  %bf.value = and i32 %3, 15
  %bf.clear = and i32 %bf.load, -16
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, ptr %attr, align 4
  %4 = load i32, ptr %c.addr, align 4
  %5 = load ptr, ptr %row.addr, align 8
  %cells = getelementptr inbounds %struct.B, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %cells, align 8
  %data = getelementptr inbounds %struct.A, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %data, align 8
  %8 = load i64, ptr %col, align 8
  %arrayidx = getelementptr inbounds %struct.C, ptr %7, i64 %8
  %c3 = getelementptr inbounds %struct.C, ptr %arrayidx, i32 0, i32 0
  store i32 %4, ptr %c3, align 4
  %9 = load ptr, ptr %row.addr, align 8
  %cells4 = getelementptr inbounds %struct.B, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %cells4, align 8
  %data5 = getelementptr inbounds %struct.A, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %data5, align 8
  %12 = load i64, ptr %col, align 8
  %arrayidx6 = getelementptr inbounds %struct.C, ptr %11, i64 %12
  %attr7 = getelementptr inbounds %struct.C, ptr %arrayidx6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %attr7, ptr align 4 %attr, i64 4, i1 false)
  %13 = load i64, ptr %col, align 8
  %inc = add nsw i64 %13, 1
  store i64 %inc, ptr %col, align 8
  %bf.load8 = load i32, ptr %attr, align 4
  %bf.clear9 = and i32 %bf.load8, -4194305
  %bf.set10 = or i32 %bf.clear9, 4194304
  store i32 %bf.set10, ptr %attr, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %columns.addr, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, ptr %c.addr, align 4
  %17 = load ptr, ptr %row.addr, align 8
  %cells11 = getelementptr inbounds %struct.B, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %cells11, align 8
  %data12 = getelementptr inbounds %struct.A, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %data12, align 8
  %20 = load i64, ptr %col, align 8
  %arrayidx13 = getelementptr inbounds %struct.C, ptr %19, i64 %20
  %c14 = getelementptr inbounds %struct.C, ptr %arrayidx13, i32 0, i32 0
  store i32 %16, ptr %c14, align 4
  %21 = load ptr, ptr %row.addr, align 8
  %cells15 = getelementptr inbounds %struct.B, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %cells15, align 8
  %data16 = getelementptr inbounds %struct.A, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %data16, align 8
  %24 = load i64, ptr %col, align 8
  %arrayidx17 = getelementptr inbounds %struct.C, ptr %23, i64 %24
  %attr18 = getelementptr inbounds %struct.C, ptr %arrayidx17, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %attr18, ptr align 4 %attr, i64 4, i1 false)
  %25 = load i64, ptr %col, align 8
  %inc19 = add nsw i64 %25, 1
  store i64 %inc19, ptr %col, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4
  %inc20 = add nsw i32 %26, 1
  store i32 %inc20, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca %struct.E, align 8
  %c = alloca [4 x %struct.C], align 4
  %a = alloca %struct.A, align 8
  %b = alloca %struct.B, align 8
  %d = alloca %struct.D, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %e, ptr align 8 @__const.main.e, i64 24, i1 false)
  %data = getelementptr inbounds %struct.A, ptr %a, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x %struct.C], ptr %c, i64 0, i64 0
  store ptr %arraydecay, ptr %data, align 8
  %len = getelementptr inbounds %struct.A, ptr %a, i32 0, i32 1
  store i32 4, ptr %len, align 8
  %cells = getelementptr inbounds %struct.B, ptr %b, i32 0, i32 0
  store ptr %a, ptr %cells, align 8
  %soft_wrapped = getelementptr inbounds %struct.B, ptr %b, i32 0, i32 1
  %bf.load = load i8, ptr %soft_wrapped, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, ptr %soft_wrapped, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %c, i8 0, i64 32, i1 false)
  call void @foo(ptr noundef %e, i32 noundef 65, i32 noundef 2, ptr noundef %b)
  %defaults = getelementptr inbounds %struct.E, ptr %e, i32 0, i32 2
  %attr = getelementptr inbounds %struct.C, ptr %defaults, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %d, ptr align 4 %attr, i64 4, i1 false)
  %bf.load1 = load i32, ptr %d, align 4
  %bf.clear2 = and i32 %bf.load1, -16
  %bf.set3 = or i32 %bf.clear2, 2
  store i32 %bf.set3, ptr %d, align 4
  %arrayidx = getelementptr inbounds [4 x %struct.C], ptr %c, i64 0, i64 0
  %attr4 = getelementptr inbounds %struct.C, ptr %arrayidx, i32 0, i32 1
  %call = call i32 @memcmp(ptr noundef %d, ptr noundef %attr4, i64 noundef 4) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %bf.load5 = load i32, ptr %d, align 4
  %bf.clear6 = and i32 %bf.load5, -4194305
  %bf.set7 = or i32 %bf.clear6, 4194304
  store i32 %bf.set7, ptr %d, align 4
  %arrayidx8 = getelementptr inbounds [4 x %struct.C], ptr %c, i64 0, i64 1
  %attr9 = getelementptr inbounds %struct.C, ptr %arrayidx8, i32 0, i32 1
  %call10 = call i32 @memcmp(ptr noundef %d, ptr noundef %attr9, i64 noundef 4) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  call void @abort() #6
  unreachable

if.end13:                                         ; preds = %if.end
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noreturn nounwind
declare void @abort() #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
