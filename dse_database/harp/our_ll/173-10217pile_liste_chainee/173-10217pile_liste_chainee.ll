; ModuleID = 'code/173-10217pile_liste_chainee.c'
source_filename = "code/173-10217pile_liste_chainee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Noeud = type { %struct.Noeud*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @creerPile(%struct.Noeud** %pile) #0 {
entry:
  %pile.addr = alloca %struct.Noeud**, align 8
  store %struct.Noeud** %pile, %struct.Noeud*** %pile.addr, align 8
  %0 = load %struct.Noeud**, %struct.Noeud*** %pile.addr, align 8
  store %struct.Noeud* null, %struct.Noeud** %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @supprimerPile(%struct.Noeud** %pile) #0 {
entry:
  %pile.addr = alloca %struct.Noeud**, align 8
  %iPile = alloca %struct.Noeud*, align 8
  %temp = alloca %struct.Noeud*, align 8
  store %struct.Noeud** %pile, %struct.Noeud*** %pile.addr, align 8
  %0 = load %struct.Noeud**, %struct.Noeud*** %pile.addr, align 8
  %1 = load %struct.Noeud*, %struct.Noeud** %0, align 8
  store %struct.Noeud* %1, %struct.Noeud** %iPile, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %2 = load %struct.Noeud*, %struct.Noeud** %iPile, align 8
  %cmp = icmp ne %struct.Noeud* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.Noeud*, %struct.Noeud** %iPile, align 8
  %suivant = getelementptr inbounds %struct.Noeud, %struct.Noeud* %3, i32 0, i32 0
  %4 = load %struct.Noeud*, %struct.Noeud** %suivant, align 8
  store %struct.Noeud* %4, %struct.Noeud** %temp, align 8
  %5 = load %struct.Noeud*, %struct.Noeud** %iPile, align 8
  %6 = bitcast %struct.Noeud* %5 to i8*
  call void @free(i8* %6) #2
  %7 = load %struct.Noeud*, %struct.Noeud** %temp, align 8
  store %struct.Noeud* %7, %struct.Noeud** %iPile, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @empiler(%struct.Noeud** %pile, i32 %donnee) #0 {
entry:
  %pile.addr = alloca %struct.Noeud**, align 8
  %donnee.addr = alloca i32, align 4
  %nouveau = alloca %struct.Noeud*, align 8
  store %struct.Noeud** %pile, %struct.Noeud*** %pile.addr, align 8
  store i32 %donnee, i32* %donnee.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #2
  %0 = bitcast i8* %call to %struct.Noeud*
  store %struct.Noeud* %0, %struct.Noeud** %nouveau, align 8
  %1 = load %struct.Noeud**, %struct.Noeud*** %pile.addr, align 8
  %2 = load %struct.Noeud*, %struct.Noeud** %1, align 8
  %3 = load %struct.Noeud*, %struct.Noeud** %nouveau, align 8
  %suivant = getelementptr inbounds %struct.Noeud, %struct.Noeud* %3, i32 0, i32 0
  store %struct.Noeud* %2, %struct.Noeud** %suivant, align 8
  %4 = load i32, i32* %donnee.addr, align 4
  %5 = load %struct.Noeud*, %struct.Noeud** %nouveau, align 8
  %donnee1 = getelementptr inbounds %struct.Noeud, %struct.Noeud* %5, i32 0, i32 1
  store i32 %4, i32* %donnee1, align 8
  %6 = load %struct.Noeud*, %struct.Noeud** %nouveau, align 8
  %7 = load %struct.Noeud**, %struct.Noeud*** %pile.addr, align 8
  store %struct.Noeud* %6, %struct.Noeud** %7, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @depiler(%struct.Noeud** %pile) #0 {
entry:
  %pile.addr = alloca %struct.Noeud**, align 8
  %temp = alloca %struct.Noeud*, align 8
  %donnee = alloca i32, align 4
  store %struct.Noeud** %pile, %struct.Noeud*** %pile.addr, align 8
  %0 = load %struct.Noeud**, %struct.Noeud*** %pile.addr, align 8
  %1 = load %struct.Noeud*, %struct.Noeud** %0, align 8
  %suivant = getelementptr inbounds %struct.Noeud, %struct.Noeud* %1, i32 0, i32 0
  %2 = load %struct.Noeud*, %struct.Noeud** %suivant, align 8
  store %struct.Noeud* %2, %struct.Noeud** %temp, align 8
  %3 = load %struct.Noeud**, %struct.Noeud*** %pile.addr, align 8
  %4 = load %struct.Noeud*, %struct.Noeud** %3, align 8
  %donnee1 = getelementptr inbounds %struct.Noeud, %struct.Noeud* %4, i32 0, i32 1
  %5 = load i32, i32* %donnee1, align 8
  store i32 %5, i32* %donnee, align 4
  %6 = load %struct.Noeud**, %struct.Noeud*** %pile.addr, align 8
  %7 = load %struct.Noeud*, %struct.Noeud** %6, align 8
  %8 = bitcast %struct.Noeud* %7 to i8*
  call void @free(i8* %8) #2
  %9 = load %struct.Noeud*, %struct.Noeud** %temp, align 8
  %10 = load %struct.Noeud**, %struct.Noeud*** %pile.addr, align 8
  store %struct.Noeud* %9, %struct.Noeud** %10, align 8
  %11 = load i32, i32* %donnee, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @estVide(%struct.Noeud** %pile) #0 {
entry:
  %retval = alloca i32, align 4
  %pile.addr = alloca %struct.Noeud**, align 8
  store %struct.Noeud** %pile, %struct.Noeud*** %pile.addr, align 8
  %0 = load %struct.Noeud**, %struct.Noeud*** %pile.addr, align 8
  %1 = load %struct.Noeud*, %struct.Noeud** %0, align 8
  %cmp = icmp eq %struct.Noeud* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pile = alloca %struct.Noeud*, align 8
  %retour = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @creerPile(%struct.Noeud** %pile)
  call void @empiler(%struct.Noeud** %pile, i32 42)
  call void @empiler(%struct.Noeud** %pile, i32 9)
  %call = call i32 @depiler(%struct.Noeud** %pile)
  store i32 %call, i32* %retour, align 4
  call void @supprimerPile(%struct.Noeud** %pile)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
