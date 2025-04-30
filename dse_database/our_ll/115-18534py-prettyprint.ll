; ModuleID = 'code/115-18534py-prettyprint.c'
source_filename = "code/115-18534py-prettyprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_repr = type { %struct.whybother }
%struct.whybother = type { i8* }
%struct.eval_type_s = type { i32 }
%struct.outerstruct = type { %struct.substruct, i32 }
%struct.substruct = type { i32, i32 }
%struct.container = type { %struct.string_repr, i32, i32* }
%struct.s = type { i32, i32* }
%struct.ss = type { %struct.s, %struct.s }
%struct.arraystruct = type { i32, [2 x %struct.s] }
%struct.nullstr = type { i8* }
%struct.justchildren = type { i32, i32* }
%struct.memory_error = type { i8* }
%struct.ns = type { i8*, i32 }
%struct.lazystring = type { i8* }
%struct.hint_error = type { i32 }
%struct.children_as_list = type { i32 }

@array = dso_local global [100 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"one\00", align 1
@string_1 = dso_local global %struct.string_repr { %struct.whybother { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0) } }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@string_2 = dso_local global %struct.string_repr { %struct.whybother { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0) } }, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"this is x\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"container2\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"const string\00", align 1
@__const.main.cstring = private unnamed_addr constant %struct.string_repr { %struct.whybother { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0) } }, align 8
@narray = dso_local global [10 x i32] zeroinitializer, align 16
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @substruct_test() #0 {
entry:
  %retval = alloca %struct.outerstruct, align 4
  %retval.coerce = alloca { i64, i32 }, align 8
  %s = getelementptr inbounds %struct.outerstruct, %struct.outerstruct* %retval, i32 0, i32 0
  %a = getelementptr inbounds %struct.substruct, %struct.substruct* %s, i32 0, i32 0
  store i32 0, i32* %a, align 4
  %s1 = getelementptr inbounds %struct.outerstruct, %struct.outerstruct* %retval, i32 0, i32 0
  %b = getelementptr inbounds %struct.substruct, %struct.substruct* %s1, i32 0, i32 1
  store i32 0, i32* %b, align 4
  %x = getelementptr inbounds %struct.outerstruct, %struct.outerstruct* %retval, i32 0, i32 1
  store i32 0, i32* %x, align 4
  %s2 = getelementptr inbounds %struct.outerstruct, %struct.outerstruct* %retval, i32 0, i32 0
  %a3 = getelementptr inbounds %struct.substruct, %struct.substruct* %s2, i32 0, i32 0
  store i32 3, i32* %a3, align 4
  %0 = bitcast { i64, i32 }* %retval.coerce to i8*
  %1 = bitcast %struct.outerstruct* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 4 %1, i64 12, i1 false)
  %2 = load { i64, i32 }, { i64, i32 }* %retval.coerce, align 8
  ret { i64, i32 } %2
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @make_string(i8* %s) #0 {
entry:
  %retval = alloca %struct.string_repr, align 8
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %whybother = getelementptr inbounds %struct.string_repr, %struct.string_repr* %retval, i32 0, i32 0
  %contents = getelementptr inbounds %struct.whybother, %struct.whybother* %whybother, i32 0, i32 0
  store i8* %0, i8** %contents, align 8
  %coerce.dive = getelementptr inbounds %struct.string_repr, %struct.string_repr* %retval, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.whybother, %struct.whybother* %coerce.dive, i32 0, i32 0
  %1 = load i8*, i8** %coerce.dive1, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_container(%struct.container* noalias sret(%struct.container) align 8 %agg.result, i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %tmp = alloca %struct.string_repr, align 8
  store i8* %s, i8** %s.addr, align 8
  %name = getelementptr inbounds %struct.container, %struct.container* %agg.result, i32 0, i32 0
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i8* @make_string(i8* %0)
  %coerce.dive = getelementptr inbounds %struct.string_repr, %struct.string_repr* %tmp, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.whybother, %struct.whybother* %coerce.dive, i32 0, i32 0
  store i8* %call, i8** %coerce.dive1, align 8
  %1 = bitcast %struct.string_repr* %name to i8*
  %2 = bitcast %struct.string_repr* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  %len = getelementptr inbounds %struct.container, %struct.container* %agg.result, i32 0, i32 1
  store i32 0, i32* %len, align 8
  %elements = getelementptr inbounds %struct.container, %struct.container* %agg.result, i32 0, i32 2
  store i32* null, i32** %elements, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_item(%struct.container* %c, i32 %val) #0 {
entry:
  %c.addr = alloca %struct.container*, align 8
  %val.addr = alloca i32, align 4
  store %struct.container* %c, %struct.container** %c.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load %struct.container*, %struct.container** %c.addr, align 8
  %len = getelementptr inbounds %struct.container, %struct.container* %0, i32 0, i32 1
  %1 = load i32, i32* %len, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.container*, %struct.container** %c.addr, align 8
  %elements = getelementptr inbounds %struct.container, %struct.container* %2, i32 0, i32 2
  store i32* getelementptr inbounds ([100 x i32], [100 x i32]* @array, i64 0, i64 0), i32** %elements, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %val.addr, align 4
  %4 = load %struct.container*, %struct.container** %c.addr, align 8
  %elements1 = getelementptr inbounds %struct.container, %struct.container* %4, i32 0, i32 2
  %5 = load i32*, i32** %elements1, align 8
  %6 = load %struct.container*, %struct.container** %c.addr, align 8
  %len2 = getelementptr inbounds %struct.container, %struct.container* %6, i32 0, i32 1
  %7 = load i32, i32* %len2, align 8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  %8 = load %struct.container*, %struct.container** %c.addr, align 8
  %len3 = getelementptr inbounds %struct.container, %struct.container* %8, i32 0, i32 1
  %9 = load i32, i32* %len3, align 8
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %len3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_s(%struct.s* %s, i32 %a) #0 {
entry:
  %s.addr = alloca %struct.s*, align 8
  %a.addr = alloca i32, align 4
  store %struct.s* %s, %struct.s** %s.addr, align 8
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load %struct.s*, %struct.s** %s.addr, align 8
  %a1 = getelementptr inbounds %struct.s, %struct.s* %1, i32 0, i32 0
  store i32 %0, i32* %a1, align 8
  %2 = load %struct.s*, %struct.s** %s.addr, align 8
  %a2 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 0
  %3 = load %struct.s*, %struct.s** %s.addr, align 8
  %b = getelementptr inbounds %struct.s, %struct.s* %3, i32 0, i32 1
  store i32* %a2, i32** %b, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_ss(%struct.ss* %s, i32 %a, i32 %b) #0 {
entry:
  %s.addr = alloca %struct.ss*, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store %struct.ss* %s, %struct.ss** %s.addr, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load %struct.ss*, %struct.ss** %s.addr, align 8
  %a1 = getelementptr inbounds %struct.ss, %struct.ss* %0, i32 0, i32 0
  %1 = load i32, i32* %a.addr, align 4
  call void @init_s(%struct.s* %a1, i32 %1)
  %2 = load %struct.ss*, %struct.ss** %s.addr, align 8
  %b2 = getelementptr inbounds %struct.ss, %struct.ss* %2, i32 0, i32 1
  %3 = load i32, i32* %b.addr, align 4
  call void @init_s(%struct.s* %b2, i32 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_nothing() #0 {
entry:
  %c = alloca i32, align 4
  store i32 23, i32* %c, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ss = alloca %struct.ss, align 8
  %ssa = alloca [2 x %struct.ss], align 16
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
  store i32 0, i32* %retval, align 4
  %call = call i8* @make_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %coerce.dive = getelementptr inbounds %struct.string_repr, %struct.string_repr* %x, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.whybother, %struct.whybother* %coerce.dive, i32 0, i32 0
  store i8* %call, i8** %coerce.dive1, align 8
  call void @make_container(%struct.container* sret(%struct.container) align 8 %c, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  call void @make_container(%struct.container* sret(%struct.container) align 8 %c2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %0 = bitcast %struct.string_repr* %cstring to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.string_repr* @__const.main.cstring to i8*), i64 8, i1 false)
  %elements = getelementptr inbounds %struct.justchildren, %struct.justchildren* %nstype, i32 0, i32 1
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @narray, i64 0, i64 0), i32** %elements, align 8
  %len = getelementptr inbounds %struct.justchildren, %struct.justchildren* %nstype, i32 0, i32 0
  store i32 0, i32* %len, align 8
  %s = getelementptr inbounds %struct.memory_error, %struct.memory_error* %me, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %s, align 8
  call void @init_ss(%struct.ss* %ss, i32 1, i32 2)
  %arraydecay = getelementptr inbounds [2 x %struct.ss], [2 x %struct.ss]* %ssa, i64 0, i64 0
  %add.ptr = getelementptr inbounds %struct.ss, %struct.ss* %arraydecay, i64 0
  call void @init_ss(%struct.ss* %add.ptr, i32 3, i32 4)
  %arraydecay2 = getelementptr inbounds [2 x %struct.ss], [2 x %struct.ss]* %ssa, i64 0, i64 0
  %add.ptr3 = getelementptr inbounds %struct.ss, %struct.ss* %arraydecay2, i64 1
  call void @init_ss(%struct.ss* %add.ptr3, i32 5, i32 6)
  %1 = bitcast %struct.nullstr* %nullstr to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %y = getelementptr inbounds %struct.arraystruct, %struct.arraystruct* %arraystruct, i32 0, i32 0
  store i32 7, i32* %y, align 8
  %x4 = getelementptr inbounds %struct.arraystruct, %struct.arraystruct* %arraystruct, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.s], [2 x %struct.s]* %x4, i64 0, i64 0
  call void @init_s(%struct.s* %arrayidx, i32 23)
  %x5 = getelementptr inbounds %struct.arraystruct, %struct.arraystruct* %arraystruct, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [2 x %struct.s], [2 x %struct.s]* %x5, i64 0, i64 1
  call void @init_s(%struct.s* %arrayidx6, i32 24)
  %null_str = getelementptr inbounds %struct.ns, %struct.ns* %ns, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8** %null_str, align 8
  %length = getelementptr inbounds %struct.ns, %struct.ns* %ns, i32 0, i32 1
  store i32 20, i32* %length, align 8
  %null_str7 = getelementptr inbounds %struct.ns, %struct.ns* %ns2, i32 0, i32 0
  store i8* null, i8** %null_str7, align 8
  %length8 = getelementptr inbounds %struct.ns, %struct.ns* %ns2, i32 0, i32 1
  store i32 20, i32* %length8, align 8
  %lazy_str = getelementptr inbounds %struct.lazystring, %struct.lazystring* %estring, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %lazy_str, align 8
  %lazy_str9 = getelementptr inbounds %struct.lazystring, %struct.lazystring* %estring2, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %lazy_str9, align 8
  call void @add_item(%struct.container* %c, i32 23)
  call void @add_item(%struct.container* %c, i32 72)
  %elements10 = getelementptr inbounds %struct.justchildren, %struct.justchildren* %nstype, i32 0, i32 1
  %2 = load i32*, i32** %elements10, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %2, i64 0
  store i32 7, i32* %arrayidx11, align 4
  %elements12 = getelementptr inbounds %struct.justchildren, %struct.justchildren* %nstype, i32 0, i32 1
  %3 = load i32*, i32** %elements12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %3, i64 1
  store i32 42, i32* %arrayidx13, align 4
  %len14 = getelementptr inbounds %struct.justchildren, %struct.justchildren* %nstype, i32 0, i32 0
  store i32 2, i32* %len14, align 8
  %4 = bitcast %struct.justchildren* %nstype2 to i8*
  %5 = bitcast %struct.justchildren* %nstype to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 16, i1 false)
  call void @eval_sub()
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
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
  %0 = bitcast %struct.eval_type_s* %eval1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast (%struct.eval_type_s* @__const.eval_sub.eval1 to i8*), i64 4, i1 false)
  %1 = bitcast %struct.eval_type_s* %eval2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast (%struct.eval_type_s* @__const.eval_sub.eval2 to i8*), i64 4, i1 false)
  %2 = bitcast %struct.eval_type_s* %eval3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.eval_type_s* @__const.eval_sub.eval3 to i8*), i64 4, i1 false)
  %3 = bitcast %struct.eval_type_s* %eval4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.eval_type_s* @__const.eval_sub.eval4 to i8*), i64 4, i1 false)
  %4 = bitcast %struct.eval_type_s* %eval5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.eval_type_s* @__const.eval_sub.eval5 to i8*), i64 4, i1 false)
  %5 = bitcast %struct.eval_type_s* %eval6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.eval_type_s* @__const.eval_sub.eval6 to i8*), i64 4, i1 false)
  %6 = bitcast %struct.eval_type_s* %eval7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.eval_type_s* @__const.eval_sub.eval7 to i8*), i64 4, i1 false)
  %7 = bitcast %struct.eval_type_s* %eval8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.eval_type_s* @__const.eval_sub.eval8 to i8*), i64 4, i1 false)
  %8 = bitcast %struct.eval_type_s* %eval9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.eval_type_s* @__const.eval_sub.eval9 to i8*), i64 4, i1 false)
  %x = getelementptr inbounds %struct.eval_type_s, %struct.eval_type_s* %eval1, i32 0, i32 0
  %9 = load i32, i32* %x, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %x, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
