; ModuleID = './code/170-2707310-float.c'
source_filename = "./code/170-2707310-float.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.blub = type { float }

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [20 x i8] c"170-2707310-float.c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"top == top\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"s.f == s.f\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fs[1] == fs[1]\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isNan(float noundef %arg) #0 {
entry:
  %arg.addr = alloca float, align 4
  %x = alloca float, align 4
  store float %arg, ptr %arg.addr, align 4
  %0 = load float, ptr %arg.addr, align 4
  %1 = load float, ptr %arg.addr, align 4
  %cmp = fcmp une float %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.blub, align 4
  %fs = alloca [3 x float], align 4
  %top = alloca float, align 4
  %r = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load float, ptr %top, align 4
  %1 = load float, ptr %top, align 4
  %cmp = fcmp oeq float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 16, ptr noundef @.str.1) #2
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %f = getelementptr inbounds %struct.blub, ptr %s, i32 0, i32 0
  %3 = load float, ptr %f, align 4
  %f1 = getelementptr inbounds %struct.blub, ptr %s, i32 0, i32 0
  %4 = load float, ptr %f1, align 4
  %cmp2 = fcmp oeq float %3, %4
  %lnot4 = xor i1 %cmp2, true
  %lnot.ext5 = zext i1 %lnot4 to i32
  %conv6 = sext i32 %lnot.ext5 to i64
  %tobool7 = icmp ne i64 %conv6, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 17, ptr noundef @.str.2) #2
  unreachable

5:                                                ; No predecessors!
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %5
  %arrayidx = getelementptr inbounds [3 x float], ptr %fs, i64 0, i64 1
  %6 = load float, ptr %arrayidx, align 4
  %arrayidx11 = getelementptr inbounds [3 x float], ptr %fs, i64 0, i64 1
  %7 = load float, ptr %arrayidx11, align 4
  %cmp12 = fcmp oeq float %6, %7
  %lnot14 = xor i1 %cmp12, true
  %lnot.ext15 = zext i1 %lnot14 to i32
  %conv16 = sext i32 %lnot.ext15 to i64
  %tobool17 = icmp ne i64 %conv16, 0
  br i1 %tobool17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end10
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 18, ptr noundef @.str.3) #2
  unreachable

8:                                                ; No predecessors!
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end10
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %8
  %9 = load float, ptr %top, align 4
  %call = call i32 @isNan(float noundef %9)
  store i32 %call, ptr %r, align 4
  %10 = load i32, ptr %r, align 4
  %tobool21 = icmp ne i32 %10, 0
  br i1 %tobool21, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end20
  br label %if.end

if.else:                                          ; preds = %cond.end20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
