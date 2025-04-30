; ModuleID = './code/329-32428py-bad-printers.c'
source_filename = "./code/329-32428py-bad-printers.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.container = type { ptr, i32, ptr }

@array = global [100 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @make_container(ptr dead_on_unwind noalias writable sret(%struct.container) align 8 %agg.result, ptr noundef %name) #0 {
entry:
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %name1 = getelementptr inbounds %struct.container, ptr %agg.result, i32 0, i32 0
  store ptr %0, ptr %name1, align 8
  %len = getelementptr inbounds %struct.container, ptr %agg.result, i32 0, i32 1
  store i32 0, ptr %len, align 8
  %elements = getelementptr inbounds %struct.container, ptr %agg.result, i32 0, i32 2
  store ptr null, ptr %elements, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @add_item(ptr noundef %c, i32 noundef %val) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  %0 = load ptr, ptr %c.addr, align 8
  %len = getelementptr inbounds %struct.container, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %len, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %c.addr, align 8
  %elements = getelementptr inbounds %struct.container, ptr %2, i32 0, i32 2
  store ptr @array, ptr %elements, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %val.addr, align 4
  %4 = load ptr, ptr %c.addr, align 8
  %elements1 = getelementptr inbounds %struct.container, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %elements1, align 8
  %6 = load ptr, ptr %c.addr, align 8
  %len2 = getelementptr inbounds %struct.container, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %len2, align 8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  store i32 %3, ptr %arrayidx, align 4
  %8 = load ptr, ptr %c.addr, align 8
  %len3 = getelementptr inbounds %struct.container, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %len3, align 8
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %len3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca %struct.container, align 8
  store i32 0, ptr %retval, align 4
  call void @make_container(ptr dead_on_unwind writable sret(%struct.container) align 8 %c, ptr noundef @.str)
  call void @add_item(ptr noundef %c, i32 noundef 23)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
