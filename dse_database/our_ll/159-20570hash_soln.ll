; ModuleID = 'code/159-20570hash_soln.c'
source_filename = "code/159-20570hash_soln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Value = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.Hashable = type { i8*, i32 (i8*)*, i32 (i8*, i8*)* }
%struct.node = type { %struct.Hashable*, %struct.Value*, %struct.node* }
%struct.map = type { i32, %struct.node** }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"key %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"hash %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"value %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"next %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Lookup returned \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Allen\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Downey\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Map\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Value* @make_int_value(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %value = alloca %struct.Value*, align 8
  store i32 %i, i32* %i.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #4
  %0 = bitcast i8* %call to %struct.Value*
  store %struct.Value* %0, %struct.Value** %value, align 8
  %1 = load %struct.Value*, %struct.Value** %value, align 8
  %type = getelementptr inbounds %struct.Value, %struct.Value* %1, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %2 = load i32, i32* %i.addr, align 4
  %3 = load %struct.Value*, %struct.Value** %value, align 8
  %4 = getelementptr inbounds %struct.Value, %struct.Value* %3, i32 0, i32 1
  %i1 = bitcast %union.anon* %4 to i32*
  store i32 %2, i32* %i1, align 8
  %5 = load %struct.Value*, %struct.Value** %value, align 8
  ret %struct.Value* %5
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Value* @make_string_value(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %value = alloca %struct.Value*, align 8
  store i8* %s, i8** %s.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 16) #4
  %0 = bitcast i8* %call to %struct.Value*
  store %struct.Value* %0, %struct.Value** %value, align 8
  %1 = load %struct.Value*, %struct.Value** %value, align 8
  %type = getelementptr inbounds %struct.Value, %struct.Value* %1, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load %struct.Value*, %struct.Value** %value, align 8
  %4 = getelementptr inbounds %struct.Value, %struct.Value* %3, i32 0, i32 1
  %s1 = bitcast %union.anon* %4 to i8**
  store i8* %2, i8** %s1, align 8
  %5 = load %struct.Value*, %struct.Value** %value, align 8
  ret %struct.Value* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_value(%struct.Value* %value) #0 {
entry:
  %value.addr = alloca %struct.Value*, align 8
  store %struct.Value* %value, %struct.Value** %value.addr, align 8
  %0 = load %struct.Value*, %struct.Value** %value.addr, align 8
  %cmp = icmp eq %struct.Value* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Value*, %struct.Value** %value.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.Value* %1)
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %2 = load %struct.Value*, %struct.Value** %value.addr, align 8
  %type = getelementptr inbounds %struct.Value, %struct.Value* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  %4 = load %struct.Value*, %struct.Value** %value.addr, align 8
  %5 = getelementptr inbounds %struct.Value, %struct.Value* %4, i32 0, i32 1
  %i = bitcast %union.anon* %5 to i32*
  %6 = load i32, i32* %i, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %7 = load %struct.Value*, %struct.Value** %value.addr, align 8
  %8 = getelementptr inbounds %struct.Value, %struct.Value* %7, i32 0, i32 1
  %s = bitcast %union.anon* %8 to i8**
  %9 = load i8*, i8** %s, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.end, %sw.bb2, %sw.bb
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Hashable* @make_hashable(i8* %key, i32 (i8*)* %hash, i32 (i8*, i8*)* %equal) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %hash.addr = alloca i32 (i8*)*, align 8
  %equal.addr = alloca i32 (i8*, i8*)*, align 8
  %hashable = alloca %struct.Hashable*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 (i8*)* %hash, i32 (i8*)** %hash.addr, align 8
  store i32 (i8*, i8*)* %equal, i32 (i8*, i8*)** %equal.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 24) #4
  %0 = bitcast i8* %call to %struct.Hashable*
  store %struct.Hashable* %0, %struct.Hashable** %hashable, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load %struct.Hashable*, %struct.Hashable** %hashable, align 8
  %key1 = getelementptr inbounds %struct.Hashable, %struct.Hashable* %2, i32 0, i32 0
  store i8* %1, i8** %key1, align 8
  %3 = load i32 (i8*)*, i32 (i8*)** %hash.addr, align 8
  %4 = load %struct.Hashable*, %struct.Hashable** %hashable, align 8
  %hash2 = getelementptr inbounds %struct.Hashable, %struct.Hashable* %4, i32 0, i32 1
  store i32 (i8*)* %3, i32 (i8*)** %hash2, align 8
  %5 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %equal.addr, align 8
  %6 = load %struct.Hashable*, %struct.Hashable** %hashable, align 8
  %equal3 = getelementptr inbounds %struct.Hashable, %struct.Hashable* %6, i32 0, i32 2
  store i32 (i8*, i8*)* %5, i32 (i8*, i8*)** %equal3, align 8
  %7 = load %struct.Hashable*, %struct.Hashable** %hashable, align 8
  ret %struct.Hashable* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_hashable(%struct.Hashable* %hashable) #0 {
entry:
  %hashable.addr = alloca %struct.Hashable*, align 8
  store %struct.Hashable* %hashable, %struct.Hashable** %hashable.addr, align 8
  %0 = load %struct.Hashable*, %struct.Hashable** %hashable.addr, align 8
  %key = getelementptr inbounds %struct.Hashable, %struct.Hashable* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %1)
  %2 = load %struct.Hashable*, %struct.Hashable** %hashable.addr, align 8
  %hash = getelementptr inbounds %struct.Hashable, %struct.Hashable* %2, i32 0, i32 1
  %3 = load i32 (i8*)*, i32 (i8*)** %hash, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 (i8*)* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_int(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_string(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %total = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  store i8* %0, i8** %s, align 8
  store i32 0, i32* %total, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %s, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %s, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 %idxprom2
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %6 to i32
  %7 = load i32, i32* %total, align 4
  %add = add nsw i32 %7, %conv4
  store i32 %add, i32* %total, align 4
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %total, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_hashable(%struct.Hashable* %hashable) #0 {
entry:
  %hashable.addr = alloca %struct.Hashable*, align 8
  store %struct.Hashable* %hashable, %struct.Hashable** %hashable.addr, align 8
  %0 = load %struct.Hashable*, %struct.Hashable** %hashable.addr, align 8
  %hash = getelementptr inbounds %struct.Hashable, %struct.Hashable* %0, i32 0, i32 1
  %1 = load i32 (i8*)*, i32 (i8*)** %hash, align 8
  %2 = load %struct.Hashable*, %struct.Hashable** %hashable.addr, align 8
  %key = getelementptr inbounds %struct.Hashable, %struct.Hashable* %2, i32 0, i32 0
  %3 = load i8*, i8** %key, align 8
  %call = call i32 %1(i8* %3)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @equal_int(i8* %ip, i8* %jp) #0 {
entry:
  %ip.addr = alloca i8*, align 8
  %jp.addr = alloca i8*, align 8
  store i8* %ip, i8** %ip.addr, align 8
  store i8* %jp, i8** %jp.addr, align 8
  %0 = load i8*, i8** %ip.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  %3 = load i8*, i8** %jp.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  %cmp = icmp eq i32 %2, %5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @equal_string(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #5
  store i32 %call, i32* %x, align 4
  %2 = load i32, i32* %x, align 4
  %cmp = icmp eq i32 %2, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @equal_hashable(%struct.Hashable* %h1, %struct.Hashable* %h2) #0 {
entry:
  %retval = alloca i32, align 4
  %h1.addr = alloca %struct.Hashable*, align 8
  %h2.addr = alloca %struct.Hashable*, align 8
  store %struct.Hashable* %h1, %struct.Hashable** %h1.addr, align 8
  store %struct.Hashable* %h2, %struct.Hashable** %h2.addr, align 8
  %0 = load %struct.Hashable*, %struct.Hashable** %h1.addr, align 8
  %equal = getelementptr inbounds %struct.Hashable, %struct.Hashable* %0, i32 0, i32 2
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %equal, align 8
  %2 = load %struct.Hashable*, %struct.Hashable** %h2.addr, align 8
  %equal1 = getelementptr inbounds %struct.Hashable, %struct.Hashable* %2, i32 0, i32 2
  %3 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %equal1, align 8
  %cmp = icmp ne i32 (i8*, i8*)* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.Hashable*, %struct.Hashable** %h1.addr, align 8
  %equal2 = getelementptr inbounds %struct.Hashable, %struct.Hashable* %4, i32 0, i32 2
  %5 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %equal2, align 8
  %6 = load %struct.Hashable*, %struct.Hashable** %h1.addr, align 8
  %key = getelementptr inbounds %struct.Hashable, %struct.Hashable* %6, i32 0, i32 0
  %7 = load i8*, i8** %key, align 8
  %8 = load %struct.Hashable*, %struct.Hashable** %h2.addr, align 8
  %key3 = getelementptr inbounds %struct.Hashable, %struct.Hashable* %8, i32 0, i32 0
  %9 = load i8*, i8** %key3, align 8
  %call = call i32 %5(i8* %7, i8* %9)
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Hashable* @make_hashable_int(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %p = alloca i32*, align 8
  store i32 %x, i32* %x.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 4) #4
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %p, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32*, i32** %p, align 8
  store i32 %1, i32* %2, align 4
  %3 = load i32*, i32** %p, align 8
  %4 = bitcast i32* %3 to i8*
  %call1 = call %struct.Hashable* @make_hashable(i8* %4, i32 (i8*)* @hash_int, i32 (i8*, i8*)* @equal_int)
  ret %struct.Hashable* %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Hashable* @make_hashable_string(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call %struct.Hashable* @make_hashable(i8* %0, i32 (i8*)* @hash_string, i32 (i8*, i8*)* @equal_string)
  ret %struct.Hashable* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @make_node(%struct.Hashable* %key, %struct.Value* %value, %struct.node* %next) #0 {
entry:
  %key.addr = alloca %struct.Hashable*, align 8
  %value.addr = alloca %struct.Value*, align 8
  %next.addr = alloca %struct.node*, align 8
  %node = alloca %struct.node*, align 8
  store %struct.Hashable* %key, %struct.Hashable** %key.addr, align 8
  store %struct.Value* %value, %struct.Value** %value.addr, align 8
  store %struct.node* %next, %struct.node** %next.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 24) #4
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %node, align 8
  %1 = load %struct.Hashable*, %struct.Hashable** %key.addr, align 8
  %2 = load %struct.node*, %struct.node** %node, align 8
  %key1 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  store %struct.Hashable* %1, %struct.Hashable** %key1, align 8
  %3 = load %struct.Value*, %struct.Value** %value.addr, align 8
  %4 = load %struct.node*, %struct.node** %node, align 8
  %value2 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  store %struct.Value* %3, %struct.Value** %value2, align 8
  %5 = load %struct.node*, %struct.node** %next.addr, align 8
  %6 = load %struct.node*, %struct.node** %node, align 8
  %next3 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 2
  store %struct.node* %5, %struct.node** %next3, align 8
  %7 = load %struct.node*, %struct.node** %node, align 8
  ret %struct.node* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_node(%struct.node* %node) #0 {
entry:
  %node.addr = alloca %struct.node*, align 8
  store %struct.node* %node, %struct.node** %node.addr, align 8
  %0 = load %struct.node*, %struct.node** %node.addr, align 8
  %key = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 0
  %1 = load %struct.Hashable*, %struct.Hashable** %key, align 8
  call void @print_hashable(%struct.Hashable* %1)
  %2 = load %struct.node*, %struct.node** %node.addr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  %3 = load %struct.Value*, %struct.Value** %value, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.Value* %3)
  %4 = load %struct.node*, %struct.node** %node.addr, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 2
  %5 = load %struct.node*, %struct.node** %next, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.node* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_list(%struct.node* %node) #0 {
entry:
  %node.addr = alloca %struct.node*, align 8
  store %struct.node* %node, %struct.node** %node.addr, align 8
  %0 = load %struct.node*, %struct.node** %node.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.node*, %struct.node** %node.addr, align 8
  %key = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  %2 = load %struct.Hashable*, %struct.Hashable** %key, align 8
  call void @print_hashable(%struct.Hashable* %2)
  %3 = load %struct.node*, %struct.node** %node.addr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load %struct.Value*, %struct.Value** %value, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.Value* %4)
  %5 = load %struct.node*, %struct.node** %node.addr, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 2
  %6 = load %struct.node*, %struct.node** %next, align 8
  call void @print_list(%struct.node* %6)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @prepend(%struct.Hashable* %key, %struct.Value* %value, %struct.node* %rest) #0 {
entry:
  %key.addr = alloca %struct.Hashable*, align 8
  %value.addr = alloca %struct.Value*, align 8
  %rest.addr = alloca %struct.node*, align 8
  store %struct.Hashable* %key, %struct.Hashable** %key.addr, align 8
  store %struct.Value* %value, %struct.Value** %value.addr, align 8
  store %struct.node* %rest, %struct.node** %rest.addr, align 8
  %0 = load %struct.Hashable*, %struct.Hashable** %key.addr, align 8
  %1 = load %struct.Value*, %struct.Value** %value.addr, align 8
  %2 = load %struct.node*, %struct.node** %rest.addr, align 8
  %call = call %struct.node* @make_node(%struct.Hashable* %0, %struct.Value* %1, %struct.node* %2)
  ret %struct.node* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Value* @list_lookup(%struct.node* %list, %struct.Hashable* %key) #0 {
entry:
  %retval = alloca %struct.Value*, align 8
  %list.addr = alloca %struct.node*, align 8
  %key.addr = alloca %struct.Hashable*, align 8
  %node = alloca %struct.node*, align 8
  store %struct.node* %list, %struct.node** %list.addr, align 8
  store %struct.Hashable* %key, %struct.Hashable** %key.addr, align 8
  %0 = load %struct.node*, %struct.node** %list.addr, align 8
  store %struct.node* %0, %struct.node** %node, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.node*, %struct.node** %node, align 8
  %cmp = icmp ne %struct.node* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Hashable*, %struct.Hashable** %key.addr, align 8
  %3 = load %struct.node*, %struct.node** %node, align 8
  %key1 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 0
  %4 = load %struct.Hashable*, %struct.Hashable** %key1, align 8
  %call = call i32 @equal_hashable(%struct.Hashable* %2, %struct.Hashable* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.node*, %struct.node** %node, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  %6 = load %struct.Value*, %struct.Value** %value, align 8
  store %struct.Value* %6, %struct.Value** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.node*, %struct.node** %node, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 2
  %8 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %8, %struct.node** %node, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store %struct.Value* null, %struct.Value** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load %struct.Value*, %struct.Value** %retval, align 8
  ret %struct.Value* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.map* @make_map(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %map = alloca %struct.map*, align 8
  store i32 %n, i32* %n.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #4
  %0 = bitcast i8* %call to %struct.map*
  store %struct.map* %0, %struct.map** %map, align 8
  %1 = load i32, i32* %n.addr, align 4
  %2 = load %struct.map*, %struct.map** %map, align 8
  %n1 = getelementptr inbounds %struct.map, %struct.map* %2, i32 0, i32 0
  store i32 %1, i32* %n1, align 8
  %3 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 8, %conv
  %call2 = call noalias align 16 i8* @malloc(i64 %mul) #4
  %4 = bitcast i8* %call2 to %struct.node**
  %5 = load %struct.map*, %struct.map** %map, align 8
  %lists = getelementptr inbounds %struct.map, %struct.map* %5, i32 0, i32 1
  store %struct.node** %4, %struct.node*** %lists, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.map*, %struct.map** %map, align 8
  %lists4 = getelementptr inbounds %struct.map, %struct.map* %8, i32 0, i32 1
  %9 = load %struct.node**, %struct.node*** %lists4, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.node*, %struct.node** %9, i64 %idxprom
  store %struct.node* null, %struct.node** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %12 = load %struct.map*, %struct.map** %map, align 8
  ret %struct.map* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_map(%struct.map* %map) #0 {
entry:
  %map.addr = alloca %struct.map*, align 8
  %i = alloca i32, align 4
  store %struct.map* %map, %struct.map** %map.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.map*, %struct.map** %map.addr, align 8
  %n = getelementptr inbounds %struct.map, %struct.map* %1, i32 0, i32 0
  %2 = load i32, i32* %n, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.map*, %struct.map** %map.addr, align 8
  %lists = getelementptr inbounds %struct.map, %struct.map* %3, i32 0, i32 1
  %4 = load %struct.node**, %struct.node*** %lists, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.node*, %struct.node** %4, i64 %idxprom
  %6 = load %struct.node*, %struct.node** %arrayidx, align 8
  %cmp1 = icmp ne %struct.node* %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %7)
  %8 = load %struct.map*, %struct.map** %map.addr, align 8
  %lists2 = getelementptr inbounds %struct.map, %struct.map* %8, i32 0, i32 1
  %9 = load %struct.node**, %struct.node*** %lists2, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds %struct.node*, %struct.node** %9, i64 %idxprom3
  %11 = load %struct.node*, %struct.node** %arrayidx4, align 8
  call void @print_list(%struct.node* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @map_add(%struct.map* %map, %struct.Hashable* %key, %struct.Value* %value) #0 {
entry:
  %map.addr = alloca %struct.map*, align 8
  %key.addr = alloca %struct.Hashable*, align 8
  %value.addr = alloca %struct.Value*, align 8
  %hashval = alloca i32, align 4
  %list = alloca %struct.node*, align 8
  store %struct.map* %map, %struct.map** %map.addr, align 8
  store %struct.Hashable* %key, %struct.Hashable** %key.addr, align 8
  store %struct.Value* %value, %struct.Value** %value.addr, align 8
  %0 = load %struct.Hashable*, %struct.Hashable** %key.addr, align 8
  %call = call i32 @hash_hashable(%struct.Hashable* %0)
  %1 = load %struct.map*, %struct.map** %map.addr, align 8
  %n = getelementptr inbounds %struct.map, %struct.map* %1, i32 0, i32 0
  %2 = load i32, i32* %n, align 8
  %rem = srem i32 %call, %2
  store i32 %rem, i32* %hashval, align 4
  %3 = load %struct.map*, %struct.map** %map.addr, align 8
  %lists = getelementptr inbounds %struct.map, %struct.map* %3, i32 0, i32 1
  %4 = load %struct.node**, %struct.node*** %lists, align 8
  %5 = load i32, i32* %hashval, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.node*, %struct.node** %4, i64 %idxprom
  %6 = load %struct.node*, %struct.node** %arrayidx, align 8
  store %struct.node* %6, %struct.node** %list, align 8
  %7 = load %struct.Hashable*, %struct.Hashable** %key.addr, align 8
  %8 = load %struct.Value*, %struct.Value** %value.addr, align 8
  %9 = load %struct.node*, %struct.node** %list, align 8
  %call1 = call %struct.node* @prepend(%struct.Hashable* %7, %struct.Value* %8, %struct.node* %9)
  %10 = load %struct.map*, %struct.map** %map.addr, align 8
  %lists2 = getelementptr inbounds %struct.map, %struct.map* %10, i32 0, i32 1
  %11 = load %struct.node**, %struct.node*** %lists2, align 8
  %12 = load i32, i32* %hashval, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds %struct.node*, %struct.node** %11, i64 %idxprom3
  store %struct.node* %call1, %struct.node** %arrayidx4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Value* @map_lookup(%struct.map* %map, %struct.Hashable* %key) #0 {
entry:
  %map.addr = alloca %struct.map*, align 8
  %key.addr = alloca %struct.Hashable*, align 8
  %hashval = alloca i32, align 4
  %list = alloca %struct.node*, align 8
  store %struct.map* %map, %struct.map** %map.addr, align 8
  store %struct.Hashable* %key, %struct.Hashable** %key.addr, align 8
  %0 = load %struct.Hashable*, %struct.Hashable** %key.addr, align 8
  %call = call i32 @hash_hashable(%struct.Hashable* %0)
  %1 = load %struct.map*, %struct.map** %map.addr, align 8
  %n = getelementptr inbounds %struct.map, %struct.map* %1, i32 0, i32 0
  %2 = load i32, i32* %n, align 8
  %rem = srem i32 %call, %2
  store i32 %rem, i32* %hashval, align 4
  %3 = load %struct.map*, %struct.map** %map.addr, align 8
  %lists = getelementptr inbounds %struct.map, %struct.map* %3, i32 0, i32 1
  %4 = load %struct.node**, %struct.node*** %lists, align 8
  %5 = load i32, i32* %hashval, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.node*, %struct.node** %4, i64 %idxprom
  %6 = load %struct.node*, %struct.node** %arrayidx, align 8
  store %struct.node* %6, %struct.node** %list, align 8
  %7 = load %struct.node*, %struct.node** %list, align 8
  %8 = load %struct.Hashable*, %struct.Hashable** %key.addr, align 8
  %call1 = call %struct.Value* @list_lookup(%struct.node* %7, %struct.Hashable* %8)
  ret %struct.Value* %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_lookup(%struct.Value* %value) #0 {
entry:
  %value.addr = alloca %struct.Value*, align 8
  store %struct.Value* %value, %struct.Value** %value.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %0 = load %struct.Value*, %struct.Value** %value.addr, align 8
  call void @print_value(%struct.Value* %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %hashable1 = alloca %struct.Hashable*, align 8
  %hashable2 = alloca %struct.Hashable*, align 8
  %hashable3 = alloca %struct.Hashable*, align 8
  %value1 = alloca %struct.Value*, align 8
  %node1 = alloca %struct.node*, align 8
  %value2 = alloca %struct.Value*, align 8
  %list = alloca %struct.node*, align 8
  %value = alloca %struct.Value*, align 8
  %map = alloca %struct.map*, align 8
  store i32 0, i32* %retval, align 4
  %call = call %struct.Hashable* @make_hashable_int(i32 1)
  store %struct.Hashable* %call, %struct.Hashable** %hashable1, align 8
  %call1 = call %struct.Hashable* @make_hashable_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  store %struct.Hashable* %call1, %struct.Hashable** %hashable2, align 8
  %call2 = call %struct.Hashable* @make_hashable_int(i32 2)
  store %struct.Hashable* %call2, %struct.Hashable** %hashable3, align 8
  %call3 = call %struct.Value* @make_int_value(i32 17)
  store %struct.Value* %call3, %struct.Value** %value1, align 8
  %0 = load %struct.Hashable*, %struct.Hashable** %hashable1, align 8
  %1 = load %struct.Value*, %struct.Value** %value1, align 8
  %call4 = call %struct.node* @make_node(%struct.Hashable* %0, %struct.Value* %1, %struct.node* null)
  store %struct.node* %call4, %struct.node** %node1, align 8
  %2 = load %struct.node*, %struct.node** %node1, align 8
  call void @print_node(%struct.node* %2)
  %call5 = call %struct.Value* @make_string_value(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  store %struct.Value* %call5, %struct.Value** %value2, align 8
  %3 = load %struct.Hashable*, %struct.Hashable** %hashable2, align 8
  %4 = load %struct.Value*, %struct.Value** %value2, align 8
  %5 = load %struct.node*, %struct.node** %node1, align 8
  %call6 = call %struct.node* @prepend(%struct.Hashable* %3, %struct.Value* %4, %struct.node* %5)
  store %struct.node* %call6, %struct.node** %list, align 8
  %6 = load %struct.node*, %struct.node** %list, align 8
  call void @print_list(%struct.node* %6)
  %7 = load %struct.node*, %struct.node** %list, align 8
  %8 = load %struct.Hashable*, %struct.Hashable** %hashable1, align 8
  %call7 = call %struct.Value* @list_lookup(%struct.node* %7, %struct.Hashable* %8)
  store %struct.Value* %call7, %struct.Value** %value, align 8
  %9 = load %struct.Value*, %struct.Value** %value, align 8
  call void @print_lookup(%struct.Value* %9)
  %10 = load %struct.node*, %struct.node** %list, align 8
  %11 = load %struct.Hashable*, %struct.Hashable** %hashable2, align 8
  %call8 = call %struct.Value* @list_lookup(%struct.node* %10, %struct.Hashable* %11)
  store %struct.Value* %call8, %struct.Value** %value, align 8
  %12 = load %struct.Value*, %struct.Value** %value, align 8
  call void @print_lookup(%struct.Value* %12)
  %13 = load %struct.node*, %struct.node** %list, align 8
  %14 = load %struct.Hashable*, %struct.Hashable** %hashable3, align 8
  %call9 = call %struct.Value* @list_lookup(%struct.node* %13, %struct.Hashable* %14)
  store %struct.Value* %call9, %struct.Value** %value, align 8
  %15 = load %struct.Value*, %struct.Value** %value, align 8
  call void @print_lookup(%struct.Value* %15)
  %call10 = call %struct.map* @make_map(i32 10)
  store %struct.map* %call10, %struct.map** %map, align 8
  %16 = load %struct.map*, %struct.map** %map, align 8
  %17 = load %struct.Hashable*, %struct.Hashable** %hashable1, align 8
  %18 = load %struct.Value*, %struct.Value** %value1, align 8
  call void @map_add(%struct.map* %16, %struct.Hashable* %17, %struct.Value* %18)
  %19 = load %struct.map*, %struct.map** %map, align 8
  %20 = load %struct.Hashable*, %struct.Hashable** %hashable2, align 8
  %21 = load %struct.Value*, %struct.Value** %value2, align 8
  call void @map_add(%struct.map* %19, %struct.Hashable* %20, %struct.Value* %21)
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %22 = load %struct.map*, %struct.map** %map, align 8
  call void @print_map(%struct.map* %22)
  %23 = load %struct.map*, %struct.map** %map, align 8
  %24 = load %struct.Hashable*, %struct.Hashable** %hashable1, align 8
  %call12 = call %struct.Value* @map_lookup(%struct.map* %23, %struct.Hashable* %24)
  store %struct.Value* %call12, %struct.Value** %value, align 8
  %25 = load %struct.Value*, %struct.Value** %value, align 8
  call void @print_lookup(%struct.Value* %25)
  %26 = load %struct.map*, %struct.map** %map, align 8
  %27 = load %struct.Hashable*, %struct.Hashable** %hashable2, align 8
  %call13 = call %struct.Value* @map_lookup(%struct.map* %26, %struct.Hashable* %27)
  store %struct.Value* %call13, %struct.Value** %value, align 8
  %28 = load %struct.Value*, %struct.Value** %value, align 8
  call void @print_lookup(%struct.Value* %28)
  %29 = load %struct.map*, %struct.map** %map, align 8
  %30 = load %struct.Hashable*, %struct.Hashable** %hashable3, align 8
  %call14 = call %struct.Value* @map_lookup(%struct.map* %29, %struct.Hashable* %30)
  store %struct.Value* %call14, %struct.Value** %value, align 8
  %31 = load %struct.Value*, %struct.Value** %value, align 8
  call void @print_lookup(%struct.Value* %31)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
