; ModuleID = './code/025-15913isspace.c'
source_filename = "./code/025-15913isspace.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [19 x i8] c"025-15913isspace.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"isspace(' ')\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"isspace('\\t')\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"isspace('\\n')\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"isspace('\\f')\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"isspace('\\r')\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"isspace('\\v')\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"!isspace('\\\\')\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @isspace(i32 noundef 32) #3
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool1 = icmp ne i64 %conv, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 11, ptr noundef @.str.1) #4
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %0
  %call2 = call i32 @isspace(i32 noundef 9) #3
  %tobool3 = icmp ne i32 %call2, 0
  %lnot4 = xor i1 %tobool3, true
  %lnot.ext5 = zext i1 %lnot4 to i32
  %conv6 = sext i32 %lnot.ext5 to i64
  %tobool7 = icmp ne i64 %conv6, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 12, ptr noundef @.str.2) #4
  unreachable

1:                                                ; No predecessors!
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %1
  %call11 = call i32 @isspace(i32 noundef 10) #3
  %tobool12 = icmp ne i32 %call11, 0
  %lnot13 = xor i1 %tobool12, true
  %lnot.ext14 = zext i1 %lnot13 to i32
  %conv15 = sext i32 %lnot.ext14 to i64
  %tobool16 = icmp ne i64 %conv15, 0
  br i1 %tobool16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end10
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 13, ptr noundef @.str.3) #4
  unreachable

2:                                                ; No predecessors!
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end10
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %2
  %call20 = call i32 @isspace(i32 noundef 12) #3
  %tobool21 = icmp ne i32 %call20, 0
  %lnot22 = xor i1 %tobool21, true
  %lnot.ext23 = zext i1 %lnot22 to i32
  %conv24 = sext i32 %lnot.ext23 to i64
  %tobool25 = icmp ne i64 %conv24, 0
  br i1 %tobool25, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %cond.end19
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 14, ptr noundef @.str.4) #4
  unreachable

3:                                                ; No predecessors!
  br label %cond.end28

cond.false27:                                     ; preds = %cond.end19
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %3
  %call29 = call i32 @isspace(i32 noundef 13) #3
  %tobool30 = icmp ne i32 %call29, 0
  %lnot31 = xor i1 %tobool30, true
  %lnot.ext32 = zext i1 %lnot31 to i32
  %conv33 = sext i32 %lnot.ext32 to i64
  %tobool34 = icmp ne i64 %conv33, 0
  br i1 %tobool34, label %cond.true35, label %cond.false36

cond.true35:                                      ; preds = %cond.end28
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 15, ptr noundef @.str.5) #4
  unreachable

4:                                                ; No predecessors!
  br label %cond.end37

cond.false36:                                     ; preds = %cond.end28
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false36, %4
  %call38 = call i32 @isspace(i32 noundef 11) #3
  %tobool39 = icmp ne i32 %call38, 0
  %lnot40 = xor i1 %tobool39, true
  %lnot.ext41 = zext i1 %lnot40 to i32
  %conv42 = sext i32 %lnot.ext41 to i64
  %tobool43 = icmp ne i64 %conv42, 0
  br i1 %tobool43, label %cond.true44, label %cond.false45

cond.true44:                                      ; preds = %cond.end37
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 16, ptr noundef @.str.6) #4
  unreachable

5:                                                ; No predecessors!
  br label %cond.end46

cond.false45:                                     ; preds = %cond.end37
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %5
  %call47 = call i32 @isspace(i32 noundef 92) #3
  %tobool48 = icmp ne i32 %call47, 0
  %lnot49 = xor i1 %tobool48, true
  %lnot51 = xor i1 %lnot49, true
  %lnot.ext52 = zext i1 %lnot51 to i32
  %conv53 = sext i32 %lnot.ext52 to i64
  %tobool54 = icmp ne i64 %conv53, 0
  br i1 %tobool54, label %cond.true55, label %cond.false56

cond.true55:                                      ; preds = %cond.end46
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 17, ptr noundef @.str.7) #4
  unreachable

6:                                                ; No predecessors!
  br label %cond.end57

cond.false56:                                     ; preds = %cond.end46
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false56, %6
  ret i32 0
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind willreturn memory(read) }
attributes #4 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
