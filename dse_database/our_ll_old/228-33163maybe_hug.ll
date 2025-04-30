; ModuleID = './code/228-33163maybe_hug.c'
source_filename = "./code/228-33163maybe_hug.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.human = type { ptr, i16, i16 }

@.str = private unnamed_addr constant [25 x i8] c"%s accepted your offer!\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"*hugs*\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"You Hugged %s! :^)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"You asked for a hug.\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"They'd rather not, thanks for being considerate.\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Amber\00", align 1
@__const.main.person = private unnamed_addr constant %struct.human { ptr @.str.5, i16 1, i16 1 }, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"They're not as cute as you first thought...\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @executeHug([2 x i64] %person.coerce) #0 {
entry:
  %person = alloca %struct.human, align 8
  store [2 x i64] %person.coerce, ptr %person, align 8
  %name = getelementptr inbounds %struct.human, ptr %person, i32 0, i32 0
  %0 = load ptr, ptr %name, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  %call1 = call i32 @"\01_sleep"(i32 noundef 3)
  %call2 = call i32 @puts(ptr noundef @.str.1)
  %call3 = call i32 @"\01_sleep"(i32 noundef 3)
  %name4 = getelementptr inbounds %struct.human, ptr %person, i32 0, i32 0
  %1 = load ptr, ptr %name4, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @"\01_sleep"(i32 noundef) #1

declare i32 @puts(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @offerHug([2 x i64] %person.coerce) #0 {
entry:
  %person = alloca %struct.human, align 8
  store [2 x i64] %person.coerce, ptr %person, align 8
  %call = call i32 @puts(ptr noundef @.str.3)
  %call1 = call i32 @"\01_sleep"(i32 noundef 3)
  %likesPhysicalContact = getelementptr inbounds %struct.human, ptr %person, i32 0, i32 1
  %0 = load i16, ptr %likesPhysicalContact, align 8
  %tobool = icmp ne i16 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load [2 x i64], ptr %person, align 8
  call void @executeHug([2 x i64] %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i32 @puts(ptr noundef @.str.4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %person = alloca %struct.human, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %person, ptr align 8 @__const.main.person, i64 16, i1 false)
  %isCutie = getelementptr inbounds %struct.human, ptr %person, i32 0, i32 2
  %0 = load i16, ptr %isCutie, align 2
  %tobool = icmp ne i16 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load [2 x i64], ptr %person, align 8
  call void @offerHug([2 x i64] %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call i32 @puts(ptr noundef @.str.6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
