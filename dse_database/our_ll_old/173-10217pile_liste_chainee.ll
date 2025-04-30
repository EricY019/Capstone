; ModuleID = './code/173-10217pile_liste_chainee.c'
source_filename = "./code/173-10217pile_liste_chainee.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.Noeud = type { ptr, i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @creerPile(ptr noundef %pile) #0 {
entry:
  %pile.addr = alloca ptr, align 8
  store ptr %pile, ptr %pile.addr, align 8
  %0 = load ptr, ptr %pile.addr, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @supprimerPile(ptr noundef %pile) #0 {
entry:
  %pile.addr = alloca ptr, align 8
  %iPile = alloca ptr, align 8
  %temp = alloca ptr, align 8
  store ptr %pile, ptr %pile.addr, align 8
  %0 = load ptr, ptr %pile.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %iPile, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %2 = load ptr, ptr %iPile, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %iPile, align 8
  %suivant = getelementptr inbounds %struct.Noeud, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %suivant, align 8
  store ptr %4, ptr %temp, align 8
  %5 = load ptr, ptr %iPile, align 8
  call void @free(ptr noundef %5)
  %6 = load ptr, ptr %temp, align 8
  store ptr %6, ptr %iPile, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @empiler(ptr noundef %pile, i32 noundef %donnee) #0 {
entry:
  %pile.addr = alloca ptr, align 8
  %donnee.addr = alloca i32, align 4
  %nouveau = alloca ptr, align 8
  store ptr %pile, ptr %pile.addr, align 8
  store i32 %donnee, ptr %donnee.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %nouveau, align 8
  %0 = load ptr, ptr %pile.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load ptr, ptr %nouveau, align 8
  %suivant = getelementptr inbounds %struct.Noeud, ptr %2, i32 0, i32 0
  store ptr %1, ptr %suivant, align 8
  %3 = load i32, ptr %donnee.addr, align 4
  %4 = load ptr, ptr %nouveau, align 8
  %donnee1 = getelementptr inbounds %struct.Noeud, ptr %4, i32 0, i32 1
  store i32 %3, ptr %donnee1, align 8
  %5 = load ptr, ptr %nouveau, align 8
  %6 = load ptr, ptr %pile.addr, align 8
  store ptr %5, ptr %6, align 8
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @depiler(ptr noundef %pile) #0 {
entry:
  %pile.addr = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %donnee = alloca i32, align 4
  store ptr %pile, ptr %pile.addr, align 8
  %0 = load ptr, ptr %pile.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %suivant = getelementptr inbounds %struct.Noeud, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %suivant, align 8
  store ptr %2, ptr %temp, align 8
  %3 = load ptr, ptr %pile.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %donnee1 = getelementptr inbounds %struct.Noeud, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %donnee1, align 8
  store i32 %5, ptr %donnee, align 4
  %6 = load ptr, ptr %pile.addr, align 8
  %7 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %7)
  %8 = load ptr, ptr %temp, align 8
  %9 = load ptr, ptr %pile.addr, align 8
  store ptr %8, ptr %9, align 8
  %10 = load i32, ptr %donnee, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @estVide(ptr noundef %pile) #0 {
entry:
  %retval = alloca i32, align 4
  %pile.addr = alloca ptr, align 8
  store ptr %pile, ptr %pile.addr, align 8
  %0 = load ptr, ptr %pile.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pile = alloca ptr, align 8
  %retour = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @creerPile(ptr noundef %pile)
  call void @empiler(ptr noundef %pile, i32 noundef 42)
  call void @empiler(ptr noundef %pile, i32 noundef 9)
  %call = call i32 @depiler(ptr noundef %pile)
  store i32 %call, ptr %retour, align 4
  call void @supprimerPile(ptr noundef %pile)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
