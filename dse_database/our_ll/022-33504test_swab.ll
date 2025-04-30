; ModuleID = 'code/022-33504test_swab.c'
source_filename = "code/022-33504test_swab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.buf = private unnamed_addr constant [9 x i8] c"01234567\00", align 1
@__const.main.buf2 = private unnamed_addr constant [8 x i8] c"0123456\00", align 1
@.str = private unnamed_addr constant [35 x i8] c"test_swab: After swapping, buf=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"10325476\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"strcmp(buf, \2210325476\22) == 0\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"code/022-33504test_swab.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"test_swab: After swapping, buf2=%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"1032546\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"strcmp(buf2, \221032546\22) == 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca [9 x i8], align 1
  %buf2 = alloca [8 x i8], align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast [9 x i8]* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.main.buf, i32 0, i32 0), i64 9, i1 false)
  %1 = bitcast [8 x i8]* %buf2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.main.buf2, i32 0, i32 0), i64 8, i1 false)
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %call = call i64 @strlen(i8* %arraydecay2) #6
  call void @swab(i8* %arraydecay, i8* %arraydecay1, i64 %call) #7
  %arraydecay3 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %arraydecay3)
  %arraydecay5 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %call6 = call i32 @strcmp(i8* %arraydecay5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #6
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %arraydecay7 = getelementptr inbounds [8 x i8], [8 x i8]* %buf2, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [8 x i8], [8 x i8]* %buf2, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [8 x i8], [8 x i8]* %buf2, i64 0, i64 0
  %call10 = call i64 @strlen(i8* %arraydecay9) #6
  call void @swab(i8* %arraydecay7, i8* %arraydecay8, i64 %call10) #7
  %arraydecay11 = getelementptr inbounds [8 x i8], [8 x i8]* %buf2, i64 0, i64 0
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %arraydecay11)
  %arraydecay13 = getelementptr inbounds [8 x i8], [8 x i8]* %buf2, i64 0, i64 0
  %call14 = call i32 @strcmp(i8* %arraydecay13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #6
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %cond.end
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

3:                                                ; No predecessors!
  br label %cond.end18

cond.end18:                                       ; preds = %3, %cond.true16
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local void @swab(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
