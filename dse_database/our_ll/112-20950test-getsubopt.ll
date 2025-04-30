; ModuleID = 'code/112-20950test-getsubopt.c'
source_filename = "code/112-20950test-getsubopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.buf = private unnamed_addr constant [4 x i8] c"k=v\00", align 1
@__const.main.token0 = private unnamed_addr constant [2 x i8] c"k\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca [4 x i8], align 1
  %options = alloca i8*, align 8
  %token0 = alloca [2 x i8], align 1
  %tokens = alloca [2 x i8*], align 16
  %value = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.main.buf, i32 0, i32 0), i64 4, i1 false)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0
  store i8* %arraydecay, i8** %options, align 8
  %1 = bitcast [2 x i8]* %token0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.main.token0, i32 0, i32 0), i64 2, i1 false)
  %arrayinit.begin = getelementptr inbounds [2 x i8*], [2 x i8*]* %tokens, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [2 x i8], [2 x i8]* %token0, i64 0, i64 0
  store i8* %arraydecay1, i8** %arrayinit.begin, align 8
  %arrayinit.element = getelementptr inbounds i8*, i8** %arrayinit.begin, i64 1
  store i8* null, i8** %arrayinit.element, align 8
  store i8* null, i8** %value, align 8
  %arraydecay2 = getelementptr inbounds [2 x i8*], [2 x i8*]* %tokens, i64 0, i64 0
  %call = call i32 @getsubopt(i8** %options, i8** %arraydecay2, i8** %value) #3
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %value, align 8
  %arraydecay3 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay3, i64 2
  %cmp4 = icmp eq i8* %2, %add.ptr
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i8*, i8** %options, align 8
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0
  %add.ptr6 = getelementptr inbounds i8, i8* %arraydecay5, i64 3
  %cmp7 = icmp eq i8* %3, %add.ptr6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %4 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp7, %land.rhs ]
  %lnot = xor i1 %4, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i32 @getsubopt(i8**, i8**, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
