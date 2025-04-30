; ModuleID = './code/326-32941magic_puzzle.c'
source_filename = "./code/326-32941magic_puzzle.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.Action = type { i32, ptr, [4 x i32] }

@actions = global [19 x %struct.Action] zeroinitializer, align 8
@picked = internal global [16 x i32] zeroinitializer, align 4
@choices = internal constant [16 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], align 4
@a = internal global [16 x i32] zeroinitializer, align 4
@solution.count = internal global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"--- Solution %d ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%2d%c\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 -1, ptr %i, align 4
  %0 = load i32, ptr %i, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.Action, ptr %arrayidx, i32 0, i32 0
  store i32 0, ptr %pos, align 8
  %1 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom1
  %action = getelementptr inbounds %struct.Action, ptr %arrayidx2, i32 0, i32 1
  store ptr @choose, ptr %action, align 8
  %2 = load i32, ptr %i, align 4
  %inc3 = add nsw i32 %2, 1
  store i32 %inc3, ptr %i, align 4
  %idxprom4 = sext i32 %inc3 to i64
  %arrayidx5 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom4
  %pos6 = getelementptr inbounds %struct.Action, ptr %arrayidx5, i32 0, i32 0
  store i32 1, ptr %pos6, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %3 to i64
  %arrayidx8 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom7
  %action9 = getelementptr inbounds %struct.Action, ptr %arrayidx8, i32 0, i32 1
  store ptr @choose, ptr %action9, align 8
  %4 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %4, 1
  store i32 %inc10, ptr %i, align 4
  %idxprom11 = sext i32 %inc10 to i64
  %arrayidx12 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom11
  %pos13 = getelementptr inbounds %struct.Action, ptr %arrayidx12, i32 0, i32 0
  store i32 2, ptr %pos13, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %5 to i64
  %arrayidx15 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom14
  %action16 = getelementptr inbounds %struct.Action, ptr %arrayidx15, i32 0, i32 1
  store ptr @choose, ptr %action16, align 8
  %6 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %6, 1
  store i32 %inc17, ptr %i, align 4
  %idxprom18 = sext i32 %inc17 to i64
  %arrayidx19 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom18
  %pos20 = getelementptr inbounds %struct.Action, ptr %arrayidx19, i32 0, i32 0
  store i32 3, ptr %pos20, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %7 to i64
  %arrayidx22 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom21
  %action23 = getelementptr inbounds %struct.Action, ptr %arrayidx22, i32 0, i32 1
  store ptr @decide, ptr %action23, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %8 to i64
  %arrayidx25 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom24
  %indexes = getelementptr inbounds %struct.Action, ptr %arrayidx25, i32 0, i32 2
  %arrayidx26 = getelementptr inbounds [4 x i32], ptr %indexes, i64 0, i64 0
  store i32 0, ptr %arrayidx26, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %9 to i64
  %arrayidx28 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom27
  %indexes29 = getelementptr inbounds %struct.Action, ptr %arrayidx28, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [4 x i32], ptr %indexes29, i64 0, i64 1
  store i32 1, ptr %arrayidx30, align 4
  %10 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %10 to i64
  %arrayidx32 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom31
  %indexes33 = getelementptr inbounds %struct.Action, ptr %arrayidx32, i32 0, i32 2
  %arrayidx34 = getelementptr inbounds [4 x i32], ptr %indexes33, i64 0, i64 2
  store i32 2, ptr %arrayidx34, align 8
  %11 = load i32, ptr %i, align 4
  %inc35 = add nsw i32 %11, 1
  store i32 %inc35, ptr %i, align 4
  %idxprom36 = sext i32 %inc35 to i64
  %arrayidx37 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom36
  %pos38 = getelementptr inbounds %struct.Action, ptr %arrayidx37, i32 0, i32 0
  store i32 5, ptr %pos38, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom39 = sext i32 %12 to i64
  %arrayidx40 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom39
  %action41 = getelementptr inbounds %struct.Action, ptr %arrayidx40, i32 0, i32 1
  store ptr @choose, ptr %action41, align 8
  %13 = load i32, ptr %i, align 4
  %inc42 = add nsw i32 %13, 1
  store i32 %inc42, ptr %i, align 4
  %idxprom43 = sext i32 %inc42 to i64
  %arrayidx44 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom43
  %pos45 = getelementptr inbounds %struct.Action, ptr %arrayidx44, i32 0, i32 0
  store i32 9, ptr %pos45, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %14 to i64
  %arrayidx47 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom46
  %action48 = getelementptr inbounds %struct.Action, ptr %arrayidx47, i32 0, i32 1
  store ptr @choose, ptr %action48, align 8
  %15 = load i32, ptr %i, align 4
  %inc49 = add nsw i32 %15, 1
  store i32 %inc49, ptr %i, align 4
  %idxprom50 = sext i32 %inc49 to i64
  %arrayidx51 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom50
  %pos52 = getelementptr inbounds %struct.Action, ptr %arrayidx51, i32 0, i32 0
  store i32 13, ptr %pos52, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom53 = sext i32 %16 to i64
  %arrayidx54 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom53
  %action55 = getelementptr inbounds %struct.Action, ptr %arrayidx54, i32 0, i32 1
  store ptr @decide, ptr %action55, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom56 = sext i32 %17 to i64
  %arrayidx57 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom56
  %indexes58 = getelementptr inbounds %struct.Action, ptr %arrayidx57, i32 0, i32 2
  %arrayidx59 = getelementptr inbounds [4 x i32], ptr %indexes58, i64 0, i64 0
  store i32 1, ptr %arrayidx59, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom60 = sext i32 %18 to i64
  %arrayidx61 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom60
  %indexes62 = getelementptr inbounds %struct.Action, ptr %arrayidx61, i32 0, i32 2
  %arrayidx63 = getelementptr inbounds [4 x i32], ptr %indexes62, i64 0, i64 1
  store i32 5, ptr %arrayidx63, align 4
  %19 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %19 to i64
  %arrayidx65 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom64
  %indexes66 = getelementptr inbounds %struct.Action, ptr %arrayidx65, i32 0, i32 2
  %arrayidx67 = getelementptr inbounds [4 x i32], ptr %indexes66, i64 0, i64 2
  store i32 9, ptr %arrayidx67, align 8
  %20 = load i32, ptr %i, align 4
  %inc68 = add nsw i32 %20, 1
  store i32 %inc68, ptr %i, align 4
  %idxprom69 = sext i32 %inc68 to i64
  %arrayidx70 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom69
  %pos71 = getelementptr inbounds %struct.Action, ptr %arrayidx70, i32 0, i32 0
  store i32 10, ptr %pos71, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom72 = sext i32 %21 to i64
  %arrayidx73 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom72
  %action74 = getelementptr inbounds %struct.Action, ptr %arrayidx73, i32 0, i32 1
  store ptr @choose, ptr %action74, align 8
  %22 = load i32, ptr %i, align 4
  %inc75 = add nsw i32 %22, 1
  store i32 %inc75, ptr %i, align 4
  %idxprom76 = sext i32 %inc75 to i64
  %arrayidx77 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom76
  %pos78 = getelementptr inbounds %struct.Action, ptr %arrayidx77, i32 0, i32 0
  store i32 15, ptr %pos78, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom79 = sext i32 %23 to i64
  %arrayidx80 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom79
  %action81 = getelementptr inbounds %struct.Action, ptr %arrayidx80, i32 0, i32 1
  store ptr @decide, ptr %action81, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom82 = sext i32 %24 to i64
  %arrayidx83 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom82
  %indexes84 = getelementptr inbounds %struct.Action, ptr %arrayidx83, i32 0, i32 2
  %arrayidx85 = getelementptr inbounds [4 x i32], ptr %indexes84, i64 0, i64 0
  store i32 0, ptr %arrayidx85, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom86 = sext i32 %25 to i64
  %arrayidx87 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom86
  %indexes88 = getelementptr inbounds %struct.Action, ptr %arrayidx87, i32 0, i32 2
  %arrayidx89 = getelementptr inbounds [4 x i32], ptr %indexes88, i64 0, i64 1
  store i32 5, ptr %arrayidx89, align 4
  %26 = load i32, ptr %i, align 4
  %idxprom90 = sext i32 %26 to i64
  %arrayidx91 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom90
  %indexes92 = getelementptr inbounds %struct.Action, ptr %arrayidx91, i32 0, i32 2
  %arrayidx93 = getelementptr inbounds [4 x i32], ptr %indexes92, i64 0, i64 2
  store i32 10, ptr %arrayidx93, align 8
  %27 = load i32, ptr %i, align 4
  %inc94 = add nsw i32 %27, 1
  store i32 %inc94, ptr %i, align 4
  %idxprom95 = sext i32 %inc94 to i64
  %arrayidx96 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom95
  %pos97 = getelementptr inbounds %struct.Action, ptr %arrayidx96, i32 0, i32 0
  store i32 6, ptr %pos97, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom98 = sext i32 %28 to i64
  %arrayidx99 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom98
  %action100 = getelementptr inbounds %struct.Action, ptr %arrayidx99, i32 0, i32 1
  store ptr @choose, ptr %action100, align 8
  %29 = load i32, ptr %i, align 4
  %inc101 = add nsw i32 %29, 1
  store i32 %inc101, ptr %i, align 4
  %idxprom102 = sext i32 %inc101 to i64
  %arrayidx103 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom102
  %pos104 = getelementptr inbounds %struct.Action, ptr %arrayidx103, i32 0, i32 0
  store i32 14, ptr %pos104, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom105 = sext i32 %30 to i64
  %arrayidx106 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom105
  %action107 = getelementptr inbounds %struct.Action, ptr %arrayidx106, i32 0, i32 1
  store ptr @decide, ptr %action107, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom108 = sext i32 %31 to i64
  %arrayidx109 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom108
  %indexes110 = getelementptr inbounds %struct.Action, ptr %arrayidx109, i32 0, i32 2
  %arrayidx111 = getelementptr inbounds [4 x i32], ptr %indexes110, i64 0, i64 0
  store i32 2, ptr %arrayidx111, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom112 = sext i32 %32 to i64
  %arrayidx113 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom112
  %indexes114 = getelementptr inbounds %struct.Action, ptr %arrayidx113, i32 0, i32 2
  %arrayidx115 = getelementptr inbounds [4 x i32], ptr %indexes114, i64 0, i64 1
  store i32 6, ptr %arrayidx115, align 4
  %33 = load i32, ptr %i, align 4
  %idxprom116 = sext i32 %33 to i64
  %arrayidx117 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom116
  %indexes118 = getelementptr inbounds %struct.Action, ptr %arrayidx117, i32 0, i32 2
  %arrayidx119 = getelementptr inbounds [4 x i32], ptr %indexes118, i64 0, i64 2
  store i32 10, ptr %arrayidx119, align 8
  %34 = load i32, ptr %i, align 4
  %inc120 = add nsw i32 %34, 1
  store i32 %inc120, ptr %i, align 4
  %idxprom121 = sext i32 %inc120 to i64
  %arrayidx122 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom121
  %pos123 = getelementptr inbounds %struct.Action, ptr %arrayidx122, i32 0, i32 0
  store i32 12, ptr %pos123, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom124 = sext i32 %35 to i64
  %arrayidx125 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom124
  %action126 = getelementptr inbounds %struct.Action, ptr %arrayidx125, i32 0, i32 1
  store ptr @decide, ptr %action126, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom127 = sext i32 %36 to i64
  %arrayidx128 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom127
  %indexes129 = getelementptr inbounds %struct.Action, ptr %arrayidx128, i32 0, i32 2
  %arrayidx130 = getelementptr inbounds [4 x i32], ptr %indexes129, i64 0, i64 0
  store i32 13, ptr %arrayidx130, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom131 = sext i32 %37 to i64
  %arrayidx132 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom131
  %indexes133 = getelementptr inbounds %struct.Action, ptr %arrayidx132, i32 0, i32 2
  %arrayidx134 = getelementptr inbounds [4 x i32], ptr %indexes133, i64 0, i64 1
  store i32 14, ptr %arrayidx134, align 4
  %38 = load i32, ptr %i, align 4
  %idxprom135 = sext i32 %38 to i64
  %arrayidx136 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom135
  %indexes137 = getelementptr inbounds %struct.Action, ptr %arrayidx136, i32 0, i32 2
  %arrayidx138 = getelementptr inbounds [4 x i32], ptr %indexes137, i64 0, i64 2
  store i32 15, ptr %arrayidx138, align 8
  %39 = load i32, ptr %i, align 4
  %inc139 = add nsw i32 %39, 1
  store i32 %inc139, ptr %i, align 4
  %idxprom140 = sext i32 %inc139 to i64
  %arrayidx141 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom140
  %pos142 = getelementptr inbounds %struct.Action, ptr %arrayidx141, i32 0, i32 0
  store i32 4, ptr %pos142, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom143 = sext i32 %40 to i64
  %arrayidx144 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom143
  %action145 = getelementptr inbounds %struct.Action, ptr %arrayidx144, i32 0, i32 1
  store ptr @choose, ptr %action145, align 8
  %41 = load i32, ptr %i, align 4
  %inc146 = add nsw i32 %41, 1
  store i32 %inc146, ptr %i, align 4
  %idxprom147 = sext i32 %inc146 to i64
  %arrayidx148 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom147
  %pos149 = getelementptr inbounds %struct.Action, ptr %arrayidx148, i32 0, i32 0
  store i32 7, ptr %pos149, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom150 = sext i32 %42 to i64
  %arrayidx151 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom150
  %action152 = getelementptr inbounds %struct.Action, ptr %arrayidx151, i32 0, i32 1
  store ptr @decide, ptr %action152, align 8
  %43 = load i32, ptr %i, align 4
  %idxprom153 = sext i32 %43 to i64
  %arrayidx154 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom153
  %indexes155 = getelementptr inbounds %struct.Action, ptr %arrayidx154, i32 0, i32 2
  %arrayidx156 = getelementptr inbounds [4 x i32], ptr %indexes155, i64 0, i64 0
  store i32 4, ptr %arrayidx156, align 8
  %44 = load i32, ptr %i, align 4
  %idxprom157 = sext i32 %44 to i64
  %arrayidx158 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom157
  %indexes159 = getelementptr inbounds %struct.Action, ptr %arrayidx158, i32 0, i32 2
  %arrayidx160 = getelementptr inbounds [4 x i32], ptr %indexes159, i64 0, i64 1
  store i32 5, ptr %arrayidx160, align 4
  %45 = load i32, ptr %i, align 4
  %idxprom161 = sext i32 %45 to i64
  %arrayidx162 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom161
  %indexes163 = getelementptr inbounds %struct.Action, ptr %arrayidx162, i32 0, i32 2
  %arrayidx164 = getelementptr inbounds [4 x i32], ptr %indexes163, i64 0, i64 2
  store i32 6, ptr %arrayidx164, align 8
  %46 = load i32, ptr %i, align 4
  %inc165 = add nsw i32 %46, 1
  store i32 %inc165, ptr %i, align 4
  %idxprom166 = sext i32 %inc165 to i64
  %arrayidx167 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom166
  %pos168 = getelementptr inbounds %struct.Action, ptr %arrayidx167, i32 0, i32 0
  store i32 8, ptr %pos168, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom169 = sext i32 %47 to i64
  %arrayidx170 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom169
  %action171 = getelementptr inbounds %struct.Action, ptr %arrayidx170, i32 0, i32 1
  store ptr @decide, ptr %action171, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom172 = sext i32 %48 to i64
  %arrayidx173 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom172
  %indexes174 = getelementptr inbounds %struct.Action, ptr %arrayidx173, i32 0, i32 2
  %arrayidx175 = getelementptr inbounds [4 x i32], ptr %indexes174, i64 0, i64 0
  store i32 0, ptr %arrayidx175, align 8
  %49 = load i32, ptr %i, align 4
  %idxprom176 = sext i32 %49 to i64
  %arrayidx177 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom176
  %indexes178 = getelementptr inbounds %struct.Action, ptr %arrayidx177, i32 0, i32 2
  %arrayidx179 = getelementptr inbounds [4 x i32], ptr %indexes178, i64 0, i64 1
  store i32 4, ptr %arrayidx179, align 4
  %50 = load i32, ptr %i, align 4
  %idxprom180 = sext i32 %50 to i64
  %arrayidx181 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom180
  %indexes182 = getelementptr inbounds %struct.Action, ptr %arrayidx181, i32 0, i32 2
  %arrayidx183 = getelementptr inbounds [4 x i32], ptr %indexes182, i64 0, i64 2
  store i32 12, ptr %arrayidx183, align 8
  %51 = load i32, ptr %i, align 4
  %inc184 = add nsw i32 %51, 1
  store i32 %inc184, ptr %i, align 4
  %idxprom185 = sext i32 %inc184 to i64
  %arrayidx186 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom185
  %pos187 = getelementptr inbounds %struct.Action, ptr %arrayidx186, i32 0, i32 0
  store i32 11, ptr %pos187, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom188 = sext i32 %52 to i64
  %arrayidx189 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom188
  %action190 = getelementptr inbounds %struct.Action, ptr %arrayidx189, i32 0, i32 1
  store ptr @decide, ptr %action190, align 8
  %53 = load i32, ptr %i, align 4
  %idxprom191 = sext i32 %53 to i64
  %arrayidx192 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom191
  %indexes193 = getelementptr inbounds %struct.Action, ptr %arrayidx192, i32 0, i32 2
  %arrayidx194 = getelementptr inbounds [4 x i32], ptr %indexes193, i64 0, i64 0
  store i32 8, ptr %arrayidx194, align 8
  %54 = load i32, ptr %i, align 4
  %idxprom195 = sext i32 %54 to i64
  %arrayidx196 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom195
  %indexes197 = getelementptr inbounds %struct.Action, ptr %arrayidx196, i32 0, i32 2
  %arrayidx198 = getelementptr inbounds [4 x i32], ptr %indexes197, i64 0, i64 1
  store i32 9, ptr %arrayidx198, align 4
  %55 = load i32, ptr %i, align 4
  %idxprom199 = sext i32 %55 to i64
  %arrayidx200 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom199
  %indexes201 = getelementptr inbounds %struct.Action, ptr %arrayidx200, i32 0, i32 2
  %arrayidx202 = getelementptr inbounds [4 x i32], ptr %indexes201, i64 0, i64 2
  store i32 10, ptr %arrayidx202, align 8
  %56 = load i32, ptr %i, align 4
  %inc203 = add nsw i32 %56, 1
  store i32 %inc203, ptr %i, align 4
  %idxprom204 = sext i32 %inc203 to i64
  %arrayidx205 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom204
  %pos206 = getelementptr inbounds %struct.Action, ptr %arrayidx205, i32 0, i32 0
  store i32 0, ptr %pos206, align 8
  %57 = load i32, ptr %i, align 4
  %idxprom207 = sext i32 %57 to i64
  %arrayidx208 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom207
  %action209 = getelementptr inbounds %struct.Action, ptr %arrayidx208, i32 0, i32 1
  store ptr @validate, ptr %action209, align 8
  %58 = load i32, ptr %i, align 4
  %idxprom210 = sext i32 %58 to i64
  %arrayidx211 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom210
  %indexes212 = getelementptr inbounds %struct.Action, ptr %arrayidx211, i32 0, i32 2
  %arrayidx213 = getelementptr inbounds [4 x i32], ptr %indexes212, i64 0, i64 0
  store i32 3, ptr %arrayidx213, align 8
  %59 = load i32, ptr %i, align 4
  %idxprom214 = sext i32 %59 to i64
  %arrayidx215 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom214
  %indexes216 = getelementptr inbounds %struct.Action, ptr %arrayidx215, i32 0, i32 2
  %arrayidx217 = getelementptr inbounds [4 x i32], ptr %indexes216, i64 0, i64 1
  store i32 7, ptr %arrayidx217, align 4
  %60 = load i32, ptr %i, align 4
  %idxprom218 = sext i32 %60 to i64
  %arrayidx219 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom218
  %indexes220 = getelementptr inbounds %struct.Action, ptr %arrayidx219, i32 0, i32 2
  %arrayidx221 = getelementptr inbounds [4 x i32], ptr %indexes220, i64 0, i64 2
  store i32 11, ptr %arrayidx221, align 8
  %61 = load i32, ptr %i, align 4
  %idxprom222 = sext i32 %61 to i64
  %arrayidx223 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom222
  %indexes224 = getelementptr inbounds %struct.Action, ptr %arrayidx223, i32 0, i32 2
  %arrayidx225 = getelementptr inbounds [4 x i32], ptr %indexes224, i64 0, i64 3
  store i32 15, ptr %arrayidx225, align 4
  %62 = load i32, ptr %i, align 4
  %inc226 = add nsw i32 %62, 1
  store i32 %inc226, ptr %i, align 4
  %idxprom227 = sext i32 %inc226 to i64
  %arrayidx228 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom227
  %pos229 = getelementptr inbounds %struct.Action, ptr %arrayidx228, i32 0, i32 0
  store i32 0, ptr %pos229, align 8
  %63 = load i32, ptr %i, align 4
  %idxprom230 = sext i32 %63 to i64
  %arrayidx231 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom230
  %action232 = getelementptr inbounds %struct.Action, ptr %arrayidx231, i32 0, i32 1
  store ptr @validate, ptr %action232, align 8
  %64 = load i32, ptr %i, align 4
  %idxprom233 = sext i32 %64 to i64
  %arrayidx234 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom233
  %indexes235 = getelementptr inbounds %struct.Action, ptr %arrayidx234, i32 0, i32 2
  %arrayidx236 = getelementptr inbounds [4 x i32], ptr %indexes235, i64 0, i64 0
  store i32 3, ptr %arrayidx236, align 8
  %65 = load i32, ptr %i, align 4
  %idxprom237 = sext i32 %65 to i64
  %arrayidx238 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom237
  %indexes239 = getelementptr inbounds %struct.Action, ptr %arrayidx238, i32 0, i32 2
  %arrayidx240 = getelementptr inbounds [4 x i32], ptr %indexes239, i64 0, i64 1
  store i32 6, ptr %arrayidx240, align 4
  %66 = load i32, ptr %i, align 4
  %idxprom241 = sext i32 %66 to i64
  %arrayidx242 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom241
  %indexes243 = getelementptr inbounds %struct.Action, ptr %arrayidx242, i32 0, i32 2
  %arrayidx244 = getelementptr inbounds [4 x i32], ptr %indexes243, i64 0, i64 2
  store i32 9, ptr %arrayidx244, align 8
  %67 = load i32, ptr %i, align 4
  %idxprom245 = sext i32 %67 to i64
  %arrayidx246 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom245
  %indexes247 = getelementptr inbounds %struct.Action, ptr %arrayidx246, i32 0, i32 2
  %arrayidx248 = getelementptr inbounds [4 x i32], ptr %indexes247, i64 0, i64 3
  store i32 12, ptr %arrayidx248, align 4
  %68 = load i32, ptr %i, align 4
  %inc249 = add nsw i32 %68, 1
  store i32 %inc249, ptr %i, align 4
  %idxprom250 = sext i32 %inc249 to i64
  %arrayidx251 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom250
  %pos252 = getelementptr inbounds %struct.Action, ptr %arrayidx251, i32 0, i32 0
  store i32 0, ptr %pos252, align 8
  %69 = load i32, ptr %i, align 4
  %idxprom253 = sext i32 %69 to i64
  %arrayidx254 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom253
  %action255 = getelementptr inbounds %struct.Action, ptr %arrayidx254, i32 0, i32 1
  store ptr @solution, ptr %action255, align 8
  %70 = load ptr, ptr getelementptr inbounds (%struct.Action, ptr @actions, i32 0, i32 1), align 8
  call void %70(i32 noundef 0)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @choose(i32 noundef %ai) #0 {
entry:
  %ai.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ap = alloca ptr, align 8
  store i32 %ai, ptr %ai.addr, align 4
  %0 = load i32, ptr %ai.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %ap, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr @picked, i64 0, i64 %idxprom1
  %3 = load i32, ptr %arrayidx2, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [16 x i32], ptr @choices, i64 0, i64 %idxprom3
  %5 = load i32, ptr %arrayidx4, align 4
  %6 = load ptr, ptr %ap, align 8
  %pos = getelementptr inbounds %struct.Action, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %pos, align 8
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [16 x i32], ptr @a, i64 0, i64 %idxprom5
  store i32 %5, ptr %arrayidx6, align 4
  %8 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [16 x i32], ptr @picked, i64 0, i64 %idxprom7
  store i32 1, ptr %arrayidx8, align 4
  %9 = load i32, ptr %ai.addr, align 4
  %add = add nsw i32 %9, 1
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom9
  %action = getelementptr inbounds %struct.Action, ptr %arrayidx10, i32 0, i32 1
  %10 = load ptr, ptr %action, align 8
  %11 = load i32, ptr %ai.addr, align 4
  %add11 = add nsw i32 %11, 1
  call void %10(i32 noundef %add11)
  %12 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [16 x i32], ptr @picked, i64 0, i64 %idxprom12
  store i32 0, ptr %arrayidx13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @decide(i32 noundef %ai) #0 {
entry:
  %ai.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %ap = alloca ptr, align 8
  store i32 %ai, ptr %ai.addr, align 4
  %0 = load i32, ptr %ai.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %ap, align 8
  store i32 0, ptr %i, align 4
  store i32 34, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ap, align 8
  %indexes = getelementptr inbounds %struct.Action, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32], ptr %indexes, i64 0, i64 %idxprom1
  %4 = load i32, ptr %arrayidx2, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [16 x i32], ptr @a, i64 0, i64 %idxprom3
  %5 = load i32, ptr %arrayidx4, align 4
  %6 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %6, %5
  store i32 %sub, ptr %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %n, align 4
  %call = call i32 @choiceSearch(i32 noundef %8)
  store i32 %call, ptr %i, align 4
  %9 = load i32, ptr %i, align 4
  %cmp5 = icmp eq i32 %9, -1
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %10 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [16 x i32], ptr @picked, i64 0, i64 %idxprom6
  %11 = load i32, ptr %arrayidx7, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.end
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i32, ptr %n, align 4
  %13 = load ptr, ptr %ap, align 8
  %pos = getelementptr inbounds %struct.Action, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %pos, align 8
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [16 x i32], ptr @a, i64 0, i64 %idxprom8
  store i32 %12, ptr %arrayidx9, align 4
  %15 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [16 x i32], ptr @picked, i64 0, i64 %idxprom10
  store i32 1, ptr %arrayidx11, align 4
  %16 = load i32, ptr %ai.addr, align 4
  %add = add nsw i32 %16, 1
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom12
  %action = getelementptr inbounds %struct.Action, ptr %arrayidx13, i32 0, i32 1
  %17 = load ptr, ptr %action, align 8
  %18 = load i32, ptr %ai.addr, align 4
  %add14 = add nsw i32 %18, 1
  call void %17(i32 noundef %add14)
  %19 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [16 x i32], ptr @picked, i64 0, i64 %idxprom15
  store i32 0, ptr %arrayidx16, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @validate(i32 noundef %ai) #0 {
entry:
  %ai.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %ap = alloca ptr, align 8
  store i32 %ai, ptr %ai.addr, align 4
  %0 = load i32, ptr %ai.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %ap, align 8
  store i32 0, ptr %i, align 4
  store i32 34, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ap, align 8
  %indexes = getelementptr inbounds %struct.Action, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32], ptr %indexes, i64 0, i64 %idxprom1
  %4 = load i32, ptr %arrayidx2, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [16 x i32], ptr @a, i64 0, i64 %idxprom3
  %5 = load i32, ptr %arrayidx4, align 4
  %6 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %6, %5
  store i32 %sub, ptr %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %n, align 4
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %9 = load i32, ptr %ai.addr, align 4
  %add = add nsw i32 %9, 1
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [19 x %struct.Action], ptr @actions, i64 0, i64 %idxprom6
  %action = getelementptr inbounds %struct.Action, ptr %arrayidx7, i32 0, i32 1
  %10 = load ptr, ptr %action, align 8
  %11 = load i32, ptr %ai.addr, align 4
  %add8 = add nsw i32 %11, 1
  call void %10(i32 noundef %add8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @solution(i32 noundef %ai) #0 {
entry:
  %ai.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %sep = alloca i8, align 1
  store i32 %ai, ptr %ai.addr, align 4
  %0 = load i32, ptr @solution.count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @solution.count, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %inc)
  store i32 0, ptr %i, align 4
  store i32 1, ptr %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %c, align 4
  %cmp1 = icmp eq i32 %2, 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i8 10, ptr %sep, align 1
  store i32 0, ptr %c, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  store i8 32, ptr %sep, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr @a, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load i8, ptr %sep, align 1
  %conv = sext i8 %5 to i32
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %inc3 = add nsw i32 %6, 1
  store i32 %inc3, ptr %i, align 4
  %7 = load i32, ptr %c, align 4
  %inc4 = add nsw i32 %7, 1
  store i32 %inc4, ptr %c, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @choiceSearch(i32 noundef %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr @choices, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %3 = load i32, ptr %c.addr, align 4
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  store i32 %4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
