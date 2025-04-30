; ModuleID = './code/250-11761signest.c'
source_filename = "./code/250-11761signest.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.sigaction = type { %union.__sigaction_u, i32, i32 }
%union.__sigaction_u = type { ptr }

@p = global ptr null, align 8
@keeper.recurse = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @bowler() #0 {
entry:
  %0 = load ptr, ptr @p, align 8
  %1 = load volatile i8, ptr %0, align 1
  %conv = sext i8 %1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @keeper(i32 noundef %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, ptr %sig.addr, align 4
  %0 = load i32, ptr @keeper.recurse, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @keeper.recurse, align 4
  %cmp = icmp slt i32 %inc, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @bowler()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @_exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %act = alloca %struct.sigaction, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %act, i8 0, i64 16, i1 false)
  %__sigaction_u = getelementptr inbounds %struct.sigaction, ptr %act, i32 0, i32 0
  store ptr @keeper, ptr %__sigaction_u, align 8
  %sa_flags = getelementptr inbounds %struct.sigaction, ptr %act, i32 0, i32 2
  store i32 16, ptr %sa_flags, align 4
  %call = call i32 @sigaction(i32 noundef 11, ptr noundef %act, ptr noundef null)
  %call1 = call i32 @sigaction(i32 noundef 10, ptr noundef %act, ptr noundef null)
  %call2 = call i64 @bowler()
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
