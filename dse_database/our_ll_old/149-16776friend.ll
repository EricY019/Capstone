; ModuleID = './code/149-16776friend.c'
source_filename = "./code/149-16776friend.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.guy = type { %struct.names, [20 x i8], [20 x i8], float }
%struct.names = type { [20 x i8], [20 x i8] }

@.str = private unnamed_addr constant [42 x i8] c"    Thank you for the wonderful evening, \00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"You certainly prove that a \00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"is a special kind of guy. We must get together\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"over a delicious \00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c" and have a few laughs\00", align 1
@msgs = global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 8
@__const.main.fellow = private unnamed_addr constant %struct.guy { %struct.names { [20 x i8] c"Ewen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Villard\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [20 x i8] c"grilled salmon\00\00\00\00\00\00", [20 x i8] c"personality coach\00\00\00", float 6.811200e+04 }, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"Dear %s, \0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s%s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"!!\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"\0A%40s%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"See you soon,\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"%40s%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Shalala\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fellow = alloca %struct.guy, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %fellow, ptr align 4 @__const.main.fellow, i64 84, i1 false)
  %handle = getelementptr inbounds %struct.guy, ptr %fellow, i32 0, i32 0
  %first = getelementptr inbounds %struct.names, ptr %handle, i32 0, i32 0
  %arraydecay = getelementptr inbounds [20 x i8], ptr %first, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %arraydecay)
  %0 = load ptr, ptr @msgs, align 8
  %handle1 = getelementptr inbounds %struct.guy, ptr %fellow, i32 0, i32 0
  %first2 = getelementptr inbounds %struct.names, ptr %handle1, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [20 x i8], ptr %first2, i64 0, i64 0
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %0, ptr noundef %arraydecay3)
  %1 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @msgs, i64 0, i64 1), align 8
  %job = getelementptr inbounds %struct.guy, ptr %fellow, i32 0, i32 2
  %arraydecay5 = getelementptr inbounds [20 x i8], ptr %job, i64 0, i64 0
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %1, ptr noundef %arraydecay5)
  %2 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @msgs, i64 0, i64 2), align 8
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %2)
  %3 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @msgs, i64 0, i64 3), align 8
  %favfood = getelementptr inbounds %struct.guy, ptr %fellow, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [20 x i8], ptr %favfood, i64 0, i64 0
  %4 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @msgs, i64 0, i64 4), align 8
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %3, ptr noundef %arraydecay8, ptr noundef %4)
  %income = getelementptr inbounds %struct.guy, ptr %fellow, i32 0, i32 3
  %5 = load float, ptr %income, align 4
  %conv = fpext float %5 to double
  %cmp = fcmp ogt double %conv, 1.500000e+05
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call11 = call i32 @puts(ptr noundef @.str.10)
  br label %if.end20

if.else:                                          ; preds = %entry
  %income12 = getelementptr inbounds %struct.guy, ptr %fellow, i32 0, i32 3
  %6 = load float, ptr %income12, align 4
  %conv13 = fpext float %6 to double
  %cmp14 = fcmp ogt double %conv13, 7.500000e+04
  br i1 %cmp14, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else
  %call17 = call i32 @puts(ptr noundef @.str.11)
  br label %if.end

if.else18:                                        ; preds = %if.else
  %call19 = call i32 @puts(ptr noundef @.str.12)
  br label %if.end

if.end:                                           ; preds = %if.else18, %if.then16
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.14, ptr noundef @.str.15)
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, ptr noundef @.str.14, ptr noundef @.str.17)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

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
