; ModuleID = './code/188-7878structs.c'
source_filename = "./code/188-7878structs.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr }

@.str = private unnamed_addr constant [59 x i8] c"Accessing struct member with 'member access operator': %i\0A\00", align 1
@__const.main.text1 = private unnamed_addr constant [37 x i8] c"Sending pointer variable to function\00", align 1
@__const.main.text2 = private unnamed_addr constant [28 x i8] c"Sending pointer to function\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %nd = alloca %struct.node, align 8
  %md = alloca ptr, align 8
  %text1 = alloca [37 x i8], align 1
  %text2 = alloca [28 x i8], align 1
  %n = getelementptr inbounds %struct.node, ptr %nd, i32 0, i32 0
  store i32 10, ptr %n, align 8
  store ptr %nd, ptr %md, align 8
  %n1 = getelementptr inbounds %struct.node, ptr %nd, i32 0, i32 0
  %0 = load i32, ptr %n1, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %text1, ptr align 1 @__const.main.text1, i64 37, i1 false)
  %1 = load ptr, ptr %md, align 8
  %arraydecay = getelementptr inbounds [37 x i8], ptr %text1, i64 0, i64 0
  call void @getStruct(ptr noundef %1, ptr noundef %arraydecay)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %text2, ptr align 1 @__const.main.text2, i64 28, i1 false)
  %arraydecay2 = getelementptr inbounds [28 x i8], ptr %text2, i64 0, i64 0
  call void @getStruct(ptr noundef %nd, ptr noundef %arraydecay2)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @getStruct(ptr noundef %s, ptr noundef %text) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %text.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %text, ptr %text.addr, align 8
  %0 = load ptr, ptr %text.addr, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %n = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %n, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %0, i32 noundef %2)
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
