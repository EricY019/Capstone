; ModuleID = 'code/326-32941magic_puzzle.c'
source_filename = "code/326-32941magic_puzzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Action = type { i32, void (i32)*, [4 x i32] }

@actions = dso_local global [19 x %struct.Action] zeroinitializer, align 16
@picked = internal global [16 x i32] zeroinitializer, align 16
@choices = internal constant [16 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], align 16
@a = internal global [16 x i32] zeroinitializer, align 16
@solution.count = internal global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"--- Solution %d ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%2d%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 -1, i32* %i, align 4
  %0 = load i32, i32* %i, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx, i32 0, i32 0
  store i32 0, i32* %pos, align 16
  %1 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom1
  %action = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx2, i32 0, i32 1
  store void (i32)* @choose, void (i32)** %action, align 8
  %2 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %2, 1
  store i32 %inc3, i32* %i, align 4
  %idxprom4 = sext i32 %inc3 to i64
  %arrayidx5 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom4
  %pos6 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx5, i32 0, i32 0
  store i32 1, i32* %pos6, align 16
  %3 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %3 to i64
  %arrayidx8 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom7
  %action9 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx8, i32 0, i32 1
  store void (i32)* @choose, void (i32)** %action9, align 8
  %4 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %4, 1
  store i32 %inc10, i32* %i, align 4
  %idxprom11 = sext i32 %inc10 to i64
  %arrayidx12 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom11
  %pos13 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx12, i32 0, i32 0
  store i32 2, i32* %pos13, align 16
  %5 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %5 to i64
  %arrayidx15 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom14
  %action16 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx15, i32 0, i32 1
  store void (i32)* @choose, void (i32)** %action16, align 8
  %6 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %6, 1
  store i32 %inc17, i32* %i, align 4
  %idxprom18 = sext i32 %inc17 to i64
  %arrayidx19 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom18
  %pos20 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx19, i32 0, i32 0
  store i32 3, i32* %pos20, align 16
  %7 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %7 to i64
  %arrayidx22 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom21
  %action23 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx22, i32 0, i32 1
  store void (i32)* @decide, void (i32)** %action23, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %8 to i64
  %arrayidx25 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom24
  %indexes = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx25, i32 0, i32 2
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes, i64 0, i64 0
  store i32 0, i32* %arrayidx26, align 16
  %9 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %9 to i64
  %arrayidx28 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom27
  %indexes29 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx28, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes29, i64 0, i64 1
  store i32 1, i32* %arrayidx30, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %10 to i64
  %arrayidx32 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom31
  %indexes33 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx32, i32 0, i32 2
  %arrayidx34 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes33, i64 0, i64 2
  store i32 2, i32* %arrayidx34, align 8
  %11 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %11, 1
  store i32 %inc35, i32* %i, align 4
  %idxprom36 = sext i32 %inc35 to i64
  %arrayidx37 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom36
  %pos38 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx37, i32 0, i32 0
  store i32 5, i32* %pos38, align 16
  %12 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %12 to i64
  %arrayidx40 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom39
  %action41 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx40, i32 0, i32 1
  store void (i32)* @choose, void (i32)** %action41, align 8
  %13 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %13, 1
  store i32 %inc42, i32* %i, align 4
  %idxprom43 = sext i32 %inc42 to i64
  %arrayidx44 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom43
  %pos45 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx44, i32 0, i32 0
  store i32 9, i32* %pos45, align 16
  %14 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %14 to i64
  %arrayidx47 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom46
  %action48 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx47, i32 0, i32 1
  store void (i32)* @choose, void (i32)** %action48, align 8
  %15 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %15, 1
  store i32 %inc49, i32* %i, align 4
  %idxprom50 = sext i32 %inc49 to i64
  %arrayidx51 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom50
  %pos52 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx51, i32 0, i32 0
  store i32 13, i32* %pos52, align 16
  %16 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %16 to i64
  %arrayidx54 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom53
  %action55 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx54, i32 0, i32 1
  store void (i32)* @decide, void (i32)** %action55, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %17 to i64
  %arrayidx57 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom56
  %indexes58 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx57, i32 0, i32 2
  %arrayidx59 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes58, i64 0, i64 0
  store i32 1, i32* %arrayidx59, align 16
  %18 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %18 to i64
  %arrayidx61 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom60
  %indexes62 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx61, i32 0, i32 2
  %arrayidx63 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes62, i64 0, i64 1
  store i32 5, i32* %arrayidx63, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %19 to i64
  %arrayidx65 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom64
  %indexes66 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx65, i32 0, i32 2
  %arrayidx67 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes66, i64 0, i64 2
  store i32 9, i32* %arrayidx67, align 8
  %20 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %20, 1
  store i32 %inc68, i32* %i, align 4
  %idxprom69 = sext i32 %inc68 to i64
  %arrayidx70 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom69
  %pos71 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx70, i32 0, i32 0
  store i32 10, i32* %pos71, align 16
  %21 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %21 to i64
  %arrayidx73 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom72
  %action74 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx73, i32 0, i32 1
  store void (i32)* @choose, void (i32)** %action74, align 8
  %22 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %22, 1
  store i32 %inc75, i32* %i, align 4
  %idxprom76 = sext i32 %inc75 to i64
  %arrayidx77 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom76
  %pos78 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx77, i32 0, i32 0
  store i32 15, i32* %pos78, align 16
  %23 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %23 to i64
  %arrayidx80 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom79
  %action81 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx80, i32 0, i32 1
  store void (i32)* @decide, void (i32)** %action81, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %24 to i64
  %arrayidx83 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom82
  %indexes84 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx83, i32 0, i32 2
  %arrayidx85 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes84, i64 0, i64 0
  store i32 0, i32* %arrayidx85, align 16
  %25 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %25 to i64
  %arrayidx87 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom86
  %indexes88 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx87, i32 0, i32 2
  %arrayidx89 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes88, i64 0, i64 1
  store i32 5, i32* %arrayidx89, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %26 to i64
  %arrayidx91 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom90
  %indexes92 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx91, i32 0, i32 2
  %arrayidx93 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes92, i64 0, i64 2
  store i32 10, i32* %arrayidx93, align 8
  %27 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %27, 1
  store i32 %inc94, i32* %i, align 4
  %idxprom95 = sext i32 %inc94 to i64
  %arrayidx96 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom95
  %pos97 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx96, i32 0, i32 0
  store i32 6, i32* %pos97, align 16
  %28 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %28 to i64
  %arrayidx99 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom98
  %action100 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx99, i32 0, i32 1
  store void (i32)* @choose, void (i32)** %action100, align 8
  %29 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %29, 1
  store i32 %inc101, i32* %i, align 4
  %idxprom102 = sext i32 %inc101 to i64
  %arrayidx103 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom102
  %pos104 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx103, i32 0, i32 0
  store i32 14, i32* %pos104, align 16
  %30 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %30 to i64
  %arrayidx106 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom105
  %action107 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx106, i32 0, i32 1
  store void (i32)* @decide, void (i32)** %action107, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %31 to i64
  %arrayidx109 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom108
  %indexes110 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx109, i32 0, i32 2
  %arrayidx111 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes110, i64 0, i64 0
  store i32 2, i32* %arrayidx111, align 16
  %32 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %32 to i64
  %arrayidx113 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom112
  %indexes114 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx113, i32 0, i32 2
  %arrayidx115 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes114, i64 0, i64 1
  store i32 6, i32* %arrayidx115, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %33 to i64
  %arrayidx117 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom116
  %indexes118 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx117, i32 0, i32 2
  %arrayidx119 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes118, i64 0, i64 2
  store i32 10, i32* %arrayidx119, align 8
  %34 = load i32, i32* %i, align 4
  %inc120 = add nsw i32 %34, 1
  store i32 %inc120, i32* %i, align 4
  %idxprom121 = sext i32 %inc120 to i64
  %arrayidx122 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom121
  %pos123 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx122, i32 0, i32 0
  store i32 12, i32* %pos123, align 16
  %35 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %35 to i64
  %arrayidx125 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom124
  %action126 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx125, i32 0, i32 1
  store void (i32)* @decide, void (i32)** %action126, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %36 to i64
  %arrayidx128 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom127
  %indexes129 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx128, i32 0, i32 2
  %arrayidx130 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes129, i64 0, i64 0
  store i32 13, i32* %arrayidx130, align 16
  %37 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %37 to i64
  %arrayidx132 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom131
  %indexes133 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx132, i32 0, i32 2
  %arrayidx134 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes133, i64 0, i64 1
  store i32 14, i32* %arrayidx134, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %38 to i64
  %arrayidx136 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom135
  %indexes137 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx136, i32 0, i32 2
  %arrayidx138 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes137, i64 0, i64 2
  store i32 15, i32* %arrayidx138, align 8
  %39 = load i32, i32* %i, align 4
  %inc139 = add nsw i32 %39, 1
  store i32 %inc139, i32* %i, align 4
  %idxprom140 = sext i32 %inc139 to i64
  %arrayidx141 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom140
  %pos142 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx141, i32 0, i32 0
  store i32 4, i32* %pos142, align 16
  %40 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %40 to i64
  %arrayidx144 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom143
  %action145 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx144, i32 0, i32 1
  store void (i32)* @choose, void (i32)** %action145, align 8
  %41 = load i32, i32* %i, align 4
  %inc146 = add nsw i32 %41, 1
  store i32 %inc146, i32* %i, align 4
  %idxprom147 = sext i32 %inc146 to i64
  %arrayidx148 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom147
  %pos149 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx148, i32 0, i32 0
  store i32 7, i32* %pos149, align 16
  %42 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %42 to i64
  %arrayidx151 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom150
  %action152 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx151, i32 0, i32 1
  store void (i32)* @decide, void (i32)** %action152, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %43 to i64
  %arrayidx154 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom153
  %indexes155 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx154, i32 0, i32 2
  %arrayidx156 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes155, i64 0, i64 0
  store i32 4, i32* %arrayidx156, align 16
  %44 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %44 to i64
  %arrayidx158 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom157
  %indexes159 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx158, i32 0, i32 2
  %arrayidx160 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes159, i64 0, i64 1
  store i32 5, i32* %arrayidx160, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %45 to i64
  %arrayidx162 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom161
  %indexes163 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx162, i32 0, i32 2
  %arrayidx164 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes163, i64 0, i64 2
  store i32 6, i32* %arrayidx164, align 8
  %46 = load i32, i32* %i, align 4
  %inc165 = add nsw i32 %46, 1
  store i32 %inc165, i32* %i, align 4
  %idxprom166 = sext i32 %inc165 to i64
  %arrayidx167 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom166
  %pos168 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx167, i32 0, i32 0
  store i32 8, i32* %pos168, align 16
  %47 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %47 to i64
  %arrayidx170 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom169
  %action171 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx170, i32 0, i32 1
  store void (i32)* @decide, void (i32)** %action171, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %48 to i64
  %arrayidx173 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom172
  %indexes174 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx173, i32 0, i32 2
  %arrayidx175 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes174, i64 0, i64 0
  store i32 0, i32* %arrayidx175, align 16
  %49 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %49 to i64
  %arrayidx177 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom176
  %indexes178 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx177, i32 0, i32 2
  %arrayidx179 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes178, i64 0, i64 1
  store i32 4, i32* %arrayidx179, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %50 to i64
  %arrayidx181 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom180
  %indexes182 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx181, i32 0, i32 2
  %arrayidx183 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes182, i64 0, i64 2
  store i32 12, i32* %arrayidx183, align 8
  %51 = load i32, i32* %i, align 4
  %inc184 = add nsw i32 %51, 1
  store i32 %inc184, i32* %i, align 4
  %idxprom185 = sext i32 %inc184 to i64
  %arrayidx186 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom185
  %pos187 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx186, i32 0, i32 0
  store i32 11, i32* %pos187, align 16
  %52 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %52 to i64
  %arrayidx189 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom188
  %action190 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx189, i32 0, i32 1
  store void (i32)* @decide, void (i32)** %action190, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %53 to i64
  %arrayidx192 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom191
  %indexes193 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx192, i32 0, i32 2
  %arrayidx194 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes193, i64 0, i64 0
  store i32 8, i32* %arrayidx194, align 16
  %54 = load i32, i32* %i, align 4
  %idxprom195 = sext i32 %54 to i64
  %arrayidx196 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom195
  %indexes197 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx196, i32 0, i32 2
  %arrayidx198 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes197, i64 0, i64 1
  store i32 9, i32* %arrayidx198, align 4
  %55 = load i32, i32* %i, align 4
  %idxprom199 = sext i32 %55 to i64
  %arrayidx200 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom199
  %indexes201 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx200, i32 0, i32 2
  %arrayidx202 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes201, i64 0, i64 2
  store i32 10, i32* %arrayidx202, align 8
  %56 = load i32, i32* %i, align 4
  %inc203 = add nsw i32 %56, 1
  store i32 %inc203, i32* %i, align 4
  %idxprom204 = sext i32 %inc203 to i64
  %arrayidx205 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom204
  %pos206 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx205, i32 0, i32 0
  store i32 0, i32* %pos206, align 16
  %57 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %57 to i64
  %arrayidx208 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom207
  %action209 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx208, i32 0, i32 1
  store void (i32)* @validate, void (i32)** %action209, align 8
  %58 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %58 to i64
  %arrayidx211 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom210
  %indexes212 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx211, i32 0, i32 2
  %arrayidx213 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes212, i64 0, i64 0
  store i32 3, i32* %arrayidx213, align 16
  %59 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %59 to i64
  %arrayidx215 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom214
  %indexes216 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx215, i32 0, i32 2
  %arrayidx217 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes216, i64 0, i64 1
  store i32 7, i32* %arrayidx217, align 4
  %60 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %60 to i64
  %arrayidx219 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom218
  %indexes220 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx219, i32 0, i32 2
  %arrayidx221 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes220, i64 0, i64 2
  store i32 11, i32* %arrayidx221, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom222 = sext i32 %61 to i64
  %arrayidx223 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom222
  %indexes224 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx223, i32 0, i32 2
  %arrayidx225 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes224, i64 0, i64 3
  store i32 15, i32* %arrayidx225, align 4
  %62 = load i32, i32* %i, align 4
  %inc226 = add nsw i32 %62, 1
  store i32 %inc226, i32* %i, align 4
  %idxprom227 = sext i32 %inc226 to i64
  %arrayidx228 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom227
  %pos229 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx228, i32 0, i32 0
  store i32 0, i32* %pos229, align 16
  %63 = load i32, i32* %i, align 4
  %idxprom230 = sext i32 %63 to i64
  %arrayidx231 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom230
  %action232 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx231, i32 0, i32 1
  store void (i32)* @validate, void (i32)** %action232, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %64 to i64
  %arrayidx234 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom233
  %indexes235 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx234, i32 0, i32 2
  %arrayidx236 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes235, i64 0, i64 0
  store i32 3, i32* %arrayidx236, align 16
  %65 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %65 to i64
  %arrayidx238 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom237
  %indexes239 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx238, i32 0, i32 2
  %arrayidx240 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes239, i64 0, i64 1
  store i32 6, i32* %arrayidx240, align 4
  %66 = load i32, i32* %i, align 4
  %idxprom241 = sext i32 %66 to i64
  %arrayidx242 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom241
  %indexes243 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx242, i32 0, i32 2
  %arrayidx244 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes243, i64 0, i64 2
  store i32 9, i32* %arrayidx244, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom245 = sext i32 %67 to i64
  %arrayidx246 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom245
  %indexes247 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx246, i32 0, i32 2
  %arrayidx248 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes247, i64 0, i64 3
  store i32 12, i32* %arrayidx248, align 4
  %68 = load i32, i32* %i, align 4
  %inc249 = add nsw i32 %68, 1
  store i32 %inc249, i32* %i, align 4
  %idxprom250 = sext i32 %inc249 to i64
  %arrayidx251 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom250
  %pos252 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx251, i32 0, i32 0
  store i32 0, i32* %pos252, align 16
  %69 = load i32, i32* %i, align 4
  %idxprom253 = sext i32 %69 to i64
  %arrayidx254 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom253
  %action255 = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx254, i32 0, i32 1
  store void (i32)* @solution, void (i32)** %action255, align 8
  %70 = load void (i32)*, void (i32)** getelementptr inbounds ([19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 0, i32 1), align 8
  call void %70(i32 0)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choose(i32 %ai) #0 {
entry:
  %ai.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ap = alloca %struct.Action*, align 8
  store i32 %ai, i32* %ai.addr, align 4
  %0 = load i32, i32* %ai.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom
  store %struct.Action* %arrayidx, %struct.Action** %ap, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* @picked, i64 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [16 x i32], [16 x i32]* @choices, i64 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %6 = load %struct.Action*, %struct.Action** %ap, align 8
  %pos = getelementptr inbounds %struct.Action, %struct.Action* %6, i32 0, i32 0
  %7 = load i32, i32* %pos, align 8
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [16 x i32], [16 x i32]* @a, i64 0, i64 %idxprom5
  store i32 %5, i32* %arrayidx6, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [16 x i32], [16 x i32]* @picked, i64 0, i64 %idxprom7
  store i32 1, i32* %arrayidx8, align 4
  %9 = load i32, i32* %ai.addr, align 4
  %add = add nsw i32 %9, 1
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom9
  %action = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx10, i32 0, i32 1
  %10 = load void (i32)*, void (i32)** %action, align 8
  %11 = load i32, i32* %ai.addr, align 4
  %add11 = add nsw i32 %11, 1
  call void %10(i32 %add11)
  %12 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [16 x i32], [16 x i32]* @picked, i64 0, i64 %idxprom12
  store i32 0, i32* %arrayidx13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decide(i32 %ai) #0 {
entry:
  %ai.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %ap = alloca %struct.Action*, align 8
  store i32 %ai, i32* %ai.addr, align 4
  %0 = load i32, i32* %ai.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom
  store %struct.Action* %arrayidx, %struct.Action** %ap, align 8
  store i32 0, i32* %i, align 4
  store i32 34, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Action*, %struct.Action** %ap, align 8
  %indexes = getelementptr inbounds %struct.Action, %struct.Action* %2, i32 0, i32 2
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes, i64 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [16 x i32], [16 x i32]* @a, i64 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %6 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %6, %5
  store i32 %sub, i32* %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %n, align 4
  %call = call i32 @choiceSearch(i32 %8)
  store i32 %call, i32* %i, align 4
  %9 = load i32, i32* %i, align 4
  %cmp5 = icmp eq i32 %9, -1
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [16 x i32], [16 x i32]* @picked, i64 0, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.end
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i32, i32* %n, align 4
  %13 = load %struct.Action*, %struct.Action** %ap, align 8
  %pos = getelementptr inbounds %struct.Action, %struct.Action* %13, i32 0, i32 0
  %14 = load i32, i32* %pos, align 8
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [16 x i32], [16 x i32]* @a, i64 0, i64 %idxprom8
  store i32 %12, i32* %arrayidx9, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [16 x i32], [16 x i32]* @picked, i64 0, i64 %idxprom10
  store i32 1, i32* %arrayidx11, align 4
  %16 = load i32, i32* %ai.addr, align 4
  %add = add nsw i32 %16, 1
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom12
  %action = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx13, i32 0, i32 1
  %17 = load void (i32)*, void (i32)** %action, align 8
  %18 = load i32, i32* %ai.addr, align 4
  %add14 = add nsw i32 %18, 1
  call void %17(i32 %add14)
  %19 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* @picked, i64 0, i64 %idxprom15
  store i32 0, i32* %arrayidx16, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate(i32 %ai) #0 {
entry:
  %ai.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %ap = alloca %struct.Action*, align 8
  store i32 %ai, i32* %ai.addr, align 4
  %0 = load i32, i32* %ai.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom
  store %struct.Action* %arrayidx, %struct.Action** %ap, align 8
  store i32 0, i32* %i, align 4
  store i32 34, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Action*, %struct.Action** %ap, align 8
  %indexes = getelementptr inbounds %struct.Action, %struct.Action* %2, i32 0, i32 2
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %indexes, i64 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [16 x i32], [16 x i32]* @a, i64 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %6 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %6, %5
  store i32 %sub, i32* %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %n, align 4
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %9 = load i32, i32* %ai.addr, align 4
  %add = add nsw i32 %9, 1
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [19 x %struct.Action], [19 x %struct.Action]* @actions, i64 0, i64 %idxprom6
  %action = getelementptr inbounds %struct.Action, %struct.Action* %arrayidx7, i32 0, i32 1
  %10 = load void (i32)*, void (i32)** %action, align 8
  %11 = load i32, i32* %ai.addr, align 4
  %add8 = add nsw i32 %11, 1
  call void %10(i32 %add8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solution(i32 %ai) #0 {
entry:
  %ai.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %sep = alloca i8, align 1
  store i32 %ai, i32* %ai.addr, align 4
  %0 = load i32, i32* @solution.count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @solution.count, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %inc)
  store i32 0, i32* %i, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %2, 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i8 10, i8* %sep, align 1
  store i32 0, i32* %c, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  store i8 32, i8* %sep, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @a, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i8, i8* %sep, align 1
  %conv = sext i8 %5 to i32
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %4, i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %6, 1
  store i32 %inc3, i32* %i, align 4
  %7 = load i32, i32* %c, align 4
  %inc4 = add nsw i32 %7, 1
  store i32 %inc4, i32* %c, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choiceSearch(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @choices, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !5}
