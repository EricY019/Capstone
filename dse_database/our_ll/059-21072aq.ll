; ModuleID = 'code/059-21072aq.c'
source_filename = "code/059-21072aq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32, i8** }

@quest_base = internal global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), align 8
@data = internal constant [24 x %struct.list] [%struct.list { i32 24, i8** getelementptr inbounds ([24 x i8*], [24 x i8*]* @.compoundliteral, i32 0, i32 0) }, %struct.list { i32 25, i8** getelementptr inbounds ([25 x i8*], [25 x i8*]* @.compoundliteral.41, i32 0, i32 0) }, %struct.list { i32 4, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @.compoundliteral.46, i32 0, i32 0) }, %struct.list { i32 26, i8** getelementptr inbounds ([26 x i8*], [26 x i8*]* @.compoundliteral.73, i32 0, i32 0) }, %struct.list { i32 9, i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @.compoundliteral.83, i32 0, i32 0) }, %struct.list { i32 21, i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @.compoundliteral.105, i32 0, i32 0) }, %struct.list { i32 10, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @.compoundliteral.111, i32 0, i32 0) }, %struct.list { i32 6, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @.compoundliteral.118, i32 0, i32 0) }, %struct.list { i32 8, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @.compoundliteral.127, i32 0, i32 0) }, %struct.list { i32 5, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @.compoundliteral.133, i32 0, i32 0) }, %struct.list { i32 5, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @.compoundliteral.139, i32 0, i32 0) }, %struct.list { i32 5, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @.compoundliteral.145, i32 0, i32 0) }, %struct.list { i32 4, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @.compoundliteral.150, i32 0, i32 0) }, %struct.list { i32 5, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @.compoundliteral.156, i32 0, i32 0) }, %struct.list { i32 19, i8** getelementptr inbounds ([19 x i8*], [19 x i8*]* @.compoundliteral.175, i32 0, i32 0) }, %struct.list { i32 7, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @.compoundliteral.183, i32 0, i32 0) }, %struct.list { i32 1, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @.compoundliteral.185, i32 0, i32 0) }, %struct.list { i32 6, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @.compoundliteral.192, i32 0, i32 0) }, %struct.list { i32 11, i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @.compoundliteral.203, i32 0, i32 0) }, %struct.list { i32 14, i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @.compoundliteral.218, i32 0, i32 0) }, %struct.list { i32 7, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @.compoundliteral.226, i32 0, i32 0) }, %struct.list { i32 3, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @.compoundliteral.229, i32 0, i32 0) }, %struct.list { i32 10, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @.compoundliteral.240, i32 0, i32 0) }, %struct.list { i32 24, i8** getelementptr inbounds ([25 x i8*], [25 x i8*]* @.compoundliteral.256, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"|V wants you to |D.\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"Wh\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"Th\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"Ch\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"Sh\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"Zh\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"|B|F\00", align 1
@.compoundliteral = internal constant [24 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)], align 8
@.str.26 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"Ae\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"Ee\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"Ie\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"Oe\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"Ue\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"Oo\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"Au\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"Oi\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"Ai\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"Ea\00", align 1
@.compoundliteral.41 = internal constant [25 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0)], align 8
@.str.42 = private unnamed_addr constant [9 x i8] c"powerful\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"magical\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"sacred\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"valuable\00", align 1
@.compoundliteral.46 = internal constant [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0)], align 8
@.str.47 = private unnamed_addr constant [31 x i8] c"expose the corruption of |W |Q\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"assassinate |W |Q\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"steal |N from |R\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"recover |N from |R\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"transport |N to |U\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"hunt down and capture |R\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"hunt down and kill |R\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"explore |U\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"slay |R and retrieve |N\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"slay |R and destroy |N\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"rescue |W |Q from |R\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"investigate a star which fell into |U\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"thwart the monstrous plan of |R\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"find and explore |U\00", align 1
@.str.61 = private unnamed_addr constant [48 x i8] c"discover who is assassinating his peers and why\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"escort |I safely to |U\00", align 1
@.str.63 = private unnamed_addr constant [31 x i8] c"recover and destroy |N from |U\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"deliver |N to |Q in |U\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"travel to |U and retrieve |N\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"search |U for treasure\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"collect |S |J from |U\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"kill |S of the nearby |E\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"travel to |U and defeat |R\00", align 1
@.str.70 = private unnamed_addr constant [33 x i8] c"make peace with the people of |U\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"aid the people of |U against |R\00", align 1
@.str.72 = private unnamed_addr constant [38 x i8] c"find out what killed all the |E in |U\00", align 1
@.compoundliteral.73 = internal constant [26 x i8*] [i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.72, i32 0, i32 0)], align 8
@.str.74 = private unnamed_addr constant [6 x i8] c"bears\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"rabbits\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"deer\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"fish\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"birds\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"wolves\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"foxes\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"pigs\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"boars\00", align 1
@.compoundliteral.83 = internal constant [9 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0)], align 8
@.str.84 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"th\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"ng\00", align 1
@.compoundliteral.105 = internal constant [21 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0)], align 8
@.str.106 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"|F\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"|F|X\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"|F|X|G\00", align 1
@.compoundliteral.111 = internal constant [10 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0)], align 8
@.str.112 = private unnamed_addr constant [9 x i8] c"murderer\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"scoundrel\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"thief\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"scalawag\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"vandal\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.compoundliteral.118 = internal constant [6 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0)], align 8
@.str.119 = private unnamed_addr constant [22 x i8] c"a caravan of |C goods\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"a locked chest\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"his daughter\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"his son\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"his family\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"her daughter\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"her son\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"her family\00", align 1
@.compoundliteral.127 = internal constant [8 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i32 0, i32 0)], align 8
@.str.128 = private unnamed_addr constant [8 x i8] c"berries\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"hides\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"feathers\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"gemstones\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"ingots\00", align 1
@.compoundliteral.133 = internal constant [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i32 0, i32 0)], align 8
@.str.134 = private unnamed_addr constant [7 x i8] c"Tundra\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"Savannah\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"Woodlands\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"Caldera\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"|L\00", align 1
@.compoundliteral.139 = internal constant [5 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i32 0, i32 0)], align 8
@.str.140 = private unnamed_addr constant [4 x i8] c"Sea\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"Swamp\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"Forest\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"Mountains\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"Cavern\00", align 1
@.compoundliteral.145 = internal constant [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.144, i32 0, i32 0)], align 8
@.str.146 = private unnamed_addr constant [9 x i8] c"warlocks\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"cultists\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"theives\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"traitors\00", align 1
@.compoundliteral.150 = internal constant [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.149, i32 0, i32 0)], align 8
@.str.151 = private unnamed_addr constant [16 x i8] c"the Relic of |Q\00", align 1
@.str.152 = private unnamed_addr constant [16 x i8] c"the Sword of |Q\00", align 1
@.str.153 = private unnamed_addr constant [17 x i8] c"the Amulet of |Q\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"a |C device\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"a |C artifact\00", align 1
@.compoundliteral.156 = internal constant [5 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.155, i32 0, i32 0)], align 8
@.str.157 = private unnamed_addr constant [6 x i8] c"shady\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"wealthy\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"cryptic\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"mysterious\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"dying\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"disgruntled\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"hoary\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"skittish\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"frantic\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"worried\00", align 1
@.str.167 = private unnamed_addr constant [7 x i8] c"vacant\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"crippled\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"stocky\00", align 1
@.str.170 = private unnamed_addr constant [11 x i8] c"peg-legged\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"one-eyed\00", align 1
@.str.172 = private unnamed_addr constant [10 x i8] c"lecherous\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"destitute\00", align 1
@.str.174 = private unnamed_addr constant [8 x i8] c"ghostly\00", align 1
@.compoundliteral.175 = internal constant [19 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.174, i32 0, i32 0)], align 8
@.str.176 = private unnamed_addr constant [6 x i8] c"Demon\00", align 1
@.str.177 = private unnamed_addr constant [7 x i8] c"Dragon\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"Vampire\00", align 1
@.str.179 = private unnamed_addr constant [7 x i8] c"Goblin\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"Orc\00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"Troll\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"Kobold\00", align 1
@.compoundliteral.183 = internal constant [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.182, i32 0, i32 0)], align 8
@.str.184 = private unnamed_addr constant [11 x i8] c"|A|X|F|X|G\00", align 1
@.compoundliteral.185 = internal constant [1 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i32 0, i32 0)], align 8
@.str.186 = private unnamed_addr constant [14 x i8] c"|Q, the |P |W\00", align 1
@.str.187 = private unnamed_addr constant [8 x i8] c"a rival\00", align 1
@.str.188 = private unnamed_addr constant [10 x i8] c"the |H |Q\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"the |M of |Q\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"the |P of |U\00", align 1
@.str.191 = private unnamed_addr constant [26 x i8] c"the pirates of the |Q Sea\00", align 1
@.compoundliteral.192 = internal constant [6 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.191, i32 0, i32 0)], align 8
@.str.193 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.194 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.195 = private unnamed_addr constant [3 x i8] c"25\00", align 1
@.str.196 = private unnamed_addr constant [3 x i8] c"40\00", align 1
@.str.197 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@.str.198 = private unnamed_addr constant [3 x i8] c"75\00", align 1
@.str.199 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.200 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@.str.201 = private unnamed_addr constant [4 x i8] c"250\00", align 1
@.str.202 = private unnamed_addr constant [4 x i8] c"500\00", align 1
@.compoundliteral.203 = internal constant [11 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.199, i32 0, i32 0)], align 8
@.str.204 = private unnamed_addr constant [11 x i8] c"aristocrat\00", align 1
@.str.205 = private unnamed_addr constant [6 x i8] c"dwarf\00", align 1
@.str.206 = private unnamed_addr constant [4 x i8] c"elf\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"ex-adventurer\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"farmer\00", align 1
@.str.209 = private unnamed_addr constant [6 x i8] c"gnome\00", align 1
@.str.210 = private unnamed_addr constant [10 x i8] c"mercenary\00", align 1
@.str.211 = private unnamed_addr constant [9 x i8] c"merchant\00", align 1
@.str.212 = private unnamed_addr constant [8 x i8] c"peasant\00", align 1
@.str.213 = private unnamed_addr constant [7 x i8] c"pirate\00", align 1
@.str.214 = private unnamed_addr constant [5 x i8] c"sage\00", align 1
@.str.215 = private unnamed_addr constant [9 x i8] c"traveler\00", align 1
@.str.216 = private unnamed_addr constant [9 x i8] c"vagabond\00", align 1
@.str.217 = private unnamed_addr constant [7 x i8] c"wizard\00", align 1
@.compoundliteral.218 = internal constant [14 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.217, i32 0, i32 0)], align 8
@.str.219 = private unnamed_addr constant [6 x i8] c"|Q |Q\00", align 1
@.str.220 = private unnamed_addr constant [10 x i8] c"the |Q |K\00", align 1
@.str.221 = private unnamed_addr constant [13 x i8] c"the |L of |Q\00", align 1
@.str.222 = private unnamed_addr constant [8 x i8] c"Lake |Q\00", align 1
@.str.223 = private unnamed_addr constant [15 x i8] c"the town of |Q\00", align 1
@.str.224 = private unnamed_addr constant [20 x i8] c"the lost city of |Q\00", align 1
@.str.225 = private unnamed_addr constant [24 x i8] c"the ancient ruins of |Q\00", align 1
@.compoundliteral.226 = internal constant [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.225, i32 0, i32 0)], align 8
@.str.227 = private unnamed_addr constant [6 x i8] c"|W |Q\00", align 1
@.str.228 = private unnamed_addr constant [17 x i8] c"A |O |T named |Q\00", align 1
@.compoundliteral.229 = internal constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.228, i32 0, i32 0)], align 8
@.str.230 = private unnamed_addr constant [5 x i8] c"Lord\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"Lady\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"King\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"Queen\00", align 1
@.str.234 = private unnamed_addr constant [7 x i8] c"Prince\00", align 1
@.str.235 = private unnamed_addr constant [9 x i8] c"Princess\00", align 1
@.str.236 = private unnamed_addr constant [6 x i8] c"Count\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c"Countess\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"Duke\00", align 1
@.str.239 = private unnamed_addr constant [9 x i8] c"Dutchess\00", align 1
@.compoundliteral.240 = internal constant [10 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.239, i32 0, i32 0)], align 8
@.str.241 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.242 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.243 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.244 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.245 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.246 = private unnamed_addr constant [3 x i8] c"ae\00", align 1
@.str.247 = private unnamed_addr constant [3 x i8] c"ee\00", align 1
@.str.248 = private unnamed_addr constant [3 x i8] c"ie\00", align 1
@.str.249 = private unnamed_addr constant [3 x i8] c"oe\00", align 1
@.str.250 = private unnamed_addr constant [3 x i8] c"ue\00", align 1
@.str.251 = private unnamed_addr constant [3 x i8] c"oo\00", align 1
@.str.252 = private unnamed_addr constant [3 x i8] c"au\00", align 1
@.str.253 = private unnamed_addr constant [3 x i8] c"oi\00", align 1
@.str.254 = private unnamed_addr constant [3 x i8] c"ai\00", align 1
@.str.255 = private unnamed_addr constant [3 x i8] c"ea\00", align 1
@.compoundliteral.256 = internal constant [25 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.255, i32 0, i32 0)], align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_quest(i8* %buffer, i64 %len) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %start = alloca i8*, align 8
  %group = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %1 = call i8* @llvm.stacksave()
  store i8* %1, i8** %saved_stack, align 8
  %vla = alloca i8, i64 %0, align 16
  store i64 %0, i64* %__vla_expr0, align 8
  %2 = load i64, i64* %len.addr, align 8
  %vla1 = alloca i8, i64 %2, align 16
  store i64 %2, i64* %__vla_expr1, align 8
  %3 = load i64, i64* %len.addr, align 8
  %vla2 = alloca i8, i64 %3, align 16
  store i64 %3, i64* %__vla_expr2, align 8
  %4 = load i8*, i8** %buffer.addr, align 8
  %5 = load i8*, i8** @quest_base, align 8
  %6 = load i64, i64* %len.addr, align 8
  %call = call i8* @strncpy(i8* %4, i8* %5, i64 %6) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %7 = load i8*, i8** %buffer.addr, align 8
  %call3 = call i8* @strchr(i8* %7, i32 124) #6
  store i8* %call3, i8** %start, align 8
  %tobool = icmp ne i8* %call3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %start, align 8
  %9 = load i8*, i8** %buffer.addr, align 8
  %cmp = icmp eq i8* %8, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, i8* %vla, i64 0
  store i8 0, i8* %arrayidx, align 16
  br label %if.end

if.else:                                          ; preds = %while.body
  %10 = load i8*, i8** %buffer.addr, align 8
  %11 = load i8*, i8** %start, align 8
  %12 = load i8*, i8** %buffer.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call4 = call i8* @strncpy(i8* %vla, i8* %10, i64 %sub.ptr.sub) #5
  %13 = load i8*, i8** %start, align 8
  %14 = load i8*, i8** %buffer.addr, align 8
  %sub.ptr.lhs.cast5 = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast6 = ptrtoint i8* %14 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %arrayidx8 = getelementptr inbounds i8, i8* %vla, i64 %sub.ptr.sub7
  store i8 0, i8* %arrayidx8, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i8*, i8** %start, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx9, align 1
  %conv = sext i8 %16 to i32
  %sub = sub nsw i32 %conv, 65
  store i32 %sub, i32* %group, align 4
  %17 = load i8*, i8** %start, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i64, i64* %len.addr, align 8
  %call10 = call i8* @strncpy(i8* %vla1, i8* %add.ptr, i64 %18) #5
  %19 = load i32, i32* %group, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds [24 x %struct.list], [24 x %struct.list]* @data, i64 0, i64 %idxprom
  %data = getelementptr inbounds %struct.list, %struct.list* %arrayidx11, i32 0, i32 1
  %20 = load i8**, i8*** %data, align 8
  %21 = load i32, i32* %group, align 4
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds [24 x %struct.list], [24 x %struct.list]* @data, i64 0, i64 %idxprom12
  %count = getelementptr inbounds %struct.list, %struct.list* %arrayidx13, i32 0, i32 0
  %22 = load i32, i32* %count, align 16
  %call14 = call i32 @rand_int(i32 %22)
  %idxprom15 = sext i32 %call14 to i64
  %arrayidx16 = getelementptr inbounds i8*, i8** %20, i64 %idxprom15
  %23 = load i8*, i8** %arrayidx16, align 8
  %24 = load i64, i64* %len.addr, align 8
  %call17 = call i8* @strncpy(i8* %vla2, i8* %23, i64 %24) #5
  %25 = load i8*, i8** %buffer.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %arrayidx18, align 1
  %26 = load i8*, i8** %buffer.addr, align 8
  %27 = load i64, i64* %len.addr, align 8
  %call19 = call i8* @strncat(i8* %26, i8* %vla, i64 %27) #5
  %28 = load i8*, i8** %buffer.addr, align 8
  %29 = load i64, i64* %len.addr, align 8
  %30 = load i8*, i8** %buffer.addr, align 8
  %call20 = call i64 @strlen(i8* %30) #6
  %sub21 = sub i64 %29, %call20
  %call22 = call i8* @strncat(i8* %28, i8* %vla2, i64 %sub21) #5
  %31 = load i8*, i8** %buffer.addr, align 8
  %32 = load i64, i64* %len.addr, align 8
  %33 = load i8*, i8** %buffer.addr, align 8
  %call23 = call i64 @strlen(i8* %33) #6
  %sub24 = sub i64 %32, %call23
  %call25 = call i8* @strncat(i8* %31, i8* %vla1, i64 %sub24) #5
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %34 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %34)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rand_int(i32 %bound) #0 {
entry:
  %bound.addr = alloca i32, align 4
  store i32 %bound, i32* %bound.addr, align 4
  %call = call i64 @random() #5
  %0 = load i32, i32* %bound.addr, align 4
  %conv = sext i32 %0 to i64
  %rem = srem i64 %call, %conv
  %conv1 = trunc i64 %rem to i32
  ret i32 %conv1
}

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %saved_stack = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i64 @time(i64* null) #5
  %conv = trunc i64 %call to i32
  call void @srandom(i32 %conv) #5
  %0 = call i8* @llvm.stacksave()
  store i8* %0, i8** %saved_stack, align 8
  %vla = alloca i8, i64 65536, align 16
  call void @generate_quest(i8* %vla, i64 65536)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %vla)
  store i32 0, i32* %retval, align 4
  %1 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %1)
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind
declare dso_local void @srandom(i32) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nounwind
declare dso_local i64 @random() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
