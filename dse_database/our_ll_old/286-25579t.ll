; ModuleID = './code/286-25579t.c'
source_filename = "./code/286-25579t.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [16 x i8] c"maior match:%s\0A\00", align 1
@__const.main.Texto = private unnamed_addr constant [744 x i8] c"12345678901065703304011031338370763392959061742177117741574752405286675751751314504012625336320365104661051291909178480948331328953939507131293079240283777803550434266953656933331862862836053872629918246535772390084354593076702934450791518879868380519997944757051401202663606740768021543612770901240982825779317596912107867285544985437368652710797055348487148149587590243274151793944598475566943017826205603956290299910129298589726700292721565513320871031576930809285943446191042007026945145706963385419521277601571208503379491200480304910489078359571596307622501134540377100878475810202910188059443398551447401411271192011985935673099472044705074971205559203895085818347347252899195454541511061949049056468259567711373961417054550528811252031\00", align 1
@__const.main.Padrao = private unnamed_addr constant [744 x i8] c"10657033040110313383707633929590617421771177415747524052866757517513145040126253363203651046610512919091784809483313289539395071312930792402837778035504342669536569333318628628360538726299182465357723900843545930767029344507915188798683805199979447570514012026636067407680215436127709012409828257793175969121078672855449854373686527107970553484871481495875902432741517939445984755669430178262056039562902999101292985897267002927215655133208710315769308092859434461910420070269451457069633854195212776015712085033794912004803049104890783595715963076225011345403771008784758102029101880594433985514474014112711920119859356730994720447050749712055592038950858183473472528991954545415110619490490564682595677113739614170545505288112520310000071232\00", align 1
@__const.main.m1 = private unnamed_addr constant [40 x i8] c"335328584367495293659342105680805357709\00", align 1
@__const.main.m2 = private unnamed_addr constant [40 x i8] c"339728353662883315388043909290053954799\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @Multiplica(ptr noundef %Multiplicando, ptr noundef %Multiplicador, ptr noundef %Produto) #0 {
entry:
  %Multiplicando.addr = alloca ptr, align 8
  %Multiplicador.addr = alloca ptr, align 8
  %Produto.addr = alloca ptr, align 8
  %Buffer = alloca [20001 x i8], align 1
  %digito = alloca i32, align 4
  %digito2 = alloca i32, align 4
  %j = alloca i32, align 4
  %resto = alloca i32, align 4
  %i = alloca i32, align 4
  %Parcial = alloca i64, align 8
  %Quociente = alloca i64, align 8
  %Auxiliar1 = alloca i64, align 8
  %Tamanho_string = alloca i32, align 4
  store ptr %Multiplicando, ptr %Multiplicando.addr, align 8
  store ptr %Multiplicador, ptr %Multiplicador.addr, align 8
  store ptr %Produto, ptr %Produto.addr, align 8
  store i32 0, ptr %resto, align 4
  store i32 0, ptr %i, align 4
  store i64 0, ptr %Quociente, align 8
  %0 = load ptr, ptr %Multiplicando.addr, align 8
  %call = call i64 @atol(ptr noundef %0)
  store i64 %call, ptr %Auxiliar1, align 8
  %1 = load ptr, ptr %Multiplicador.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %1) #5
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %Tamanho_string, align 4
  %2 = load i32, ptr %Tamanho_string, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %Tamanho_string, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %Tamanho_string, align 4
  %cmp = icmp ne i32 %3, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %Multiplicador.addr, align 8
  %5 = load i32, ptr %Tamanho_string, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv3 = sext i8 %6 to i32
  %sub = sub nsw i32 %conv3, 48
  store i32 %sub, ptr %digito, align 4
  %7 = load ptr, ptr %Multiplicando.addr, align 8
  %8 = load i32, ptr %Tamanho_string, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %7, i64 %idxprom4
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %9 to i32
  %sub7 = sub nsw i32 %conv6, 48
  store i32 %sub7, ptr %digito2, align 4
  %10 = load i32, ptr %digito2, align 4
  %11 = load i32, ptr %digito, align 4
  %mul = mul nsw i32 %10, %11
  %conv8 = sext i32 %mul to i64
  store i64 %conv8, ptr %Parcial, align 8
  %12 = load i64, ptr %Parcial, align 8
  %13 = load i64, ptr %Quociente, align 8
  %add = add nsw i64 %12, %13
  store i64 %add, ptr %Parcial, align 8
  %14 = load i64, ptr %Parcial, align 8
  %div = sdiv i64 %14, 10
  store i64 %div, ptr %Quociente, align 8
  %15 = load i64, ptr %Parcial, align 8
  %rem = srem i64 %15, 10
  %conv9 = trunc i64 %rem to i32
  store i32 %conv9, ptr %resto, align 4
  %16 = load i32, ptr %resto, align 4
  %add10 = add nsw i32 %16, 48
  %conv11 = trunc i32 %add10 to i8
  %17 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [20001 x i8], ptr %Buffer, i64 0, i64 %idxprom12
  store i8 %conv11, ptr %arrayidx13, align 1
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  %19 = load i32, ptr %Tamanho_string, align 4
  %dec14 = add nsw i32 %19, -1
  store i32 %dec14, ptr %Tamanho_string, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %while.cond15

while.cond15:                                     ; preds = %while.body18, %while.end
  %20 = load i64, ptr %Quociente, align 8
  %cmp16 = icmp sge i64 %20, 10
  br i1 %cmp16, label %while.body18, label %while.end27

while.body18:                                     ; preds = %while.cond15
  %21 = load i64, ptr %Quociente, align 8
  %rem19 = srem i64 %21, 10
  %conv20 = trunc i64 %rem19 to i32
  store i32 %conv20, ptr %resto, align 4
  %22 = load i64, ptr %Quociente, align 8
  %div21 = sdiv i64 %22, 10
  store i64 %div21, ptr %Quociente, align 8
  %23 = load i32, ptr %resto, align 4
  %add22 = add nsw i32 %23, 48
  %conv23 = trunc i32 %add22 to i8
  %24 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %24 to i64
  %arrayidx25 = getelementptr inbounds [20001 x i8], ptr %Buffer, i64 0, i64 %idxprom24
  store i8 %conv23, ptr %arrayidx25, align 1
  %25 = load i32, ptr %i, align 4
  %inc26 = add nsw i32 %25, 1
  store i32 %inc26, ptr %i, align 4
  br label %while.cond15, !llvm.loop !7

while.end27:                                      ; preds = %while.cond15
  %26 = load i64, ptr %Quociente, align 8
  %cmp28 = icmp sgt i64 %26, 0
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %while.end27
  %27 = load i64, ptr %Quociente, align 8
  %add30 = add nsw i64 %27, 48
  %conv31 = trunc i64 %add30 to i8
  %28 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [20001 x i8], ptr %Buffer, i64 0, i64 %idxprom32
  store i8 %conv31, ptr %arrayidx33, align 1
  %29 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %29, 1
  store i32 %inc34, ptr %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end27
  %30 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %30 to i64
  %arrayidx36 = getelementptr inbounds [20001 x i8], ptr %Buffer, i64 0, i64 %idxprom35
  store i8 0, ptr %arrayidx36, align 1
  %arraydecay = getelementptr inbounds [20001 x i8], ptr %Buffer, i64 0, i64 0
  %call37 = call i64 @strlen(ptr noundef %arraydecay) #5
  %conv38 = trunc i64 %call37 to i32
  store i32 %conv38, ptr %Tamanho_string, align 4
  store i32 0, ptr %i, align 4
  %31 = load i32, ptr %Tamanho_string, align 4
  %sub39 = sub nsw i32 %31, 1
  store i32 %sub39, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %32 = load i32, ptr %i, align 4
  %33 = load i32, ptr %Tamanho_string, align 4
  %cmp40 = icmp slt i32 %32, %33
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, ptr %j, align 4
  %idxprom42 = sext i32 %34 to i64
  %arrayidx43 = getelementptr inbounds [20001 x i8], ptr %Buffer, i64 0, i64 %idxprom42
  %35 = load i8, ptr %arrayidx43, align 1
  %36 = load ptr, ptr %Produto.addr, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %37 to i64
  %arrayidx45 = getelementptr inbounds i8, ptr %36, i64 %idxprom44
  store i8 %35, ptr %arrayidx45, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, ptr %i, align 4
  %inc46 = add nsw i32 %38, 1
  store i32 %inc46, ptr %i, align 4
  %39 = load i32, ptr %j, align 4
  %dec47 = add nsw i32 %39, -1
  store i32 %dec47, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %40 = load ptr, ptr %Produto.addr, align 8
  %41 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %41 to i64
  %arrayidx49 = getelementptr inbounds i8, ptr %40, i64 %idxprom48
  store i8 0, ptr %arrayidx49, align 1
  ret void
}

declare i64 @atol(ptr noundef) #1

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @matcher(ptr noundef %s1, ptr noundef %s2, ptr noundef %Chave, i32 noundef %size) #0 {
entry:
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %Chave.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %subs = alloca [2000 x i8], align 1
  %subs2 = alloca [2000 x i8], align 1
  %subssize = alloca i32, align 4
  %biggestMatch = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store ptr %s1, ptr %s1.addr, align 8
  store ptr %s2, ptr %s2.addr, align 8
  store ptr %Chave, ptr %Chave.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store i32 2, ptr %subssize, align 4
  store i32 0, ptr %biggestMatch, align 4
  store i32 0, ptr %j, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %0 = load i32, ptr %j, align 4
  %1 = load i32, ptr %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %k, align 4
  %3 = load i32, ptr %size.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %s1.addr, align 8
  %5 = load i32, ptr %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %7 = load ptr, ptr %s2.addr, align 8
  %8 = load i32, ptr %k, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %7, i64 %idxprom4
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv, %conv6
  br i1 %cmp7, label %if.then, label %if.end35

if.then:                                          ; preds = %for.body3
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %10 = load ptr, ptr %s1.addr, align 8
  %11 = load i32, ptr %j, align 4
  %12 = load i32, ptr %i, align 4
  %add = add nsw i32 %11, %12
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %10, i64 %idxprom9
  %13 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %13 to i32
  %14 = load ptr, ptr %s2.addr, align 8
  %15 = load i32, ptr %k, align 4
  %16 = load i32, ptr %i, align 4
  %add12 = add nsw i32 %15, %16
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %14, i64 %idxprom13
  %17 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %17 to i32
  %cmp16 = icmp eq i32 %conv11, %conv15
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load ptr, ptr %s1.addr, align 8
  %19 = load i32, ptr %j, align 4
  %20 = load i32, ptr %i, align 4
  %add18 = add nsw i32 %19, %20
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %18, i64 %idxprom19
  %21 = load i8, ptr %arrayidx20, align 1
  %22 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds [2000 x i8], ptr %subs, i64 0, i64 %idxprom21
  store i8 %21, ptr %arrayidx22, align 1
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %24 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds [2000 x i8], ptr %subs, i64 0, i64 %idxprom23
  store i8 0, ptr %arrayidx24, align 1
  %arraydecay = getelementptr inbounds [2000 x i8], ptr %subs, i64 0, i64 0
  %call = call i64 @strlen(ptr noundef %arraydecay) #5
  %25 = load i32, ptr %biggestMatch, align 4
  %conv25 = sext i32 %25 to i64
  %cmp26 = icmp ugt i64 %call, %conv25
  br i1 %cmp26, label %if.then28, label %if.end

if.then28:                                        ; preds = %while.end
  %arraydecay29 = getelementptr inbounds [2000 x i8], ptr %subs, i64 0, i64 0
  %call30 = call i64 @strlen(ptr noundef %arraydecay29) #5
  %conv31 = trunc i64 %call30 to i32
  store i32 %conv31, ptr %biggestMatch, align 4
  %arraydecay32 = getelementptr inbounds [2000 x i8], ptr %subs2, i64 0, i64 0
  %arraydecay33 = getelementptr inbounds [2000 x i8], ptr %subs, i64 0, i64 0
  %call34 = call ptr @__strcpy_chk(ptr noundef %arraydecay32, ptr noundef %arraydecay33, i64 noundef 2000) #5
  br label %if.end

if.end:                                           ; preds = %if.then28, %while.end
  br label %if.end35

if.end35:                                         ; preds = %if.end, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %26 = load i32, ptr %k, align 4
  %inc36 = add nsw i32 %26, 1
  store i32 %inc36, ptr %k, align 4
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  br label %for.inc37

for.inc37:                                        ; preds = %for.end
  %27 = load i32, ptr %j, align 4
  %inc38 = add nsw i32 %27, 1
  store i32 %inc38, ptr %j, align 4
  br label %for.cond, !llvm.loop !11

for.end39:                                        ; preds = %for.cond
  %arraydecay40 = getelementptr inbounds [2000 x i8], ptr %subs2, i64 0, i64 0
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay40)
  ret void
}

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @MultiplicaEZ(ptr noundef %m1, ptr noundef %m2) #0 {
entry:
  %m1.addr = alloca ptr, align 8
  %m2.addr = alloca ptr, align 8
  %subm1 = alloca [6 x i8], align 1
  %subm2 = alloca [6 x i8], align 1
  %im1 = alloca i32, align 4
  %im2 = alloca i32, align 4
  store ptr %m1, ptr %m1.addr, align 8
  store ptr %m2, ptr %m2.addr, align 8
  %arraydecay = getelementptr inbounds [6 x i8], ptr %subm1, i64 0, i64 0
  %0 = load ptr, ptr %m1.addr, align 8
  %call = call ptr @__strncpy_chk(ptr noundef %arraydecay, ptr noundef %0, i64 noundef 6, i64 noundef 6) #5
  %arrayidx = getelementptr inbounds [6 x i8], ptr %subm1, i64 0, i64 5
  store i8 0, ptr %arrayidx, align 1
  %arraydecay1 = getelementptr inbounds [6 x i8], ptr %subm2, i64 0, i64 0
  %1 = load ptr, ptr %m2.addr, align 8
  %call2 = call ptr @__strncpy_chk(ptr noundef %arraydecay1, ptr noundef %1, i64 noundef 6, i64 noundef 6) #5
  %arrayidx3 = getelementptr inbounds [6 x i8], ptr %subm2, i64 0, i64 5
  store i8 0, ptr %arrayidx3, align 1
  %arraydecay4 = getelementptr inbounds [6 x i8], ptr %subm1, i64 0, i64 0
  %call5 = call i32 @atoi(ptr noundef %arraydecay4)
  store i32 %call5, ptr %im1, align 4
  %arraydecay6 = getelementptr inbounds [6 x i8], ptr %subm2, i64 0, i64 0
  %call7 = call i32 @atoi(ptr noundef %arraydecay6)
  store i32 %call7, ptr %im2, align 4
  %2 = load i32, ptr %im1, align 4
  %3 = load i32, ptr %im2, align 4
  %mul = mul nsw i32 %2, %3
  ret i32 %mul
}

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

declare i32 @atoi(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %Tamanho = alloca i32, align 4
  %Texto = alloca [744 x i8], align 1
  %Padrao = alloca [744 x i8], align 1
  %Chave = alloca ptr, align 8
  %m1 = alloca [40 x i8], align 1
  %m2 = alloca [40 x i8], align 1
  %prod = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 743, ptr %Tamanho, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Texto, ptr align 1 @__const.main.Texto, i64 744, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Padrao, ptr align 1 @__const.main.Padrao, i64 744, i1 false)
  %call = call ptr @calloc(i64 noundef 2000, i64 noundef 1) #6
  store ptr %call, ptr %Chave, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %m1, ptr align 1 @__const.main.m1, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %m2, ptr align 1 @__const.main.m2, i64 40, i1 false)
  %arraydecay = getelementptr inbounds [40 x i8], ptr %m1, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [40 x i8], ptr %m2, i64 0, i64 0
  %call2 = call i32 @MultiplicaEZ(ptr noundef %arraydecay, ptr noundef %arraydecay1)
  store i32 %call2, ptr %prod, align 4
  %0 = load i32, ptr %prod, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %0)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind }
attributes #6 = { allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
