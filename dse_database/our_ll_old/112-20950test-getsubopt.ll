; ModuleID = './code/112-20950test-getsubopt.c'
source_filename = "./code/112-20950test-getsubopt.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.buf = private unnamed_addr constant [4 x i8] c"k=v\00", align 1
@__const.main.token0 = private unnamed_addr constant [2 x i8] c"k\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca [4 x i8], align 1
  %options = alloca ptr, align 8
  %token0 = alloca [2 x i8], align 1
  %tokens = alloca [2 x ptr], align 8
  %value = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %buf, ptr align 1 @__const.main.buf, i64 4, i1 false)
  %arraydecay = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %options, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %token0, ptr align 1 @__const.main.token0, i64 2, i1 false)
  %arraydecay1 = getelementptr inbounds [2 x i8], ptr %token0, i64 0, i64 0
  store ptr %arraydecay1, ptr %tokens, align 8
  %arrayinit.element = getelementptr inbounds ptr, ptr %tokens, i64 1
  store ptr null, ptr %arrayinit.element, align 8
  store ptr null, ptr %value, align 8
  %arraydecay2 = getelementptr inbounds [2 x ptr], ptr %tokens, i64 0, i64 0
  %call = call i32 @getsubopt(ptr noundef %options, ptr noundef %arraydecay2, ptr noundef %value)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %value, align 8
  %arraydecay3 = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay3, i64 2
  %cmp4 = icmp eq ptr %0, %add.ptr
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %1 = load ptr, ptr %options, align 8
  %arraydecay5 = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0
  %add.ptr6 = getelementptr inbounds i8, ptr %arraydecay5, i64 3
  %cmp7 = icmp eq ptr %1, %add.ptr6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %2 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp7, %land.rhs ]
  %lnot = xor i1 %2, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @getsubopt(ptr noundef, ptr noundef, ptr noundef) #2

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
