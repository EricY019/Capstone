; ModuleID = './code/059-21072aq.c'
source_filename = "./code/059-21072aq.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.list = type { i32, ptr }

@quest_base = internal global ptr @.str.1, align 8
@data = internal constant [24 x %struct.list] [%struct.list { i32 24, ptr @.compoundliteral }, %struct.list { i32 25, ptr @.compoundliteral.41 }, %struct.list { i32 4, ptr @.compoundliteral.46 }, %struct.list { i32 26, ptr @.compoundliteral.73 }, %struct.list { i32 9, ptr @.compoundliteral.83 }, %struct.list { i32 21, ptr @.compoundliteral.105 }, %struct.list { i32 10, ptr @.compoundliteral.111 }, %struct.list { i32 6, ptr @.compoundliteral.118 }, %struct.list { i32 8, ptr @.compoundliteral.127 }, %struct.list { i32 5, ptr @.compoundliteral.133 }, %struct.list { i32 5, ptr @.compoundliteral.139 }, %struct.list { i32 5, ptr @.compoundliteral.145 }, %struct.list { i32 4, ptr @.compoundliteral.150 }, %struct.list { i32 5, ptr @.compoundliteral.156 }, %struct.list { i32 19, ptr @.compoundliteral.175 }, %struct.list { i32 7, ptr @.compoundliteral.183 }, %struct.list { i32 1, ptr @.compoundliteral.185 }, %struct.list { i32 6, ptr @.compoundliteral.192 }, %struct.list { i32 11, ptr @.compoundliteral.203 }, %struct.list { i32 14, ptr @.compoundliteral.218 }, %struct.list { i32 7, ptr @.compoundliteral.226 }, %struct.list { i32 3, ptr @.compoundliteral.229 }, %struct.list { i32 10, ptr @.compoundliteral.240 }, %struct.list { i32 24, ptr @.compoundliteral.256 }], align 8
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
@.compoundliteral = internal constant [24 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], align 8
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
@.compoundliteral.41 = internal constant [25 x ptr] [ptr @.str.26, ptr @.str.26, ptr @.str.26, ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.28, ptr @.str.28, ptr @.str.28, ptr @.str.29, ptr @.str.29, ptr @.str.29, ptr @.str.30, ptr @.str.30, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], align 8
@.str.42 = private unnamed_addr constant [9 x i8] c"powerful\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"magical\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"sacred\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"valuable\00", align 1
@.compoundliteral.46 = internal constant [4 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], align 8
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
@.compoundliteral.73 = internal constant [26 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], align 8
@.str.74 = private unnamed_addr constant [6 x i8] c"bears\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"rabbits\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"deer\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"fish\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"birds\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"wolves\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"foxes\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"pigs\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"boars\00", align 1
@.compoundliteral.83 = internal constant [9 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], align 8
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
@.compoundliteral.105 = internal constant [21 x ptr] [ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], align 8
@.str.106 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"|F\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"|F|X\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"|F|X|G\00", align 1
@.compoundliteral.111 = internal constant [10 x ptr] [ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.109, ptr @.str.110], align 8
@.str.112 = private unnamed_addr constant [9 x i8] c"murderer\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"scoundrel\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"thief\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"scalawag\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"vandal\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.compoundliteral.118 = internal constant [6 x ptr] [ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117], align 8
@.str.119 = private unnamed_addr constant [22 x i8] c"a caravan of |C goods\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"a locked chest\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"his daughter\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"his son\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"his family\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"her daughter\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"her son\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"her family\00", align 1
@.compoundliteral.127 = internal constant [8 x ptr] [ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], align 8
@.str.128 = private unnamed_addr constant [8 x i8] c"berries\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"hides\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"feathers\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"gemstones\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"ingots\00", align 1
@.compoundliteral.133 = internal constant [5 x ptr] [ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132], align 8
@.str.134 = private unnamed_addr constant [7 x i8] c"Tundra\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"Savannah\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"Woodlands\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"Caldera\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"|L\00", align 1
@.compoundliteral.139 = internal constant [5 x ptr] [ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], align 8
@.str.140 = private unnamed_addr constant [4 x i8] c"Sea\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"Swamp\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"Forest\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"Mountains\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"Cavern\00", align 1
@.compoundliteral.145 = internal constant [5 x ptr] [ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144], align 8
@.str.146 = private unnamed_addr constant [9 x i8] c"warlocks\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"cultists\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"theives\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"traitors\00", align 1
@.compoundliteral.150 = internal constant [4 x ptr] [ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149], align 8
@.str.151 = private unnamed_addr constant [16 x i8] c"the Relic of |Q\00", align 1
@.str.152 = private unnamed_addr constant [16 x i8] c"the Sword of |Q\00", align 1
@.str.153 = private unnamed_addr constant [17 x i8] c"the Amulet of |Q\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"a |C device\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"a |C artifact\00", align 1
@.compoundliteral.156 = internal constant [5 x ptr] [ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155], align 8
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
@.compoundliteral.175 = internal constant [19 x ptr] [ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.160, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174], align 8
@.str.176 = private unnamed_addr constant [6 x i8] c"Demon\00", align 1
@.str.177 = private unnamed_addr constant [7 x i8] c"Dragon\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"Vampire\00", align 1
@.str.179 = private unnamed_addr constant [7 x i8] c"Goblin\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"Orc\00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"Troll\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"Kobold\00", align 1
@.compoundliteral.183 = internal constant [7 x ptr] [ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182], align 8
@.str.184 = private unnamed_addr constant [11 x i8] c"|A|X|F|X|G\00", align 1
@.compoundliteral.185 = internal constant [1 x ptr] [ptr @.str.184], align 8
@.str.186 = private unnamed_addr constant [14 x i8] c"|Q, the |P |W\00", align 1
@.str.187 = private unnamed_addr constant [8 x i8] c"a rival\00", align 1
@.str.188 = private unnamed_addr constant [10 x i8] c"the |H |Q\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"the |M of |Q\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"the |P of |U\00", align 1
@.str.191 = private unnamed_addr constant [26 x i8] c"the pirates of the |Q Sea\00", align 1
@.compoundliteral.192 = internal constant [6 x ptr] [ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191], align 8
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
@.compoundliteral.203 = internal constant [11 x ptr] [ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.199], align 8
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
@.compoundliteral.218 = internal constant [14 x ptr] [ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217], align 8
@.str.219 = private unnamed_addr constant [6 x i8] c"|Q |Q\00", align 1
@.str.220 = private unnamed_addr constant [10 x i8] c"the |Q |K\00", align 1
@.str.221 = private unnamed_addr constant [13 x i8] c"the |L of |Q\00", align 1
@.str.222 = private unnamed_addr constant [8 x i8] c"Lake |Q\00", align 1
@.str.223 = private unnamed_addr constant [15 x i8] c"the town of |Q\00", align 1
@.str.224 = private unnamed_addr constant [20 x i8] c"the lost city of |Q\00", align 1
@.str.225 = private unnamed_addr constant [24 x i8] c"the ancient ruins of |Q\00", align 1
@.compoundliteral.226 = internal constant [7 x ptr] [ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225], align 8
@.str.227 = private unnamed_addr constant [6 x i8] c"|W |Q\00", align 1
@.str.228 = private unnamed_addr constant [17 x i8] c"A |O |T named |Q\00", align 1
@.compoundliteral.229 = internal constant [3 x ptr] [ptr @.str.227, ptr @.str.228, ptr @.str.228], align 8
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
@.compoundliteral.240 = internal constant [10 x ptr] [ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239], align 8
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
@.compoundliteral.256 = internal constant [25 x ptr] [ptr @.str.241, ptr @.str.241, ptr @.str.241, ptr @.str.242, ptr @.str.242, ptr @.str.242, ptr @.str.243, ptr @.str.243, ptr @.str.243, ptr @.str.244, ptr @.str.244, ptr @.str.244, ptr @.str.245, ptr @.str.245, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @generate_quest(ptr noundef %buffer, i64 noundef %len) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %start = alloca ptr, align 8
  %group = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  %0 = load i64, ptr %len.addr, align 8
  %1 = call ptr @llvm.stacksave.p0()
  store ptr %1, ptr %saved_stack, align 8
  %vla = alloca i8, i64 %0, align 1
  store i64 %0, ptr %__vla_expr0, align 8
  %2 = load i64, ptr %len.addr, align 8
  %vla1 = alloca i8, i64 %2, align 1
  store i64 %2, ptr %__vla_expr1, align 8
  %3 = load i64, ptr %len.addr, align 8
  %vla2 = alloca i8, i64 %3, align 1
  store i64 %3, ptr %__vla_expr2, align 8
  %4 = load ptr, ptr %buffer.addr, align 8
  %5 = load ptr, ptr @quest_base, align 8
  %6 = load i64, ptr %len.addr, align 8
  %7 = load ptr, ptr %buffer.addr, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %7, i1 false, i1 true, i1 false)
  %call = call ptr @__strncpy_chk(ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %8) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %9 = load ptr, ptr %buffer.addr, align 8
  %call3 = call ptr @strchr(ptr noundef %9, i32 noundef 124) #5
  store ptr %call3, ptr %start, align 8
  %tobool = icmp ne ptr %call3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %start, align 8
  %11 = load ptr, ptr %buffer.addr, align 8
  %cmp = icmp eq ptr %10, %11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, ptr %vla, i64 0
  store i8 0, ptr %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %while.body
  %12 = load ptr, ptr %buffer.addr, align 8
  %13 = load ptr, ptr %start, align 8
  %14 = load ptr, ptr %buffer.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %15 = call i64 @llvm.objectsize.i64.p0(ptr %vla, i1 false, i1 true, i1 false)
  %call4 = call ptr @__strncpy_chk(ptr noundef %vla, ptr noundef %12, i64 noundef %sub.ptr.sub, i64 noundef %15) #5
  %16 = load ptr, ptr %start, align 8
  %17 = load ptr, ptr %buffer.addr, align 8
  %sub.ptr.lhs.cast5 = ptrtoint ptr %16 to i64
  %sub.ptr.rhs.cast6 = ptrtoint ptr %17 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %arrayidx8 = getelementptr inbounds i8, ptr %vla, i64 %sub.ptr.sub7
  store i8 0, ptr %arrayidx8, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load ptr, ptr %start, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %18, i64 1
  %19 = load i8, ptr %arrayidx9, align 1
  %conv = sext i8 %19 to i32
  %sub = sub nsw i32 %conv, 65
  store i32 %sub, ptr %group, align 4
  %20 = load ptr, ptr %start, align 8
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 2
  %21 = load i64, ptr %len.addr, align 8
  %22 = call i64 @llvm.objectsize.i64.p0(ptr %vla1, i1 false, i1 true, i1 false)
  %call10 = call ptr @__strncpy_chk(ptr noundef %vla1, ptr noundef %add.ptr, i64 noundef %21, i64 noundef %22) #5
  %23 = load i32, ptr %group, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx11 = getelementptr inbounds [24 x %struct.list], ptr @data, i64 0, i64 %idxprom
  %data = getelementptr inbounds %struct.list, ptr %arrayidx11, i32 0, i32 1
  %24 = load ptr, ptr %data, align 8
  %25 = load i32, ptr %group, align 4
  %idxprom12 = sext i32 %25 to i64
  %arrayidx13 = getelementptr inbounds [24 x %struct.list], ptr @data, i64 0, i64 %idxprom12
  %count = getelementptr inbounds %struct.list, ptr %arrayidx13, i32 0, i32 0
  %26 = load i32, ptr %count, align 8
  %call14 = call i32 @rand_int(i32 noundef %26)
  %idxprom15 = sext i32 %call14 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %24, i64 %idxprom15
  %27 = load ptr, ptr %arrayidx16, align 8
  %28 = load i64, ptr %len.addr, align 8
  %29 = call i64 @llvm.objectsize.i64.p0(ptr %vla2, i1 false, i1 true, i1 false)
  %call17 = call ptr @__strncpy_chk(ptr noundef %vla2, ptr noundef %27, i64 noundef %28, i64 noundef %29) #5
  %30 = load ptr, ptr %buffer.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %30, i64 0
  store i8 0, ptr %arrayidx18, align 1
  %31 = load ptr, ptr %buffer.addr, align 8
  %32 = load i64, ptr %len.addr, align 8
  %33 = load ptr, ptr %buffer.addr, align 8
  %34 = call i64 @llvm.objectsize.i64.p0(ptr %33, i1 false, i1 true, i1 false)
  %call19 = call ptr @__strncat_chk(ptr noundef %31, ptr noundef %vla, i64 noundef %32, i64 noundef %34) #5
  %35 = load ptr, ptr %buffer.addr, align 8
  %36 = load i64, ptr %len.addr, align 8
  %37 = load ptr, ptr %buffer.addr, align 8
  %call20 = call i64 @strlen(ptr noundef %37) #5
  %sub21 = sub i64 %36, %call20
  %38 = load ptr, ptr %buffer.addr, align 8
  %39 = call i64 @llvm.objectsize.i64.p0(ptr %38, i1 false, i1 true, i1 false)
  %call22 = call ptr @__strncat_chk(ptr noundef %35, ptr noundef %vla2, i64 noundef %sub21, i64 noundef %39) #5
  %40 = load ptr, ptr %buffer.addr, align 8
  %41 = load i64, ptr %len.addr, align 8
  %42 = load ptr, ptr %buffer.addr, align 8
  %call23 = call i64 @strlen(ptr noundef %42) #5
  %sub24 = sub i64 %41, %call23
  %43 = load ptr, ptr %buffer.addr, align 8
  %44 = call i64 @llvm.objectsize.i64.p0(ptr %43, i1 false, i1 true, i1 false)
  %call25 = call ptr @__strncat_chk(ptr noundef %40, ptr noundef %vla1, i64 noundef %sub24, i64 noundef %44) #5
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %45 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %45)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nounwind
declare ptr @strchr(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @rand_int(i32 noundef %bound) #0 {
entry:
  %bound.addr = alloca i32, align 4
  store i32 %bound, ptr %bound.addr, align 4
  %call = call i64 @random()
  %0 = load i32, ptr %bound.addr, align 4
  %conv = sext i32 %0 to i64
  %rem = srem i64 %call, %conv
  %conv1 = trunc i64 %rem to i32
  ret i32 %conv1
}

; Function Attrs: nounwind
declare ptr @__strncat_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %saved_stack = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srandom(i32 noundef %conv)
  %0 = call ptr @llvm.stacksave.p0()
  store ptr %0, ptr %saved_stack, align 8
  %vla = alloca i8, i64 65536, align 1
  call void @generate_quest(ptr noundef %vla, i64 noundef 65536)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %vla)
  store i32 0, ptr %retval, align 4
  %1 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %1)
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

declare void @srandom(i32 noundef) #4

declare i64 @time(ptr noundef) #4

declare i32 @printf(ptr noundef, ...) #4

declare i64 @random() #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
