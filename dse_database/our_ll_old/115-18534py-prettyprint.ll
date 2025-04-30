; ModuleID = './code/115-18534py-prettyprint.c'
source_filename = "./code/115-18534py-prettyprint.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.string_repr = type { %struct.whybother }
%struct.whybother = type { ptr }
%struct.eval_type_s = type { i32 }
%struct.outerstruct = type { %struct.substruct, i32 }
%struct.substruct = type { i32, i32 }
%struct.container = type { %struct.string_repr, i32, ptr }
%struct.s = type { i32, ptr }
%struct.ss = type { %struct.s, %struct.s }
%struct.arraystruct = type { i32, [2 x %struct.s] }
%struct.nullstr = type { ptr }
%struct.justchildren = type { i32, ptr }
%struct.memory_error = type { ptr }
%struct.ns = type { ptr, i32 }
%struct.lazystring = type { ptr }
%struct.hint_error = type { i32 }
%struct.children_as_list = type { i32 }

@array = global [100 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"one\00", align 1
@string_1 = global %struct.string_repr { %struct.whybother { ptr @.str } }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@string_2 = global %struct.string_repr { %struct.whybother { ptr @.str.1 } }, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"this is x\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"container2\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"const string\00", align 1
@__const.main.cstring = private unnamed_addr constant %struct.string_repr { %struct.whybother { ptr @.str.5 } }, align 8
@narray = global [10 x i32] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"blah\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"embedded\00null\00string\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"embedded x\81\82\83\84\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"embedded x\C2\00", align 1
@__const.eval_sub.eval1 = private unnamed_addr constant %struct.eval_type_s { i32 1 }, align 4
@__const.eval_sub.eval2 = private unnamed_addr constant %struct.eval_type_s { i32 2 }, align 4
@__const.eval_sub.eval3 = private unnamed_addr constant %struct.eval_type_s { i32 3 }, align 4
@__const.eval_sub.eval4 = private unnamed_addr constant %struct.eval_type_s { i32 4 }, align 4
@__const.eval_sub.eval5 = private unnamed_addr constant %struct.eval_type_s { i32 5 }, align 4
@__const.eval_sub.eval6 = private unnamed_addr constant %struct.eval_type_s { i32 6 }, align 4
@__const.eval_sub.eval7 = private unnamed_addr constant %struct.eval_type_s { i32 7 }, align 4
@__const.eval_sub.eval8 = private unnamed_addr constant %struct.eval_type_s { i32 8 }, align 4
@__const.eval_sub.eval9 = private unnamed_addr constant %struct.eval_type_s { i32 9 }, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define [2 x i64] @substruct_test() #0 {
entry:
  %retval = alloca %struct.outerstruct, align 4
  %retval.coerce = alloca [2 x i64], align 8
  %s = getelementptr inbounds %struct.outerstruct, ptr %retval, i32 0, i32 0
  %a = getelementptr inbounds %struct.substruct, ptr %s, i32 0, i32 0
  store i32 0, ptr %a, align 4
  %s1 = getelementptr inbounds %struct.outerstruct, ptr %retval, i32 0, i32 0
  %b = getelementptr inbounds %struct.substruct, ptr %s1, i32 0, i32 1
  store i32 0, ptr %b, align 4
  %x = getelementptr inbounds %struct.outerstruct, ptr %retval, i32 0, i32 1
  store i32 0, ptr %x, align 4
  %s2 = getelementptr inbounds %struct.outerstruct, ptr %retval, i32 0, i32 0
  %a3 = getelementptr inbounds %struct.substruct, ptr %s2, i32 0, i32 0
  store i32 3, ptr %a3, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.coerce, ptr align 4 %retval, i64 12, i1 false)
  %0 = load [2 x i64], ptr %retval.coerce, align 8
  ret [2 x i64] %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @make_string(ptr noundef %s) #0 {
entry:
  %retval = alloca %struct.string_repr, align 8
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %whybother = getelementptr inbounds %struct.string_repr, ptr %retval, i32 0, i32 0
  %contents = getelementptr inbounds %struct.whybother, ptr %whybother, i32 0, i32 0
  store ptr %0, ptr %contents, align 8
  %coerce.dive = getelementptr inbounds %struct.string_repr, ptr %retval, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.whybother, ptr %coerce.dive, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive1, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @make_container(ptr dead_on_unwind noalias writable sret(%struct.container) align 8 %agg.result, ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %tmp = alloca %struct.string_repr, align 8
  store ptr %s, ptr %s.addr, align 8
  %name = getelementptr inbounds %struct.container, ptr %agg.result, i32 0, i32 0
  %0 = load ptr, ptr %s.addr, align 8
  %call = call i64 @make_string(ptr noundef %0)
  %coerce.dive = getelementptr inbounds %struct.string_repr, ptr %tmp, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.whybother, ptr %coerce.dive, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %name, ptr align 8 %tmp, i64 8, i1 false)
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
define void @init_s(ptr noundef %s, i32 noundef %a) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %a, ptr %a.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load ptr, ptr %s.addr, align 8
  %a1 = getelementptr inbounds %struct.s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %a1, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %a2 = getelementptr inbounds %struct.s, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %s.addr, align 8
  %b = getelementptr inbounds %struct.s, ptr %3, i32 0, i32 1
  store ptr %a2, ptr %b, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @init_ss(ptr noundef %s, i32 noundef %a, i32 noundef %b) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load ptr, ptr %s.addr, align 8
  %a1 = getelementptr inbounds %struct.ss, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %a.addr, align 4
  call void @init_s(ptr noundef %a1, i32 noundef %1)
  %2 = load ptr, ptr %s.addr, align 8
  %b2 = getelementptr inbounds %struct.ss, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %b.addr, align 4
  call void @init_s(ptr noundef %b2, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @do_nothing() #0 {
entry:
  %c = alloca i32, align 4
  store i32 23, ptr %c, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ss = alloca %struct.ss, align 8
  %ssa = alloca [2 x %struct.ss], align 8
  %arraystruct = alloca %struct.arraystruct, align 8
  %x = alloca %struct.string_repr, align 8
  %c = alloca %struct.container, align 8
  %c2 = alloca %struct.container, align 8
  %cstring = alloca %struct.string_repr, align 8
  %nullstr = alloca %struct.nullstr, align 8
  %nstype = alloca %struct.justchildren, align 8
  %nstype2 = alloca %struct.justchildren, align 8
  %me = alloca %struct.memory_error, align 8
  %ns = alloca %struct.ns, align 8
  %ns2 = alloca %struct.ns, align 8
  %estring = alloca %struct.lazystring, align 8
  %estring2 = alloca %struct.lazystring, align 8
  %hint_error = alloca %struct.hint_error, align 4
  %children_as_list = alloca %struct.children_as_list, align 4
  store i32 0, ptr %retval, align 4
  %call = call i64 @make_string(ptr noundef @.str.2)
  %coerce.dive = getelementptr inbounds %struct.string_repr, ptr %x, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.whybother, ptr %coerce.dive, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive1, align 8
  call void @make_container(ptr dead_on_unwind writable sret(%struct.container) align 8 %c, ptr noundef @.str.3)
  call void @make_container(ptr dead_on_unwind writable sret(%struct.container) align 8 %c2, ptr noundef @.str.4)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cstring, ptr align 8 @__const.main.cstring, i64 8, i1 false)
  %elements = getelementptr inbounds %struct.justchildren, ptr %nstype, i32 0, i32 1
  store ptr @narray, ptr %elements, align 8
  %len = getelementptr inbounds %struct.justchildren, ptr %nstype, i32 0, i32 0
  store i32 0, ptr %len, align 8
  %s = getelementptr inbounds %struct.memory_error, ptr %me, i32 0, i32 0
  store ptr @.str.6, ptr %s, align 8
  call void @init_ss(ptr noundef %ss, i32 noundef 1, i32 noundef 2)
  %arraydecay = getelementptr inbounds [2 x %struct.ss], ptr %ssa, i64 0, i64 0
  %add.ptr = getelementptr inbounds %struct.ss, ptr %arraydecay, i64 0
  call void @init_ss(ptr noundef %add.ptr, i32 noundef 3, i32 noundef 4)
  %arraydecay2 = getelementptr inbounds [2 x %struct.ss], ptr %ssa, i64 0, i64 0
  %add.ptr3 = getelementptr inbounds %struct.ss, ptr %arraydecay2, i64 1
  call void @init_ss(ptr noundef %add.ptr3, i32 noundef 5, i32 noundef 6)
  call void @llvm.memset.p0.i64(ptr align 8 %nullstr, i8 0, i64 8, i1 false)
  %y = getelementptr inbounds %struct.arraystruct, ptr %arraystruct, i32 0, i32 0
  store i32 7, ptr %y, align 8
  %x4 = getelementptr inbounds %struct.arraystruct, ptr %arraystruct, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.s], ptr %x4, i64 0, i64 0
  call void @init_s(ptr noundef %arrayidx, i32 noundef 23)
  %x5 = getelementptr inbounds %struct.arraystruct, ptr %arraystruct, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [2 x %struct.s], ptr %x5, i64 0, i64 1
  call void @init_s(ptr noundef %arrayidx6, i32 noundef 24)
  %null_str = getelementptr inbounds %struct.ns, ptr %ns, i32 0, i32 0
  store ptr @.str.7, ptr %null_str, align 8
  %length = getelementptr inbounds %struct.ns, ptr %ns, i32 0, i32 1
  store i32 20, ptr %length, align 8
  %null_str7 = getelementptr inbounds %struct.ns, ptr %ns2, i32 0, i32 0
  store ptr null, ptr %null_str7, align 8
  %length8 = getelementptr inbounds %struct.ns, ptr %ns2, i32 0, i32 1
  store i32 20, ptr %length8, align 8
  %lazy_str = getelementptr inbounds %struct.lazystring, ptr %estring, i32 0, i32 0
  store ptr @.str.8, ptr %lazy_str, align 8
  %lazy_str9 = getelementptr inbounds %struct.lazystring, ptr %estring2, i32 0, i32 0
  store ptr @.str.9, ptr %lazy_str9, align 8
  call void @add_item(ptr noundef %c, i32 noundef 23)
  call void @add_item(ptr noundef %c, i32 noundef 72)
  %elements10 = getelementptr inbounds %struct.justchildren, ptr %nstype, i32 0, i32 1
  %0 = load ptr, ptr %elements10, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %0, i64 0
  store i32 7, ptr %arrayidx11, align 4
  %elements12 = getelementptr inbounds %struct.justchildren, ptr %nstype, i32 0, i32 1
  %1 = load ptr, ptr %elements12, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 42, ptr %arrayidx13, align 4
  %len14 = getelementptr inbounds %struct.justchildren, ptr %nstype, i32 0, i32 0
  store i32 2, ptr %len14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %nstype2, ptr align 8 %nstype, i64 16, i1 false)
  call void @eval_sub()
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @eval_sub() #0 {
entry:
  %eval1 = alloca %struct.eval_type_s, align 4
  %eval2 = alloca %struct.eval_type_s, align 4
  %eval3 = alloca %struct.eval_type_s, align 4
  %eval4 = alloca %struct.eval_type_s, align 4
  %eval5 = alloca %struct.eval_type_s, align 4
  %eval6 = alloca %struct.eval_type_s, align 4
  %eval7 = alloca %struct.eval_type_s, align 4
  %eval8 = alloca %struct.eval_type_s, align 4
  %eval9 = alloca %struct.eval_type_s, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %eval1, ptr align 4 @__const.eval_sub.eval1, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %eval2, ptr align 4 @__const.eval_sub.eval2, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %eval3, ptr align 4 @__const.eval_sub.eval3, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %eval4, ptr align 4 @__const.eval_sub.eval4, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %eval5, ptr align 4 @__const.eval_sub.eval5, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %eval6, ptr align 4 @__const.eval_sub.eval6, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %eval7, ptr align 4 @__const.eval_sub.eval7, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %eval8, ptr align 4 @__const.eval_sub.eval8, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %eval9, ptr align 4 @__const.eval_sub.eval9, i64 4, i1 false)
  %x = getelementptr inbounds %struct.eval_type_s, ptr %eval1, i32 0, i32 0
  %0 = load i32, ptr %x, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %x, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
