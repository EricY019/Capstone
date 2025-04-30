; ModuleID = 'code/218-14785bug-regex23.c'
source_filename = "code/218-14785bug-regex23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.regmatch_t = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"de_DE.UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"[-a-z_0-9.]+@[-a-z_0-9.]+\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\E7\B7\95\E7\97\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r = alloca %struct.re_pattern_buffer, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.re_pattern_buffer* %r to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 64, i1 false)
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #4
  %call1 = call i32 @regcomp(%struct.re_pattern_buffer* %r, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %call2 = call i32 @regexec(%struct.re_pattern_buffer* %r, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 0, %struct.regmatch_t* null, i32 0)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @setlocale(i32, i8*) #2

declare dso_local i32 @regcomp(%struct.re_pattern_buffer*, i8*, i32) #3

declare dso_local i32 @regexec(%struct.re_pattern_buffer*, i8*, i64, %struct.regmatch_t*, i32) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
