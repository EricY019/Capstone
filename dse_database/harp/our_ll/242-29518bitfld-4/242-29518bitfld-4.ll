; ModuleID = 'code/242-29518bitfld-4.c'
source_filename = "code/242-29518bitfld-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fail = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body1

do.body1:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.body1
  br label %do.body2

do.body2:                                         ; preds = %do.end
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.end5

do.end5:                                          ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.end5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.body8

do.body8:                                         ; preds = %do.body7
  br label %do.end9

do.end9:                                          ; preds = %do.body8
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  br label %do.end11

do.end11:                                         ; preds = %do.body10
  br label %do.body12

do.body12:                                        ; preds = %do.end11
  br label %do.end13

do.end13:                                         ; preds = %do.body12
  br label %do.end14

do.end14:                                         ; preds = %do.end13
  br label %do.body15

do.body15:                                        ; preds = %do.end14
  br label %do.body16

do.body16:                                        ; preds = %do.body15
  br label %do.end17

do.end17:                                         ; preds = %do.body16
  br label %do.body18

do.body18:                                        ; preds = %do.end17
  br label %do.end19

do.end19:                                         ; preds = %do.body18
  br label %do.body20

do.body20:                                        ; preds = %do.end19
  br label %do.end21

do.end21:                                         ; preds = %do.body20
  br label %do.end22

do.end22:                                         ; preds = %do.end21
  br label %do.body23

do.body23:                                        ; preds = %do.end22
  br label %do.body24

do.body24:                                        ; preds = %do.body23
  br label %do.end25

do.end25:                                         ; preds = %do.body24
  br label %do.body26

do.body26:                                        ; preds = %do.end25
  br label %do.end27

do.end27:                                         ; preds = %do.body26
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  br label %do.end29

do.end29:                                         ; preds = %do.body28
  br label %do.end30

do.end30:                                         ; preds = %do.end29
  br label %do.body31

do.body31:                                        ; preds = %do.end30
  br label %do.body32

do.body32:                                        ; preds = %do.body31
  br label %do.end33

do.end33:                                         ; preds = %do.body32
  br label %do.body34

do.body34:                                        ; preds = %do.end33
  br label %do.end35

do.end35:                                         ; preds = %do.body34
  br label %do.body36

do.body36:                                        ; preds = %do.end35
  br label %do.end37

do.end37:                                         ; preds = %do.body36
  br label %do.end38

do.end38:                                         ; preds = %do.end37
  %0 = load i32, i32* @fail, align 4
  ret i32 %0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
