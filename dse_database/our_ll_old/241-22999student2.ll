; ModuleID = './code/241-22999student2.c'
source_filename = "./code/241-22999student2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.Student = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"John\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Doe\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"The id for s = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"The first name for s = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"The last name for s = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %s = alloca %struct.Student, align 8
  %sptr = alloca ptr, align 8
  store ptr %s, ptr %sptr, align 8
  %id = getelementptr inbounds %struct.Student, ptr %s, i32 0, i32 0
  store i32 100, ptr %id, align 8
  %firstName = getelementptr inbounds %struct.Student, ptr %s, i32 0, i32 1
  store ptr @.str, ptr %firstName, align 8
  %lastName = getelementptr inbounds %struct.Student, ptr %s, i32 0, i32 2
  store ptr @.str.1, ptr %lastName, align 8
  %0 = load ptr, ptr %sptr, align 8
  %id1 = getelementptr inbounds %struct.Student, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %id1, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %1)
  %2 = load ptr, ptr %sptr, align 8
  %firstName2 = getelementptr inbounds %struct.Student, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %firstName2, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %3)
  %4 = load ptr, ptr %sptr, align 8
  %lastName4 = getelementptr inbounds %struct.Student, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %lastName4, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %5)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
