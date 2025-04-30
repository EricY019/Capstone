######################################################################################
### generates the graph to be processed with HARP                                  ###
### requires: ProGraML [ICML'21]                                                   ###
######################################################################################


import os
import networkx as nx
import json
import shutil
from os.path import join, abspath, basename, exists, dirname, isfile
from subprocess import Popen, PIPE
from collections import OrderedDict
from copy import deepcopy
import ast
from pprint import pprint
from shutil import copy
from glob import glob, iglob
import csv
import re
import programl

from utils import create_dir_if_not_exists, get_root_path, natural_keys


PRAGMA_POSITION = {'PIPELINE': 0, 'TILE': 2, 'PARALLEL': 1}
# BENCHMARK = 'machsuite'
# BENCHMARK = 'poly'
BENCHMARK = 'our_ll'
type_graph = 'harp' 
processed_gexf_folder = join(get_root_path(), f'{type_graph}/{BENCHMARK}/processed')
auxiliary_node_gexf_folder = join(get_root_path(), f'{type_graph}/{BENCHMARK}/processed/extended-pseudo-block-base/')
# MACHSUITE_KERNEL = ['aes', 'gemm-blocked', 'gemm-ncubed', 'spmv-crs', 'spmv-ellpack', 'stencil_stencil2d',
#                     'nw', 'md', 'stencil-3d']

# poly_KERNEL = ['2mm', '3mm', 'adi', 'atax', 'bicg', 'bicg-large', 'covariance', 'doitgen', 
#                'doitgen-red', 'fdtd-2d', 'fdtd-2d-large', 'gemm-p', 'gemm-p-large', 'gemver', 
#                'gesummv', 'heat-3d', 'jacobi-1d', 'jacobi-2d', 'mvt', 'seidel-2d', 'symm', 
#                'symm-opt', 'syrk', 'syr2k', 'trmm', 'trmm-opt', 'mvt-medium', 'correlation',
#                'atax-medium', 'bicg-medium', 'gesummv-medium', 'symm-opt-medium',
#                'gemver-medium']
# ALL_KERNEL = {'machsuite': MACHSUITE_KERNEL, 'poly': poly_KERNEL}

# OUR_LL = ["000-1178select-sort", "000-12636thread", "000-15547exerc09", "000-29394run34", "000-35499main", "000-6282tester-5", "000-7470thread", "001-15285problem7", "001-21665rain", "001-27084p270_sleep2_setjmp", "001-35337questionTwo", "001-960725", "002-1248302mutualExclusionWithSem", "003-15874Tarea41", "003-17973insertion_sort", "003-27583clock", "003-2944556_merge_intervals", "003-32982realloc", "003-5730signaldemo1", "003-5965christmas_tree", "004-19423jit-reader-execd", "004-25993val-prof-4", "004-26230player1", "004-27100cmdLine", "004-32098threads", "004-4020test", "005-14858D3DC", "005-21754itoan", "005-7068echo", "005-8796lis", "005-9009tt", "005-9841task3", "006-14941mamemaki", "007-14480vla-stub", "007-31877compile-print", "008-28943infcall-input", "008-29214vrp1", "008-29303pr70688", "008-30047mythread2", "008-3866tmpnam", "008-4370ReplaceBlank", "009-14187nofield", "009-20916bubble_sort", "009-21072link_list", "009-2796disasm-end-cu-1", "009-28727mtdm", "009-297486", "009-8719pr11022", "010-25642tst-definitions", "010-27366problem2", "010-2826array", "011-29480py-pp-maint", "012-18647kernels_async", "012-18959watch-bitfields", "012-25564sra-14", "012-6739qt-faststart", "012-7113rand18", "013-1096hook-stop", "013-25353Euler_Problem-038", "013-6163bytetostring", "013-7468pr86714", "013-8067millipede", "014-2796850", "014-5010test-atomic_store", "015-21469sigchld", "015-22699multiple", "015-22869task_4", "015-22880memory-stress", "015-27833locked_vs_unlocked2", "015-35357test_tile", "016-10867signal_test", "016-22341mkconv", "016-2341test", "016-2344nbcd_abcd_sbcd", "016-33539shell_sort2", "016-34754env2", "016-6021localVarsLoop", "017-11584pointers_loop_true_assert", "017-19342task_5", "017-241bitfld-4", "017-32890pth_detached", "017-4843test7", "018-1674mem", "018-20920py-pp-registration", "018-28578all_sorting_algorithms", "019-13062fahr_for", "019-14152init", "019-27946workbeast", "019-33792bigint", "019-33804p1081", "020-24579del", "021-13252translator", "021-15858biggest_number_of_array", "021-17632task_2", "021-20657exemple_malloc_1", "021-7166monkey", "022-22876ftrace", "022-33504test_swab", "022-926300621-nl_endif", "023-20852disp-step-vfork", "023-30037pe18", "023-32585py-arch", "024-12082week2_day1_maopao", "024-21138fahr_define", "024-27020threadtest", "024-29015continue-all-already-running", "024-5866extebdsfdf2vfp_test", "025-15913isspace", "025-644gdb_example", "026-32605ex03_40", "027-12319infin", "027-14045ex7", "027-26190NetBSD_loop", "027-26679finvTable", "027-28157val-prof-6", "027-28741main", "027-29273ll_cycle", "027-2954ex13", "027-7716watch-vfork", "028-10344switch-threads", "028-17195main", "028-18541step-over-vfork", "028-24638pr97695", "028-34626Exercise-2-6", "029-10108gdb1821", "029-17241hilosyvariables2", "029-2070120061031-1", "029-28187pthread_exit", "029-7574realloc", "029-7910dummy_main", "030-23137p073", "030-7985gomp", "031-12718select_sort", "031-12859my_test", "031-15476rand_decay_average", "031-18745urandom", "031-22590exemple_argv", "031-6688deep", "032-10353pointer", "032-16238reverse", "032-22957manythreads", "033-15392fizzbuz", "033-16155vbetables-gen", "033-91201creatingThreads", "034-10339interrupt-noterm", "034-1229crazy-swap", "034-16301breakpoint-in-ro-region", "034-26697qsort", "034-29908many-types", "034-34485_per", "035-11693memfuck", "035-137141-5", "035-25137pr91190", "035-29328double_to_binary", "035-3150801", "035-4268pr91293-1", "036-11431revision1", "036-32323continue", "036-33823py-prettyprint", "037-24655bfp-test", "037-29054malloc_perf", "038-11057Peakfinder", "038-26860c2x-labels-1", "038-9527pr11022", "039-14676status-stop", "039-153013", "039-17276implref-array", "039-17506argv0-symlink", "039-19041narnia8", "039-4014fp_race", "039-9827main", "040-13264while2", "040-27018thread_test", "040-32272f-29-4-10", "041-11888array_typedef", "041-17240keywords", "041-22551py-breakpoint", "041-25768scm-math", "041-25976bitfld-7", "041-32163pattern_8", "041-4355sumit", "041-6896parse_data", "042-30905interrupt-noterm", "042-31353dga_ramdo", "043-10278newton_raphson", "043-111754741_factorial", "043-13844task_5", "043-15260006-whilestmt", "043-19775brand", "043-26859exemple_flush", "043-28598thread_create", "044-16186j014b", "044-19321sum", "044-245260X0073", "044-26825predcom-6", "044-30873heap_sort", "044-32477break-reverse", "044-33300pointers", "044-33647chansheng", "045-18778Undefined", "045-2079009", "045-22501j009a", "045-3285hold_lock", "045-365sizeof", "045-7468simple_thread", "046-15023quickSort", "046-29343py-progspace", "046-2960646_permutations", "046-32742resolve_test", "046-7581prog08b", "047-10569save-bp", "047-10949val-prof-4", "047-23130GopanReps-CAV2006-Fig1a_true-termination", "047-245951098_sequence_ij_4", "047-29636200t", "047-31117filesym", "047-32078ascii2", "047-849main", "047-8651problem_two", "048-10810scm-disasm", "048-13106binary-formats", "048-13514force-parallel-6", "048-22728beginer_1", "048-2342001variousThreadsMain", "048-2415515_dekker_true-unreach-call", "048-33667foll-vfork", "048-34449while", "048-51count_ones", "049-148351064", "049-15810crackme_regex_fsm", "049-25599stack_list", "049-2654121", "049-30249structs3", "050-11220modulo", "050-12051Queue_Linked_List", "050-27876counting-sundays", "050-33543lcs", "051-18616ex11", "051-2717403-gdb", "051-31004zadanie3", "051-31560success_006", "052-10151omp3-3", "052-18297knr_3_1r", "052-4669vla-stub", "053-14432py-block", "053-18642queue_practice", "053-23239ctor1", "053-23623spat", "053-9812day_mon3", "054-34632pure-1", "054-920705_02-example1", "055-11316ReverseLinkedListII", "055-20586reverseString", "055-2142isPall", "055-26206task_3", "055-33745testrand", "055-33891bp-cmds-execution-x-script", "056-12867store_merging_27", "056-1765divcon_sum_serial", "056-18538rerun-prec", "056-18930hook-stop-continue", "057-11576Hello", "057-21542trace-unavailable", "057-28945Namota6", "057-31598fib_rec", "057-4922rw", "057-8220correct", "058-22161branch_preditction", "058-33847curva", "058-8305strchr", "059-16241pi", "059-19519mandel", "059-21072aq", "059-30500main", "059-8609data-loc", "059-963test-atomic_load_double", "060-12245reverse_integer", "060-2887problem5", "060-30487condense", "060-34067longrun", "061-21032p12", "061-3062plist", "062-19820example_problem_1_i2", "062-20408LongestCollatz", "062-22253pxdb", "062-31221hello_world", "062-33201hook-stop", "062-9037ctermid", "062-916consoleArgs", "063-10553example-with-valgrind-01", "063-8173hash", "064-18053133_clone_graph", "064-25659hello", "064-2814220021219-1", "064-3032paginate-inferior-exit", "064-7696FizzBuzz", "065-10095smallest", "065-2609trace-break", "065-3827ex09_07", "065-657ex5-2", "066-10455dw2-reg-undefined", "066-11533testsort", "066-2531student2", "066-257536", "066-28839test", "066-33480pr98117", "066-34358Euler_Problem-037", "066-9229maxPrimeDivisor", "067-12159clock_get_test", "067-1732check_2w1r", "069-12001prob0021", "069-15772practice_5", "069-21667unpack_binary", "069-31895disabled-location", "069-392zipper", "069-6597vectorize", "070-10036HelloWorld", "070-18259pr64957", "070-20158sum_orig", "070-22791recursion", "070-26520ex12_16", "070-32207task_1", "070-32825array_pointer", "070-55782", "071-13291run-id-pr46758", "071-13357coder", "071-1819function", "071-22095permut", "071-33578dw2-reg-undefined", "071-5557mutex", "072-1840pointer_arithmetic1", "073-23014nsieve-bits", "073-24578base_algo_quick_sort", "073-35087vrp2", "073-7196ex14_03", "074-12869email", "074-14042dw2-param-error-main", "074-33235ex11", "074-33748get_rightmost_one", "075-1255112", "075-16609paginate-inferior-exit", "076-1255execl1", "076-31229thread", "077-18017annota-input-while-running", "077-23530mandel-2", "077-24730clock", "077-30413demo", "077-31448watchpoint_func_many_probes", "077-8165t-malloc", "077-98887", "078-16331nostdout", "078-23777tick", "078-24829to_upper", "079-12528c_double", "079-14993test", "079-16869bug-235681", "079-25175py-mi-objfile", "079-28474tst_pxt1", "079-28615Euler_Problem-073", "079-31705condvar-broadcast", "079-32013problem-007", "079-8624random", "079-8928ex10", "080-16143slowcat", "080-17205bubblesort", "081-12423path_sum", "081-14885interrupt-noterm", "081-20168primelist", "081-21331test-atomic_fetch_or", "081-23790interrupt-noterm", "081-24277inprint", "081-32975tree", "082-10711array1", "082-18781exce7", "082-31406thread-specific-bp", "083-25260gdb1821", "083-4225break-unload-file", "083-5307ashlti3", "083-7620access", "084-2085quick_sort", "084-34360array_address", "085-126672015", "085-13559time_diff7", "085-1753ex04_33", "085-17600graphite-loop-transformation", "085-30147do_while", "086-1349liftoff", "086-17439euler5", "086-1847gentable", "086-31595", "086-9115list0", "086-9482PiCalculator", "087-14554task_2", "088-11007chello", "088-13105bubbleSort", "088-15797vrp30", "088-1845reverse_number", "088-9316arm-bl-branch-dest", "089-26705fahr", "089-31870tst-setjmp", "090-31154pr83385", "090-35038main", "090-3740ex4", "090-8594test2", "091-10749get_prime_number_v1", "091-20728test1", "091-34390heap", "091-3858enable-running", "091-4113mi-var-list-children-invalid-grandchild", "092-12111pr97888-1", "092-15583length", "092-17301success_atomic_01", "092-2040node_eraser", "092-33234largest_number", "092-33390mutex", "092-33399testprogram", "092-6085dynarr-ptr", "092-6137x64ns", "093-11974bilinear-interpolation", "093-15271task_1", "093-1557621", "093-21371pthread", "093-30858loop_longlong_var", "093-32830fm11", "093-9291Random_ispis", "094-2253ticker", "094-25350rand", "094-3457optproc", "094-7491section-attr-1", "094-7842dw2-undefined-ret-addr", "094-8690argument", "095-25686136", "095-27673lshrti3", "095-32532structs3", "096-23589test", "096-30172ejercicioenclase3", "096-32406signal", "096-7537omp3-2-1", "097-11523reverse_bits", "097-13617big_blocks_freed_list", "097-16235tst-fileno", "097-16881queen", "097-3153501-only-intervals", "097-6208p14", "097-8528Exercise7-09", "098-15981fact_async", "098-20627info_minsym", "098-22616list1207", "098-27452Euler_Problem-084", "098-33030mi-var-create-rtti", "098-33307q34", "098-5416eg0408", "099-12180self_invalidate", "099-15145tststack", "099-16423problem1", "099-35012pr90131", "100-23843guia-wagstaff", "100-26340knr_5_4", "100-28964123_best_time_stock_III", "100-7954continue-pending-after-query", "101-103fabsnegative", "101-10836Ch8p390pe4", "101-14001order_pizza", "101-28378014", "101-4102sandbox_invoke_args", "101-7460trace-buffer-size", "102-19803aalokran", "102-29093LeetCode0007", "102-306507c", "102-30827singleNum137", "102-33777test-atomic_or_fetch", "102-5437ia32_rdtsc_clock", "103-14956arrayidx", "103-17282annota-input-while-running", "103-18766main", "103-25177execinfo", "103-29882random", "103-30968strtoul", "103-9569mutex", "104-3028timetest", "104-35133matrix", "104-9732alarm", "105-12745mi-reg-undefined", "105-30329mandelbrot", "105-30865reverse_list", "105-3761threads", "105-4320pr97459-5", "106-1204pe10", "106-5356nostdin", "107-9192pe12", "108-14480matriu4x4_original", "108-24251mapa", "108-30868manythreads", "108-696backspace", "108-712712", "108-8723helloworld", "109-25865double", "109-5313randomkey", "109-6537patch-functions-8", "109-9410double-prompt-target-event-error", "110-14743fir", "110-15771robber", "110-18700crc16", "110-28140exemple_getopt", "110-31026ex10", "110-4422fizzbuzz", "110-885start", "111-10727lftocr", "111-20466p3", "111-31187watchpoint-multi", "112-17224philosopher_simple", "112-19691ex5", "112-20950test-getsubopt", "112-2598sigaction", "112-26749sum_of_multiples_of_3_5", "112-31992ASCII", "112-32621bin2bf", "112-50691-4", "112-5269multiples", "112-9710rm", "113-26902condbreak-call-false", "113-769interrupt-noterm", "114-19962builtin-math-7", "114-20038PRESENT", "115-14021nanosleep", "115-18534py-prettyprint", "115-21676dw2-ifort-parameter", "115-30283pr71854", "115-4001enable", "115-4775benchmark", "116-1753wc", "116-31734for+init", "116-33238slash_r", "116-9633prime-sieve", "117-1334basic", "117-15131teste_vetor", "117-26679euler4", "117-28650cache_locality_2d_array_test", "117-4062thread_test", "118-13217190_reverse_bits", "118-21689step-line", "118-22819sum_cols_and_rows", "118-34818Factorial", "118-6729tls-var-main", "118-7029pr83553", "119-1370q_4_2", "119-1530producer_consumer", "119-18935buffer", "119-22198setvbuf", "120-140209", "120-15013test_stdout_size", "120-227393", "120-31197IFS", "120-5452ex10", "120-8485carRet", "121-13459pi", "121-16100pthread_return_values", "121-17894exemple_calloc_2", "121-32740dummy-frame-restore", "121-34150scandir", "122-14235gdb11479", "122-19861skip-prologue", "122-9083problem_9", "123-28487bbcl", "123-29751dw2-undefined-ret-addr", "123-8196pr47337", "124-215472217745", "124-24511bounded_notify", "124-7426task_1", "125-18443euler5", "126-13497problem14", "126-20903l3", "126-26703sleep-test", "126-30960for", "126-6073pr65053-2", "127-13418mm", "127-18355main", "127-23167scm-objfile", "128-1151083_remove_duplicates_from_sorted_list", "128-1243expCloneSpin", "128-14100ftrace", "128-19180getoptlong", "128-31567test047", "128-3246p14", "129-11278exo3", "129-11343display", "129-31934exce14", "129-6068longest_collatz_sequence", "130-12273ex11", "130-17355hand-call-new-thread", "130-25727thread", "130-27429overflow_truncate", "130-6710010", "131-10076merge", "131-179037colors", "131-22638qt-faststart", "131-24721mktest", "132-10792maxsublen", "132-11851gdb-sample2", "132-1440compile-print", "132-19319HowMuch", "132-7619magic_square", "132-7951bitcount", "132-8757prime", "133-32003tst-fileno", "134-19140test_wctype", "134-28075destroy_while_yielded", "134-31000trace-unavailable", "134-31079memory_allocation", "135-13575Upcase", "135-33554marriage", "135-35398qtro", "135-3737dprintf-non-stop", "135-7363segoddandeven", "136-11015tst-environ", "136-16423hz", "136-17581single-list", "136-24694atoi", "136-32312getopt", "137-11867for", "137-15572annota-input-while-running", "137-29445rand104", "137-9573test_wcfuncs", "138-11173py-prettyprint", "138-21420ex5-3", "139-16160printf", "139-16762test", "139-22327CommonNode", "139-22467min_element_sol", "139-5525linked-list", "140-19759getopt", "140-23332printenv", "140-24028string_test", "140-24320watchpoint-app", "140-31663test_ctype", "140-3879t04", "141-16989fizzbuzz", "141-262444-13_recursive-reverse", "141-29763qsort", "141-33352rrmdir", "142-16037memory_leak", "142-24177ascii1", "142-27709main", "142-4672merhaba50", "143-11446malloc", "143-34617signal", "143-6050reverse_number", "144-10577task_4", "144-1293692_reverse_linked_list", "144-14900problem_005", "144-20927py-type", "144-22561exemple_environ", "144-28595isalpha", "144-4458dowhile", "144-4942function-pointer", "145-19110producer_consumer", "145-26413prime2", "145-26484schedtest", "145-3992test9", "145-8071step-break", "146-10968randomInput", "146-18307fission-base", "146-28170right-rotate", "146-40struct3", "146-4377sym", "146-6089getopt_long", "147-16226while3", "147-23000py-progspace", "147-24593exec6", "147-272581", "147-5839test-fill-syslog", "147-8787double-prompt-target-event-error", "148-32078quick_sort", "149-1294vararg1", "149-16776friend", "149-19202punteros2", "150-15628random", "150-19608py-objfile-script", "150-22188bg-execution-repeat", "150-23350task_3", "150-24147pr68250", "150-2545id-7", "150-34447mutex_solution", "151-10629fibonacci", "151-1065513_roman_to_integer", "151-1596funccalls", "151-17972server", "151-29222gdb1821", "151-5515play_nice", "151-809299full", "152-13608compile-setjmp", "152-26431py-symbol", "152-27420telefone", "152-28934euler4", "152-35022BubbleSortOptimizing", "153-13182petle-2", "153-15556tst-strtoll", "153-18211basic", "153-652solve", "154-100542017-03-01-Aufgabe2", "154-32987bubble_sort_v3", "154-50602007-03-05-DataLayout", "154-571structs", "155-8394task_4", "156-12686main", "156-1817tmpname", "156-27127hilos", "156-3160bug-regex27", "156-4171eul05", "156-7398hilos_join", "157-10555break-reverse", "157-13872pr81573", "157-23116example_02", "157-28022pr61839_1", "157-5749lictool", "158-18444check-lc_ctype", "158-24742CharacterConstant", "158-27124multiply", "158-6935watchpoint-delete", "159-1247testcolors", "159-18697rand7", "159-20570hash_soln", "159-25362py-value", "160-19396search", "160-22052malo", "160-22440fig06_05", "160-84632017-02-10-Kopfgesteuerte-While-Schleife-3", "161-11143execl1", "161-15802day03", "161-22747simple", "161-26401pthread", "161-3857strncpy", "162-10368lab05", "162-25371waitprobe", "162-29900term", "162-3663point6", "163-14816task_1", "163-2096sigIgn", "163-23210difftime", "163-23572ex2", "163-25833problem_twelve", "163-31466dw2-case-insensitive", "163-31548strcpy-2", "163-34477q4", "163-4110euler5", "163-6215randomPhoneNumber", "164-10276switch-case-1", "164-23727pointers_and_compound_literals", "164-24613euler", "164-30412sleep", "164-9034vector-subscript-2", "165-24212barrier", "165-32200for_none", "165-3605memtest", "166-1816unknown_functions", "166-2034t1", "166-22145nim", "166-303774", "167-17823reverse_number", "167-28025memory_allocation", "168-21113fnsplit-1", "168-25017gentbl", "168-9630tst-random2", "169-25663loop-12", "169-26047test-asm-nop", "169-30018py-prettyprint", "169-35020ex07", "169-6354test", "169-9136hfc_for_loop", "170-15898p12", "170-1696grup3", "170-18272vdso-warning", "170-2707310-float", "170-33980pr39339", "171-12549thread_02_withmutex", "171-172exercise_3-3_expand", "171-20700p5", "171-26597starsrch", "171-32038p404", "172-10241reverse_number", "172-21097pi_integration_serial", "172-5462hello", "172-9368watch-non-mem", "173-10217pile_liste_chainee", "173-167312a", "173-20523rw", "173-24459rand10", "173-5894p3e1", "174-17494getusershell", "174-30304thread_base", "174-9757ex14", "175-12244hello_01", "175-142271", "175-26983insert_sort", "175-30089rand69", "176-18338partial_sum", "176-19143tab", "176-22372gigs", "176-2396470_climbing_stair", "176-25465fib", "176-32321euler5", "176-34268py-mi-events", "176-6095whatis", "176-6732matrix_soln", "177-3105converse1", "177-34275task_4", "177-6116sample", "178-21315task_2_v2", "178-27654struct_code", "179-13715ls-errs", "179-2071implref-struct", "179-22451program_10_13", "179-28343ashrti3", "179-29385pr61375", "179-34725PrimeSum", "180-12269testeGrafo", "180-15104pthread_detach", "180-32191ex13", "180-349384-12", "180-351231087", "181-15257pack-test", "181-19009annota-input-while-running", "181-27080cond-eval-mode", "181-28264task_4", "181-28878check_cooc", "181-31145bsd_signal", "181-6389primes", "182-1593430", "182-26410cutrod", "182-3173714-enums-large", "183-11129compara", "183-17908flops-4", "183-18644thread_leak2", "183-21040bg-execution-repeat", "183-25187allocstring", "183-25695string", "183-27420pe23", "183-30093issue_001", "183-7535p5_imp", "183-753624-update_suite", "184-26083pe4", "184-31887whirl", "185-16371Zada4aNo2", "185-16961cohencu", "185-21782testeDeCasoEspecial", "185-30297progbar", "186-11448000F_perf_001", "186-14933hello-world", "186-24756dw2-bad-mips-linkage-name", "186-28038sepsymtab", "186-294897-01sigmask", "187-11577rand2", "187-1239p39", "187-13269exercise16", "187-15537task_4", "187-18084strspn", "187-26512pr23386", "187-4745testbed", "187-9432continue-all-already-running", "187-9759th", "188-4550sss-bp-on-user-bp-2", "188-7878structs", "189-12218Exercise_1_8", "189-22730exemple_mutex", "189-24700main", "189-26350pr63594-2", "189-6703prob0012", "190-33379024", "190-4874ex6", "191-17101hook-stop-frame", "191-18588random", "191-1928system", "191-29724q06", "191-31545ex12", "191-33601amd64-entry-value-inline", "191-35133test_simple_big_sqrt", "191-7048utmp", "192-10002py-objfile-script", "192-11574mem_set", "192-1700pi_serial", "192-19955show_bytes", "192-2179QuickRename", "192-22604zad1", "192-24464malloc1", "192-32159ho_memchr", "192-35443py-value", "193-15762trim", "193-23155pragma_forLoop", "193-23996dos2mac", "193-25546heap", "193-9112MaiorDivisor", "194-11630task_4", "194-25122逆序交换", "194-34049loop", "194-3902bg-execution-repeat", "194-6588largestSumContiguousSubarray", "195-15137prob21", "195-26584fibonacci", "195-2756vrp90", "195-30463rerun-prec", "195-3921test_tableau", "196-3484qtro", "196-47432-10", "196-9332term", "197-21858bucket_brigade_silly_loop", "197-22244task_2", "197-23022Pyramid3", "197-26978cursal", "197-3321612_数组中元素的倒置", "197-9828declare-vla", "198-11580gdb11479", "198-15464print", "198-28218enable-running", "198-32181pr68532", "198-5510qtro", "198-6902_8", "199-106591_3", "199-1286thdm", "199-23881dynarr-ptr", "199-28780semaphore_lock", "199-33056write", "200-11788epsilon", "200-25657str_lower_case", "200-26625QuadraticPrimes", "200-268744b", "200-27710euc", "200-28412pr28982b", "200-28447problem-023", "200-34695lab3a_phase3", "200-8480dw2-undefined-ret-addr", "200-8496normal", "201-101965", "201-12695frame-args", "201-19057Natural", "201-24429exercise2_7", "202-151647", "202-8314step-break", "203-22133dlugosc", "203-27037enum2", "203-34517watchpoints", "204-13924tst-strptime2", "204-16513pr81571", "204-16834restrict", "204-173128-Operators-other-plus-calls-types", "205-10802ex04_27", "205-33289Dane", "205-3607pr94988", "205-4705issort", "205-4916001", "205-7666test-atomic_fetch_and", "206-16892atoi", "206-17152arf", "206-28020knr_3_5", "206-297tree_2x2", "206-3603arg_thread", "207-16091palindrome", "207-29425test-builtin-supports", "207-6361task_1", "207-7027unix2dos", "208-10167argv", "208-13024str_upper_case", "208-15157pr11022", "208-16904exce4", "208-17160MinNumberInRotatedArray", "208-24427191_number_of_1_bits", "208-2982320020402-3", "208-33239Exercise-1-3", "208-46334", "208-9925fmul_fcvt_1", "209-14052fiotemplate", "209-14911powerOf", "209-15220test_program", "209-3688time_diff6", "210-11266quick", "210-132671", "210-24961isprime", "210-295655-3", "210-6564gcore-buffer-overflow", "210-6578qt-faststart", "211-10044test_wctype", "211-13538binary_search_tree", "211-16219pthread2", "211-21922program1", "211-27434pr64536", "211-60481040", "212-16827for2+init", "212-23245printf_format_columns", "212-28059puzzle", "212-28469kill", "212-45annota-input-while-running", "212-6960linklist", "213-16016RecursiveIntersection", "213-24434bubbleSort", "213-26565dw2-dup-frame", "213-6434dprintf-non-stop", "213-960pth_detached", "214-1145320080122-1", "214-29055filaApontador", "214-30679paginate-after-ctrl-c-running", "214-3322reverse_number", "214-5384cond-eval-mode", "214-5615actions-changed", "214-7232p014", "215-17687continue-all-already-running", "215-2077box5", "215-29695sample1", "216-21649mk-lba-img", "216-3644Puzzle", "216-445pgm8-4", "216-5214structs", "217-17421PreorderTraversal", "218-14701rand93", "218-14785bug-regex23", "218-24759prime", "218-33366priority_queue_my1", "218-34843nofield", "218-6095mutex", "218-8070arecibo", "219-27892negdf2vfp_test", "219-3474110", "219-4263ex8-5", "220-22553Accumulate2", "220-2465pointer", "220-3876val-profiler-threads-1", "220-9546merge_block", "221-27221modular_exponential", "221-30719test", "221-4571sumarray", "221-4976watchpoints", "221-5741demo1", "222-1714TriangleNum", "222-17864fwrite_1", "222-6101double-prompt-target-event-error", "223-10224E1", "223-23617floatunssisfvfp_test", "223-31978pr94734", "223-32251test-ctype", "223-33519ret_thread", "223-736sigPrint", "224-12935variant", "224-20776lfsr128", "224-6279list", "225-1069for_2", "225-15006find_track_oo", "225-18582sigdemo1", "225-33873rand100", "225-697pr77988", "226-11700test_file", "226-12269vla-ptr", "226-13334game31", "226-14547power_digit_sum", "226-15616mi-stepn", "226-27868mv", "226-31115binary_search", "227-17609test_perfect_hash", "227-19237thresholds", "227-28565gst-play-vr", "227-30462p1", "227-35208gdb1090", "228-31542testCEx", "228-33163maybe_hug", "228-4779test-term-5", "229-15904p3", "229-21322euler4", "229-5381point-size", "230-27625solution_1", "230-28646reverse_string", "230-28733pr68376-1", "230-5234test049", "230-5892test_free", "230-8038hw1", "231-19156big5", "231-35339printenv", "231-6843rev_k_node", "232-1887HeapPointer", "232-23481wrapper", "232-23868ascii", "232-29394rwlock", "232-31619dw2-inline-param-main", "232-5707ho_strncat", "232-6927malloc_hook", "232-7354base_algo_interpolation_search", "232-9412unknown_functions", "233-17419evenfib", "233-21478trace-break", "233-7853benchmark_loop", "234-10744py-bad-printers", "234-24632rand22", "234-25058unknown_functions", "234-26770t_World", "234-27088bench", "234-3021trimzero", "234-30273watchpoint-multi", "234-5533paginate-after-ctrl-c-running", "234-7071mkkbdtbls", "235-16000optimise1", "235-292exemple_clock", "235-30129002", "235-778step-break", "236-10004shellsort", "236-21318section-attr-2", "236-27719buy_sell_stock", "236-3034fib", "236-32770largest_prime_factor", "236-5750SquareDigitChain", "237-16682manythreads", "237-20546Matrix_Multiplication", "237-38Problem_23", "237-5788Sequence", "238-1117flatten", "238-3489310", "238-57253", "238-7551exce5a", "239-14204struct_init", "239-14369aspace", "239-28913pr98474", "239-30806pr65053-1", "240-16214test-fmemopen", "240-19435hw54", "240-4693dw2-bad-unresolved", "240-791020041219-1", "241-21110p67", "241-22999student2", "242-13979main", "242-16051reverse_number", "242-29518bitfld-4", "242-30627atoi", "242-35318weird_coding_style_1", "242-6520sss-bp-on-user-bp", "243-33252paginate-inferior-exit", "243-8539list1", "244-12236urlify", "244-15100pthread", "244-1795return", "244-2813infcall-input", "244-3752handler", "244-5387冒泡排序", "244-7442hello", "244-794sample_sum_prime_numbers", "245-10337217_contain_dup", "245-19113break", "245-28302day_mon1", "245-319undefined", "245-32182mkNamedPrims", "245-4781void__float", "246-23443switch-statement", "246-6000cacheExperiment", "246-7854warn-missing-prototypes", "246-8116sepdebug2", "246-8407break_continue", "247-20899a2", "247-2620bug", "247-31043testenv", "247-35239limits", "248-13749linked_list", "248-1906loop-ivopts-1", "248-32978SrotTheInnerCtonnetInDsinnieedcgOredr", "248-34377condvar", "249-12141time_c", "249-34196test-fwrite", "249-5128tick", "249-5257gdb11479", "250-11761signest", "250-23303pr78482", "250-27179reverse_string", "251-16988squeeze", "251-25291xor", "251-26765amd64-tailcall-reverse", "251-27460main_dummy", "251-33037030", "252-10421test1", "252-1966exemple_gethostent", "253-1006e5", "253-10788Performance2", "253-34286test-fwrite", "253-662code_elim1", "253-735py-strfns", "253-9316paginate-inferior-exit", "254-18141iterator", "254-27187args", "254-4346skip-prologue", "254-5743sizeof", "254-6490rwlock_race", "254-9226exemple_getprotoent", "255-10765pr44715", "255-20634linked_list1", "255-24634task1", "255-322341-8-arguments", "255-6658ex12", "255-8775pointer_linklist", "256-31658meteor", "256-32455ex05_20", "257-12687BST_height_depth_of_node", "257-13192ex3", "257-3275utf8", "258-16270misaligned-words", "258-28265omp3-1-1", "259-16244sepsymtab", "260-10897while2", "260-11248step-resume-infcall", "260-11765majority-element", "260-12393PiCalculator", "260-26387printf_examples", "260-2810pr88693", "260-28473workbeast2", "260-29896hamming1", "260-3151program2", "260-3255mem_errors", "260-34521ex6", "260-5963solution", "260-8865vm0", "261-14481hardstride", "261-20542memattr", "261-24365planet_list", "261-985809-mukherjee_fib_Bench", "262-12756depend-mutexinout-1", "262-14918solve", "262-15051check-macros", "262-1583whologgedin", "262-19610strcpy", "262-21297matmul0000", "262-27002ortalama", "262-323617", "262-33085pthread", "262-484714", "262-7623pthread_create_with_param", "263-24559p1", "263-7030paginate-after-ctrl-c-running", "263-7863pair-numbers-using-for", "264-15031pe024", "264-20591ascii", "265-1278integer_factors", "265-17347main", "265-18503lst_no_head", "265-20242swap_str_arr", "265-30827pr78248", "265-30986globalerr", "265-33605server", "265-3691Exercise3-06", "265-4481omp3-1", "266-10383argv", "266-29346timer_implementation", "266-35386a2a", "266-4163InsertionSort", "267-16028seq_vec_sum", "267-24954sleep", "267-27432trapkid", "267-32913param", "268-16751pi_original", "268-3031820170419-1", "268-30454py-objfile-script", "268-32854test_wcfuncs", "268-7369stop-all-on-exit", "269-21870test_args", "269-28028dw2-undefined-ret-addr", "269-29513cap", "269-32268bin2c", "269-4145QuickSort", "270-20129startup-with-shell", "270-32575sigaction", "270-5135quick_sort", "270-6345bitflip", "271-10922triplet", "271-11983simplestatemachine", "271-29927permutations_of_string", "271-30182circularlinked", "271-49773", "272-14706bubble_sort_v1", "272-7484gemver_profiling", "273-19149cursal", "273-21009sleep_before_dying", "273-4367fib_bottom", "273-9285sum", "274-14823matrix-row-column-order", "274-2603211", "274-8828new-ui-pending-input", "275-15430simpleVersion", "275-31478duplicate-bp", "275-33285hilos", "275-33407break1", "275-6578pr94567", "276-11530hello", "276-27621thread", "276-32406whatis", "276-33239pthread", "277-10814tids-gid-reset", "277-17112backtrace-tst", "277-26942sumArraysOnHost", "277-28581exercise_10_03", "277-6916box2", "277-7374qsort", "278-12713find_missing", "278-12978pth_cvsimple", "278-16145zad4", "278-28600dw2-icycle", "278-54941096_sequence_ij_2", "279-23564step-break", "279-29319step-break", "279-32549mi-syn-frame", "279-8672C2", "280-10868py-breakpoint", "280-16725p2", "280-16849int__int", "280-21035config", "280-27836displayingno", "280-4047questao10", "280-8387gen", "281-10971del", "281-14488count_set_bits", "281-16822pr69067", "281-30836randomize", "281-31036sizeof", "282-22961pr46685", "282-23114insert_sort_list", "282-30350echo", "282-31353arrays", "282-34128locked_vs_unlocked3", "283-12475paginate-inferior-exit", "283-15225dw2-single-line-discriminators", "283-18010fortran-sym-case", "283-2644126-strict-loop-enter", "283-5136test", "285-18854dir2", "285-2317py-mi-events", "285-27760binary_search", "285-31406TLE", "285-597test-getdomainname", "286-1472countdown", "286-23371code", "286-25579t", "286-345879-print_comb", "286-48646-refine-protected1", "286-726120030330-1", "286-8707ch04pr09a", "287-1505709-wan", "287-26959array_transpose", "288-20851paginate-after-ctrl-c-running", "288-2612fixmewithvalgrind", "288-34432paginate-after-ctrl-c-running", "289-4934target", "290-11979ex04_13", "290-11990sleep1", "290-12102sleep_before_dying", "290-13709pr83298", "290-2868player2", "290-357503", "291-12040euler7", "291-12759bubble_sort", "291-31893test", "291-34982pi", "292-11288CProgram4", "292-13873sorted_insert", "292-18502time_diff2", "292-20650DeleteNodeDLL", "292-28029find_duplicate_members", "292-31553tst-fdopen", "292-32802problem10", "292-34570test-scan-pthread", "293-1548211", "293-25545test6", "293-31786enum_3", "294-16285ex05_31", "294-21030problem_four", "294-28438amicable_numbers", "294-31313memattr", "294-4547recipe-576772", "295-17082zad4", "295-21387struct4", "295-4807hook-stop-frame", "296-23369histo", "296-27161dw2-bad-mips-linkage-name", "296-30639pi", "296-9134ex012_missing2", "297-10865crivello_eratostene", "297-18335approx-pi", "297-26394ktstamp", "297-30183exemple_semaphores", "297-321832017-02-22-Strings", "298-1086059", "298-11779pr81633", "298-23874Argc", "299-12964sort", "299-19015Length_of_Linked_List", "299-32708geradorTemporadas", "299-7473code21", "299-8032rand_perm", "300-15597ipcp-self-recursion-1", "300-27185task_2", "300-28286LeetCode0315", "300-467920000329-1", "301-14327bubble", "301-15654new-ui-pending-input", "301-16301smallest_multiple", "301-22486fig1b", "301-2478struct", "302-24883tc14_laog_dinphils", "302-30255gcov-1a", "302-32951pr93820", "302-8619all", "303-18780app-console", "303-19909peak", "303-25346disconnected-tracing", "303-30727dprintf-non-stop", "303-31275main", "303-33904problem_five", "303-34518insert_sort", "303-4055test-atomic_add_fetch", "304-13054main", "304-13086envtime", "304-13860simple_threads", "304-9724069", "305-11308pr57344-1", "305-13346sleepMacro", "305-15481breakpoint-shadow", "305-16651data", "306-27484jump_game", "306-8066even_fibonacci", "307-32125code", "307-34513bubble_sort_v2", "308-10554intfloatprint", "308-1569enum", "308-2427sizeof", "308-30843tls-var-main", "309-16838dprintf-non-stop", "309-32389sda", "309-32647traced_c_loop", "310-17151pgm7-6", "311-1974120081218-1", "311-2182vetor2", "311-26435pr88984", "311-26821ex11", "311-27256test-atomic_fetch_nand", "312-13565test054", "312-13860Euler_Problem-034", "312-24043rand68", "312-25158BuildTower", "312-3522show-bytes", "312-4052jacobi2", "312-4975py-bad-printers", "312-5913thread_leak5", "312-77plist", "313-30660034", "313-32371task_4", "313-33584square-sum", "313-461isPall_ignorePuncCap", "314-3805getc", "315-11257compile-tls", "315-2034t-dummy", "315-31685bitshift", "316-21581exce7", "316-23045pages_as_heap", "316-2342ex12", "316-26034libmax", "316-9581main", "317-2728binarySearch", "317-851pr68185", "318-12384double-prompt-target-event-error", "318-22490likedlist", "318-4890thread", "319-29343whatis", "319-31908get_individual_bytes_with_array", "319-7723term", "320-17374tree", "320-32425bubbleSort", "320-483sketch1", "321-18035mutex", "321-33336bug129866", "322-227rwlock_race", "322-27396rand110", "322-6437generate_input", "322-871FindTheSmallest", "323-11081pth_lock", "323-15077tabela", "323-1618fopen", "323-26798stringANDarray01", "323-9628fio31", "324-12056double-prompt-target-event-error", "324-15333mclean", "324-263491189", "324-31749print_ascii", "324-35035sudoku", "325-26168ch27_drill", "325-30042memmem_funz_gen", "325-4606tc14_laog_dinphils", "326-22210print_bits", "326-32941magic_puzzle", "326-35343sum_swap", "326-7657trailing_zeros_factorial", "326-982747_permutation_II", "327-10398problem_nine", "327-11474fortuneindex", "327-20440new-ui-pending-input", "327-21202find_track_oo", "327-24756", "327-26416gdb1090", "327-28921thread", "327-9013multiples", "328-27095pr57344-4", "329-14322ex05_41", "329-30853ex14", "329-32428py-bad-printers", "329-33038EqualSidesOfAnArray", "329-33660DelayTest", "330-10720pr83668", "331-11637locking", "331-1322array_bidimensional", "331-28139aspace", "331-9783p94", "332-17490j014c", "332-18760split2", "332-21624randomize", "332-22164pr80308", "332-22290tc14_laog_dinphils", "332-27733pr63464", "332-28016029", "332-3388ex1", "332-34202c-", "332-6806lonely_integer", "334-14082rasa", "334-69392017-02-16-Fibonacci", "334-86946", "335-17561stpcpy", "335-19931countingSort", "335-22216structs3", "336-1587main", "336-19986basic", "336-23208Queue_using_Linked_List", "336-24583cursal", "336-2471new-ui", "336-31698zero_sign_extension", "337-20021echo", "337-28842t-tests-end", "337-33504cstrings", "337-34808229", "337-9742fig06_06", "338-21843RecursiveTest", "338-6482watchpoint-hw", "338-6760list_errors", "339-11645bug_array", "339-15920eg10_21", "339-17630bcnt", "340-21526task_3", "340-23702DoubleLinkedList", "340-30381main", "340-32770cptr1", "340-34948obfuscate", "341-18690plist", "341-27930T4_1_a", "341-32127watchpoint-multi", "342-12788pr97501", "342-24042pr87168", "342-31743ex002", "342-33622loop", "343-10337vprop-2", "343-3032practice", "343-30500races3", "343-33554PE002", "344-10479mem_errors", "344-10567task1", "344-11547asm", "344-20592pr57233", "344-21460ch07ex05", "344-2180interrupt-noterm", "344-27597buffer", "345-1518load", "345-22298prime", "345-26470sleep", "345-32716continue-all-already-running", "345-617reverse_list", "346-10639pr97467", "346-17564array", "346-27779alphasort", "346-28768p24", "346-28908eje3", "347-15138readsymlink", "347-19818findMinMax", "347-25221thread_multiple_params_example", "347-5887imprimindo", "348-10151mini-mini", "348-6626ex2", "348-8804asciitable", "349-1389236", "350-1694arodriguez154", "350-2242223591_thread-1", "350-29289encrypt", "350-3773swatchtime", "351-1576mm", "351-17280svcomp_genady_true-alloca", "351-31195problem84", "351-8871_7", "352-11585info_types", "352-18031ex14-1", "352-19521reduction-cplx-flt", "352-31227euler13", "353-29632bstree", "353-29823bucket_sort", "353-4908omp3-2", "353-778arr-subrange", "354-12170py-frame-args", "354-136133_4", "354-29497heapsort", "354-6478py-objfile", "355-10969FindInPartiallySortedMatrix", "355-21797LeetCode0051", "355-26831while4", "355-34705threadSort", "356-15074create_layer", "356-1859convert", "356-22780burgers", "356-2654test", "356-3531bg-execution-repeat", "357-12046task_3", "357-21766alloca-array-accessible", "357-6533christmas_tree", "357-7457burst_time", "358-21915program2", "358-32653pr33755", "358-34301vararrays", "358-5946fib", "359-10424py-symbol", "359-14726习题3", "359-18013rot13", "359-2210420000717-4", "359-22399BankAccount", "359-28910okimtest", "359-356arrays", "359-5231fission-base", "360-12147planet", "360-13858pr95045", "360-21005thread_leak5", "360-2648reloc4lib2", "360-29180str", "360-3617test_flush_logger", "360-6018thread", "361-5668bg-execution-repeat", "362-20135debug-info-gline-tables-only2", "362-2856734_srch_in_range", "362-33227echo", "363-15751ArbitraryPrecision", "363-26280order_pizza", "363-26435hilos_exit", "363-6788cont2", "364-16603ldbl_e308", "364-17399Euler_Problem-012", "364-34811switch-1", "365-17559sec_multmatrixseq", "365-24908vla", "365-25449py-objfile", "365-6723collisions", "366-1264my_alarm", "366-18398setvbuf", "366-21230eg0601", "366-28450IsMyFriendCheating", "366-4006ejemploOptimizacion", "366-74713", "367-1062Test_print_stack", "367-12487test", "367-15234pthread", "367-1888show_byte", "367-20909ex05_38", "367-30759pr80153", "367-34398alg", "367-9893main", "368-28469insertionSort", "368-646310", "368-748py-arch", "368-9336hello_multi", "369-15663leaks", "369-15781exce14c", "369-29163array_product", "369-4807methcall", "369-631py-block", "369-7477HowFastIsYourComputer", "369-9898atoi", "370-1475problem_5", "370-21436csandoval5", "370-26971prog56", "370-7306xorpad", "371-15068mem_dump", "371-15176array2d", "371-23398knr_strcpy", "371-31358masked", "372-11428continue-all-already-running", "372-15635break", "372-2819parallel_async", "372-28707swab", "372-28831putenv_test", "372-30425task1", "372-4635count_twos", "373-16799pthread_threads", "373-26555strncmp_example", "373-30652pr87290", "373-8733py-section-script", "374-11259Example5", "374-13879get_hash_string", "374-14407setmem_long-1", "374-17335step-break", "374-20172gcov-9", "374-22426infcall-input", "374-2965for+continue", "375-15705mmalloc", "375-1729test-atomic_fetch_xor", "375-25509pthread_join", "375-31289str_with_backspace", "376-10146reverse_bits_of_an_integer", "376-10864sleep1", "376-14507q33", "376-20420loop_de_inteiros", "376-6542strncmp", "377-16402pr95172", "377-2651py-pp-maint", "377-26933shift-1", "377-30730goldbach", "377-34220main", "378-15174cache4", "378-2004p14", "378-3907palindrome", "378-8778step-symless", "379-16953gcore-buffer-overflow", "379-3080157-singlethreaded-unlock", "380-20047007", "380-33023py-progspace", "380-3754address_space", "380-5630pr66199-2", "381-1411reverse-bitwise", "381-29250gen", "381-6056t03", "381-718804斐波那契函数_Fibonacci", "382-17602fibonacci", "382-25640suspect", "382-27996cond_variables", "382-28395christmas_tree", "382-31745C", "382-347920100430-1", "382-35394while_nested", "383-17776test_sleep", "383-305470X0053", "384-12376complex", "384-13282dwp-symlink", "384-14432sleep_example", "384-17633reverse_string", "384-29437tests_generator", "384-8346pdb-realloc", "385-12512kmcashan1", "385-2345214", "385-28034echo_1", "385-9489ex12_15", "386-12150ex5-4", "386-2238exemple_calloc_3", "387-11443main", "387-14056p18", "387-1718p052", "387-17584solution", "387-27087jit-simple-dl", "387-27335xbug", "388-30347initials", "388-6469test_time", "389-18604gcore", "389-19687decl_status_code", "389-20762solution", "389-3355choose_idea6_other1", "389-7792nestedloop3", "390-29714005clock_sync", "390-32805test_mutex_cond", "390-3599fibonacci", "390-4672bp-cmds-execution-x-script", "391-24817pattern_3", "391-465mystrcpy", "392-11095fast_union_slow_find", "392-20285dirent", "392-32672memcmp", "392-34916heap_sort", "392-8017e14-backoff-1", "393-24370paths", "394-12965pgm8-15", "394-14057gdb11479", "394-20669test_gcov", "395-14510program2", "395-24478test-hello-space", "395-30201step-break", "396-29283maximum_sum_increasing_subsequence", "397-10867dprintf-non-stop", "397-22068hardguy", "397-22626reverse-list", "397-26862malloctest2", "397-3287sizes"]


def get_subdirectory_names(directory):
    """
    Get a list of all subdirectory names in the specified directory.

    Parameters:
        directory (str): The path to the directory.

    Returns:
        list: A list of subdirectory names.
    """
    if not os.path.isdir(directory):
        raise ValueError(f"The specified path '{directory}' is not a directory or does not exist.")
    
    subdirectories = [name for name in os.listdir(directory) if os.path.isdir(os.path.join(directory, name))]
    
    # remove the three element 'code:', 'gen_ll:', 'processed' from subdirectories if they exist
    if 'code:' in subdirectories:
        subdirectories.remove('code:')
    if 'gen_ll:' in subdirectories:
        subdirectories.remove('gen_ll:')
    if 'processed' in subdirectories:
        subdirectories.remove('processed')
    if 'dead' in subdirectories:
        subdirectories.remove('dead')
    
    return subdirectories

OUR_LL = get_subdirectory_names('harp/our_ll')
OUR_LL = sorted(OUR_LL)

ALL_KERNEL = {'our_ll':OUR_LL}

class Node():
    def __init__(self, block, function, text, type_n, features = None):
        self.block : int = block
        self.function : int = function
        self.text : str = text
        self.type_n : int = type_n ## 0: instruction, 1: variable, 2: immediate, 3: pragma, 4: pseudo node for block
        self.features : str = features ## contains full text

    def get_attr(self, after_process = True):
        '''
            args:
                after_process : True if nodes are added to existing GNN-DSE graphs
                                False for initial graph generation in GNN-DSE
        '''
        n_dict = {}
        n_dict['block'] = self.block
        n_dict['function'] = self.function
        n_dict['text'] = self.text
        n_dict['type'] = self.type_n
        if after_process:
            n_dict['full_text'] = self.features
        else:
            n_dict['features'] = {'full_text': [self.features]}
        

        return n_dict

class Edge():
    def __init__(self, src, dst, flow, position):
        self.src : int = src
        self.dst : int = dst
        self.flow : int = flow ## 0: control, 1: data, 2: call, 3: pragma, 4: pseudo node for block, 5: connections between pseudo nodes, 6: for loop hierarchyhierarchy
        self.position : int = position

    def get_attr(self):
        e_dict = {}
        e_dict['flow'] = self.flow
        e_dict['position'] = self.position

        return e_dict


def create_pseudo_node_block(block, function):
    return Node(block, function, text = 'pseudo_block', type_n = 4, features = 'auxiliary node for each block')

def add_to_graph(g_nx, nodes, edges):
    if len(nodes) > 0:
        g_nx.add_nodes_from(nodes)
    if len(edges) > 0:
        g_nx.add_edges_from(edges)
    
def copy_files(name, src, dest):
    '''
        copy the generated files to the project directory
        
        args:
            name: the kernel name
            src: the path to the files
            dest: where you want to copy the files
    '''
    gen_files = [f for f in sorted(glob(join(src, f'{name}.*')))]
    gen_files.append(join(src, f'{name}_pretty.json'))
    gen_files.append(join(src, f'ds_info.json'))
    for f in gen_files:
        if 'ds_info.json' in f:
            source_dest = join(os.getcwd(), BENCHMARK, 'config', f'{name}_ds_config.json')
            copy(f, source_dest)
            continue
        if f.endswith('.c') or f.endswith('.cpp'):
            new_f_name = basename(f).replace(f'{name}', f'{name}_kernel')
            source_dest = join(os.getcwd(), BENCHMARK, 'sources', new_f_name)
            copy(f, source_dest)
        copy(f, dest)
    
def read_json_graph(name, readable=True):
    '''
        reads a graph in json format as a netwrokx graph
        
        args:
            name: name of the json file/ kernel's name
            reaable: whether to store a readable format of the json file
            
        returns:
            g_nx: graph in networkx format
    '''
    filename = name + '.json'
    with open(filename) as f:
        js_graph=json.load(f)
    g_nx=nx.readwrite.json_graph.node_link_graph(js_graph)
    if readable:
        make_json_readable(name, js_graph)
    
    return g_nx


def llvm_to_nx(name):
    '''
        reads a LLVM IR and converts it to a netwrokx graph
        
        args:
            name: name of the LLVM file/ kernel's name
            
        returns:
            g_nx: graph in networkx format
    '''
    filename = name + '.ll'
    with open(filename) as f:
        ll_file = f.read()
        # breakpoint()
        G=programl.from_llvm_ir(ll_file)
        g_nx=programl.to_networkx(G)
    
    return g_nx

def make_json_readable(name, js_graph):
    '''
        gets a json file and beautifies it to make it readable
        
        args:
            name: kernel name
            js_graph: the graph in networkx format read from the json file
            
        writes:
            a readable json file with name {name}_pretty.json    
    '''
    filename = name + '_pretty.json'
    f_json=open((filename), "w+")
    json.dump(js_graph, f_json, indent=4, sort_keys=True)
    f_json.close()

 

def extract_function_names(c_code):
    '''
        extract the names of the function in c code along with their line number
        
        args:
            c_code: the c_code read with code.read()
            
        return:
            a list of tuples of (function name, line number)
    '''
    # pattern = r'\b\w+\s+\w+\s*\([^)]*\)\s*{'
    pattern = r'\b(?:\w+|\*)+\s+\*?\w+\s*\([^)]*\)\s*{'
    function_matches = re.finditer(pattern, c_code)
    function_names = []
    for match in function_matches:
        function_name = match.group().split()[1]
        line_number = c_code.count('\n', 0, match.start()) + 1
        function_names.append((function_name.split('(')[0], line_number))
    return function_names


def get_tc_for_loop(for_loop_text):
    '''
        get trip count of the for loop
    '''
    comp = for_loop_text.split(';')[1].strip()
    delims = ['<=', '>=', '<', '>', '--'] ## FIXME: support for other condition types
    delim = None
    for d in delims:
        if d in comp:
            delim = d
            break
    if delim:
        if delim == '--':
            TC = 0
        else:
            TC = int(eval(comp.replace(" ", "").split(delim)[-1].strip()))
        return TC
    else:
        print(f'no comparison sign found in {for_loop_text}')
        raise RuntimeError()

def get_icmp(path, name, log=False):
    '''
        gets an llvm file and returns the icmp instructions of each for loop
        
        args:
            path: parent directory of the llvm file
            name: kernel name
                    
        returns:
            a dictionary corresponding to the icmp instructions: 
                {for loop id: [icmp instruction, for.cond line number, icmp line number]}
            number of for loops
    '''
    for_dict_llvm = OrderedDict() ## {function inst: {for loop id: [icmp instruction, for.cond line number, icmp line number]}} ## function inst is the LLVM-equivalent of function defintion starting with "define"
    f_llvm = open(join(path, f'{name}.ll'), 'r')
    lines_llvm = f_llvm.readlines()
    for_count_llvm, local_for_count_llvm = 0, 0
    func_inst = None
    for idx, line in enumerate(lines_llvm):
        if line.strip().startswith('define'):
            for_dict_llvm[line.strip()] = OrderedDict()
            func_inst = line.strip()
            local_for_count_llvm = 0
        elif line.strip().startswith('for.cond'):
            for_count_llvm += 1
            local_for_count_llvm += 1
            for idx2, line2 in enumerate(lines_llvm[idx+1:]):
                if line2.strip().startswith('for.body'):
                    print(f'Do you have the right LLVM code? no icmp instruction found for loop at line {idx}.')
                    raise RuntimeError()
                elif 'icmp' in line2.strip():
                    assert func_inst != None, 'no function scope found'
                    for_dict_llvm[func_inst][local_for_count_llvm] = [line2.strip(), idx, idx2 + idx + 1]
                    break
    if log:
        print(json.dumps(for_dict_llvm, indent=4))
    return for_dict_llvm, for_count_llvm


def get_pragmas_loops(path, name, EXT='c', log=False):
    '''
        gets a c kernel and returns the pragmas of each for loop
        
        args:
            path: parent directory of the kernel file
            name: kernel name
                    
        returns:
            a dictionary with each entry showing the for loop and its pragmas
                {for loop id: [for loop source code, [list of pragmas]]}
            number of for loops
    '''
    
    for_dict_source = OrderedDict() ## {function name: {for loop id: [for loop source code, [list of pragmas]]}}
    f_source = open(join(path, f'{name}.{EXT}'), 'r')
    lines_source = f_source.readlines()
    f_source.close()
    with open(join(path, f'{name}.{EXT}'), 'r') as f_source:
        function_names_list = extract_function_names(f_source.read())
    for_count_source, local_for_count_source = 0, 0
    pragma_zone = False
    for f_id, (f_name, idx_start) in enumerate(function_names_list):
        for_dict_source[f_name] = OrderedDict()
        local_for_count_source = 0
        last_line = -1
        if f_id + 1 < len(function_names_list): last_line = function_names_list[f_id+1][1]
        for idx_, line in enumerate(lines_source[idx_start:last_line]):
            idx = idx_ + idx_start
            line = line.strip()
            if not line or 'scop' in line: ## if it's a blank line or #pragma scop in it, skip it
                continue
            if line.startswith('for(') or line.startswith('for '):
                for_count_source += 1
                local_for_count_source += 1
            if pragma_zone:
                if ':' in line:
                    continue ## if it is a loop label, skip it
                if line.startswith('#pragma'):
                    pragma_list.append(line)
                elif line.startswith('for'):
                    for_dict_source[f_name][local_for_count_source] = [line.strip('{'), pragma_list]
                    pragma_zone = False
                else:
                    print(f'Do you have the right source code? expected either for loop or pragma at line {idx} but got {line}.')
                    raise RuntimeError()
            else:
                if line.startswith('#pragma') and not 'KERNEL' in line.upper():
                    pragma_list = [line]
                    pragma_zone = True
    
    if log:
        print(json.dumps(for_dict_source, indent=4))
        
    return for_dict_source, for_count_source

# def get_pragmas_loops(path, name, EXT='c', log=False):
#     '''
#         gets a c kernel and returns the pragmas of each for loop
        
#         args:
#             path: parent directory of the kernel file
#             name: kernel name
                    
#         returns:
#             a dictionary with each entry showing the for loop and its pragmas
#                 {for loop id: [for loop source code, [list of pragmas]]}
#             number of for loops
#     '''
    
#     for_dict_source = OrderedDict()  # {function name: {for loop id: [for loop source code, [list of pragmas]]}}
#     with open(join(path, f'{name}.{EXT}'), 'r') as f_source:
#         lines_source = f_source.readlines()
#         function_names_list = extract_function_names(f_source.read())

#     for_count_source = 0
#     pragma_zone = False
#     current_pragma_list = []
#     current_for_lines = []

#     for f_id, (f_name, idx_start) in enumerate(function_names_list):
#         for_dict_source[f_name] = OrderedDict()
#         local_for_count_source = 0
#         last_line = len(lines_source) if f_id + 1 == len(function_names_list) else function_names_list[f_id + 1][1]

#         for idx_ in range(idx_start, last_line):
#             line = lines_source[idx_].strip()
#             if not line or 'scop' in line:  # Skip blank lines or lines with `#pragma scop`
#                 continue

#             # Handle pragmas
#             if line.startswith('#pragma') and 'KERNEL' not in line.upper():
#                 current_pragma_list.append(line)
#                 pragma_zone = True
#                 continue

#             # Handle multi-line `for` loops
#             if pragma_zone or current_for_lines:
#                 current_for_lines.append(line)
#                 # Check if the loop is complete (ends with `{` or `;`)
#                 if '{' in line or ';' in line:
#                     for_code = ' '.join(current_for_lines).replace('\n', ' ')
#                     if re.match(r'^\s*for\s*\(.*\)\s*[{;]', for_code):
#                         local_for_count_source += 1
#                         for_count_source += 1
#                         for_dict_source[f_name][local_for_count_source] = [for_code, current_pragma_list]
#                     else:
#                         raise RuntimeError(f"Unexpected line during loop parsing at {idx_}: {line}")
#                     pragma_zone = False
#                     current_pragma_list = []
#                     current_for_lines = []
#                 continue

#             # Detect `for` loop starts without pragmas
#             if re.match(r'^\s*for\s*\(.*\)', line):
#                 current_for_lines.append(line)
#                 pragma_zone = False
#                 current_pragma_list = []
#                 continue

#     if log:
#         print(json.dumps(for_dict_source, indent=4))

#     return for_dict_source, for_count_source


def create_pragma_nodes(g_nx, g_nx_nodes, for_dict_source, for_dict_llvm, log = True):
    '''
        creates nodes for each pragma to be added to the graph
        
        args:
            g_nx: the graph object
            g_nx_nodes: number of nodes of the graph object
            for_dict_source: the for loops along with their pragmas
            for_dict_llvm: the for loops along with their icmp instruction in llvm
                    
        returns:
            a list of nodes and a list of edges to be added to the graph
    '''
    new_nodes, new_edges = [], []
    new_node_id = g_nx_nodes
    for f_name, f_content in for_dict_source.items():
        if len(f_content) == 0: ## no pragma exists in this function
            continue
        llvm_content = [f for f in for_dict_llvm if f_name in f]
        assert len(llvm_content) == 1
        llvm_content = for_dict_llvm[llvm_content[0]]
        for for_loop_id, [for_loop_text, pragmas] in f_content.items():
            icmp_inst = llvm_content[for_loop_id][0]
            icmp_inst_ = icmp_inst.split('!dbg')[0] ## if it has line number, strip it
            split_icmp_inst = icmp_inst_.split(',')
            TC_id = -1
            for sp in split_icmp_inst[::-1]:
                if sp.strip() == '': ## sp is white space ''
                    TC_id -= 1
                else:
                    break
            TC_icmp = int(eval(split_icmp_inst[TC_id].strip()))
            TC_for = get_tc_for_loop(for_loop_text)
            assert TC_for == TC_icmp, f'trip count of loop {for_loop_text} did not match {icmp_inst}.'

            node_id, block_id, function_id = None, None, None
            for node, ndata in g_nx.nodes(data=True):
                if 'features' in ndata:
                    feat = ast.literal_eval(str(ndata['features']))
                    if icmp_inst == feat['full_text'][0]:
                        print(f"found {icmp_inst} with id {node}")
                        node_id = int(node)
                        block_id = int(ndata['block'])
                        function_id = int(ndata['function'])
                        break
            if not node_id:
                print(f'icmp instruction {icmp_inst} not found.')
                raise RuntimeError()
            
            for pragma in pragmas:
                p_dict = {}
                p_dict['type'] = 3
                p_dict['block'] = block_id
                p_dict['function'] = function_id
                p_dict['features'] = {'full_text': [pragma]}
                p_dict['text'] = pragma.split(' ')[2]
                new_nodes.append((new_node_id, p_dict))
                
                e_dict = {'flow': 3, 'position': PRAGMA_POSITION[p_dict['text'].upper()]}
                new_edges.append((node_id, new_node_id, e_dict))
                new_edges.append((new_node_id, node_id, e_dict))
                
                new_node_id += 1
    if log:        
        pprint(new_nodes)
        pprint(new_edges)
        
    return new_nodes, new_edges

def prune_redundant_nodes(g_new):
    while True:
        remove_nodes = set()
        for node in g_new.nodes():
            if len(list(g_new.neighbors(node))) == 0 or node is None:
                print(node)
                remove_nodes.add(node)
                remove_nodes.add(node)
        for node in remove_nodes:
            g_new.remove_node(node)
        if not remove_nodes:
            break

def process_graph(name, g, csv_dict=None):
    '''
        adjusts the node/edge attributes, removes redundant nodes, 
            and writes the final graph to be used by GNN-DSE
        
        args:
            name: kernel name
            dest: where to store the graph
    '''
    g_new = nx.MultiDiGraph()
    for node, ndata in g.nodes(data=True):
        attrs = deepcopy(ndata)
        if 'features' in ndata:
            feat = ndata['features']
            attrs['full_text'] = feat['full_text'][0]
            del attrs['features']
            
        g_new.add_node(node)
        nx.set_node_attributes(g_new, {node: attrs})

    edge_list = []  
    id = 0
    for nid1, nid2, edata in g.edges(data=True):
        edata['id'] = id
        edge_list.append((nid1, nid2, edata))
        id += 1
    g_new.add_edges_from(edge_list)

    prune_redundant_nodes(g_new)

    new_gexf_file = join(processed_gexf_folder, f'{name}_processed_result.gexf')
    if len(g_new.nodes) != len(g.nodes):
        print('#nodes:', len(g_new.nodes), 'before processing was:', len(g.nodes))
    if len(g_new.edges) != len(g.edges):
        print('#edges:', len(g_new.edges), 'before processing was:', len(g.edges))
    nx.write_gexf(g_new, new_gexf_file)
    current_g_value = {}
    current_g_value['num_node'] = len(g_new.nodes)
    current_g_value['num_edge'] = len(g_new.edges)
    current_g_value['name'] = name
    if csv_dict: csv_dict[name] = current_g_value



def graph_generator(name, path, benchmark, generate_programl = False, csv_dict=None):
    """
        runs ProGraML [ICML'21] to generate the graph, adds the pragma nodes,
            processes the final graph to be accepted by GNN-DSE

        args:
            name: kernel name
            path: path to parent directory of the kernel file
            benchmark: [machsuite|poly] None: simple program
    """
    ## generate PrograML graph
    # 
    # breakpoint()
    # if generate_programl:
    #     p = Popen(f"{get_root_path()}/clang_script.sh {name} {path} {type_graph}", shell = True, stdout = PIPE)
    #     p.wait()
        
    ## convert it to networkx format
    # g_nx = read_json_graph(join(path, name))
    g_nx = llvm_to_nx(join(path, name))
    g_nx_nodes, g_nx_edges = g_nx.number_of_nodes(), len(g_nx.edges)
    
    ## find for loops and icmp instructions in llvm code
    for_dict_llvm, for_count_llvm = get_icmp(path, name)
    
    ## find for loops and their pragmas in the C/C++ code
    # breakpoint()
    for_dict_source, for_count_source = get_pragmas_loops(path, name)
    assert for_count_llvm == for_count_source, f'the number of for loops from the LLVM code and source code do not match ' \
                                               f'{for_count_llvm} in llvm vs {for_count_source} in the code'
    
    print(f'number of nodes: {g_nx_nodes} and number of edges: {g_nx_edges}')
    graph_path = join(path, name+'.gexf')
    nx.write_gexf(g_nx, graph_path)
    
    augment_graph = True
    if augment_graph:
        ## create pragma nodes and their edges
        new_nodes, new_edges = create_pragma_nodes(g_nx, g_nx_nodes, for_dict_source, for_dict_llvm)
        
        add_to_graph(g_nx, new_nodes, new_edges)
        print(f'number of new nodes: {g_nx.number_of_nodes()} and number of new edges: {len(g_nx.edges)}')
        process = True
        if process:
            process_graph(name, g_nx, csv_dict)

    copy_files_ = True
    if generate_programl: copy_files = True
    local = True # True: programl is running in the directories inside this project
    if copy_files_:
        if not local:
            dest = join(os.getcwd(), f'{type_graph}', benchmark, name)
            create_dir_if_not_exists(dest)
            copy_files(name, path, dest)
        else:
            dest = path


def get_for_blocks_info(name, path):
    with open(join(path, name, f'{name}.ll'), 'r') as f_llvm:
        lines_llvm = f_llvm.readlines()
        
    for_blocks_info = OrderedDict() # label: {ind: loop number, preds:, next_instr:, line_num:, end: [(for.end line num, for.end label)], possible_children: children:} 
    # possible_children are all children, children is only first level children
    # check up to 3 next instr to make sure the block is correct
    for_stack = [] # push for.cond pop for.end
    for_start = []
    for_end = []
    for_label = []
    i = 0
    for idx, line in enumerate(lines_llvm):
        if line.startswith('for.'):
            content = line.strip().split(';')
            line = content[0].strip()
            if 'for.cond' in line:
                key = f'{line}{idx}'
                assert key not in for_blocks_info
                for_blocks_info[key] = {'ind': i, 'preds': content[1], 'next_instr': [lines_llvm[idx+1].strip(), lines_llvm[idx+2].strip(),lines_llvm[idx+3].strip()], 'line_num': idx}
                for_stack.append(key)
                i += 1
            elif 'for.end' in line:
                res_cond = for_stack.pop()
                assert res_cond in for_blocks_info
                for_blocks_info[res_cond]['end'] = (idx, line)
            
    for for_l, for_l_value in for_blocks_info.items():
        if 'cond' in for_l:
            for_start.append(for_l_value['line_num'])
            for_end.append(for_l_value['end'][0])
            for_label.append(for_l)
    for idx, start_num in enumerate(for_start):
        child_idx = idx + 1
        possible_children = []
        for s, e in zip(for_start[idx+1:], for_end[idx+1:]):
            if s > start_num and e < for_end[idx]:
                possible_children.append(for_label[child_idx])
                child_idx += 1
            else:
                break
        for_blocks_info[for_label[idx]]['possible_children'] = possible_children
        
    for for_l, for_l_value in for_blocks_info.items():
        possible_children = for_l_value['possible_children']
        children = []
        i = 0
        while i < len(possible_children):
            children.append(possible_children[i])
            i += len(for_blocks_info[possible_children[i]]['possible_children']) + 1
        for_l_value['children'] = children
        
    return for_blocks_info


def augment_graph_hierarchy(name, for_blocks_info, src_path, dst_path, csv_dict=None, node_type = 'block'):
    if node_type == 'block':
        gexf_file = join(src_path, f'{name}_processed_result.gexf')
        new_gexf_file = join(dst_path, f'{name}_processed_result.gexf')
        print(f'processing {gexf_file}')
        g = nx.readwrite.gexf.read_gexf(gexf_file)
        g_nx_nodes, g_nx_edges = g.number_of_nodes(), len(g.edges)
        print(f'started with {g_nx_nodes} nodes and {g_nx_edges} edges')
        new_edges = [(nid1, nid2, edata) for nid1, nid2, edata in g.edges(data=True)]
        new_nodes = [(node, ndata) for node, ndata in g.nodes(data=True)]
        g_new = nx.MultiDiGraph()
        id = g_nx_edges
        current_g_value = {}
        current_g_value['name'] = name
        current_g_value['prev_node'] = g_nx_nodes
        current_g_value['prev_edge'] = g_nx_edges

        block_ids = {}
        for for_l, for_l_value in for_blocks_info.items():
            ## get block_id of each for loop
            found = False
            print(for_l_value)
            for node, ndata in g.nodes(data = True):
                if 'full_text' not in ndata:
                    continue
                if for_l_value['next_instr'][0] in ndata['full_text']:
                    block, function = (ndata['block'], ndata['function'])
                    correct_node = 1
                    for neighbor in g.neighbors(node):
                        if for_l_value['next_instr'][1] in g.nodes[neighbor]['full_text']:
                            correct_node += 1
                        if correct_node == 2:
                            for nn in g.neighbors(neighbor):
                                if for_l_value['next_instr'][2] in g.nodes[nn]['full_text']:
                                    correct_node += 1
                                    break
                        if correct_node == 3:
                            break
                    if correct_node == 3: ### FIXME: should match the number of next instrs that were saved:
                        found = True
                        block_ids[for_l] = (block, function)
                        break
            if not found:
                print(f'could not find the respective block for label {for_l}')
                raise RuntimeError()
            
        
        node_ids_block = {}
        for for_l in for_blocks_info:
            ## find pseudo node of each for loop
            for node, ndata in g.nodes(data = True):
                if 'pseudo_block' not in ndata['text']:
                    continue
                if ndata['block'] == block_ids[for_l][0] and ndata['function'] == block_ids[for_l][1]:
                    node_ids_block[for_l] = node
                    break
        
        for for_l, for_l_value in for_blocks_info.items():
            ## connect hierarchy edges
            if len(for_l_value['children']) == 0:
                continue
            id1 = node_ids_block[for_l]
            position = 0
            for child in for_l_value['children']:
                id2 = node_ids_block[child]
                e_dict = {'id': id, 'flow': 6, 'position': position} ## assign a new flow to it
                new_edges.append((id1, id2, e_dict))
                id += 1
                e_dict = {'id': id, 'flow': 6, 'position': position}
                new_edges.append((id2, id1, e_dict))
                id += 1
                position += 1
                print(f'edge between {for_l} with id {id1} and {child} and id {id2}')


        add_to_graph(g_new, nodes = new_nodes, edges = new_edges)
        prune_redundant_nodes(g_new)
        g_nx_nodes, g_nx_edges = g_new.number_of_nodes(), len(g_new.edges)
        print(f'ending with {g_nx_nodes} nodes and {g_nx_edges} edges')
        current_g_value['new_node'] = g_nx_nodes
        current_g_value['new_edge'] = g_nx_edges
        if csv_dict: csv_dict[name] = current_g_value
        nx.write_gexf(g_new, new_gexf_file)

    else:
        raise NotImplementedError()


    
def add_auxiliary_nodes(name, path, processed_path, csv_dict, node_type = 'block', connected = False):
    if node_type == 'block':
        gexf_file = join(path, f'{name}_processed_result.gexf')
        new_gexf_file = join(processed_path, f'{name}_processed_result.gexf')
        if not isfile(gexf_file):
            return None
        print(f'processing {gexf_file}')
        g = nx.readwrite.gexf.read_gexf(gexf_file)
        g_nx_nodes, g_nx_edges = g.number_of_nodes(), len(g.edges)
        print(f'started with {g_nx_nodes} nodes and {g_nx_edges} edges')
        current_g_value = {}
        current_g_value['name'] = name
        current_g_value['prev_node'] = g_nx_nodes
        current_g_value['prev_edge'] = g_nx_edges
        orig_nodes = g_nx_nodes
        block_nodes = {}
        new_edges = [(nid1, nid2, edata) for nid1, nid2, edata in g.edges(data=True)]
        new_nodes = [(node, ndata) for node, ndata in g.nodes(data=True)]
        block_func = {}
        block_func = {}
        max_block = 0
        g_new = nx.MultiDiGraph()
        id = g_nx_edges

        for node, ndata in g.nodes(data = True):
            if f"function-{ndata['function']}-block-{ndata['block']}" not in block_nodes:
                new_node = create_pseudo_node_block(ndata['block'], ndata['function'])
                block_nodes[f"function-{ndata['function']}-block-{ndata['block']}"] = {'id': g_nx_nodes, 'node': new_node, 'last_position': 0}
                new_nodes.append((g_nx_nodes, new_node.get_attr(after_process = True)))
                g_nx_nodes += 1

            if ndata['function'] not in block_func:
                block_func[ndata['function']] = {}
                block_func[ndata['function']]['count'] = 1
                block_func[ndata['function']]['blocks'] = [ndata['block']]
            else:
                if ndata['block'] not in block_func[ndata['function']]['blocks']:
                    block_func[ndata['function']]['count'] += 1
                    block_func[ndata['function']]['blocks'].append(ndata['block'])
            
            key = f"function-{ndata['function']}-block-{ndata['block']}"
            pseudo_node = block_nodes[key]['node']
            pseudo_id = block_nodes[key]['id']
            pseudo_position = block_nodes[key]['last_position']
            assert pseudo_node.function == ndata['function']
            e_dict = {'id': id, 'flow': 4, 'position': pseudo_position}
            new_edges.append((node, pseudo_id, e_dict))
            id += 1
            e_dict = {'id': id, 'flow': 4, 'position': pseudo_position}
            new_edges.append((pseudo_id, node, e_dict))
            id += 1
            block_nodes[key]['last_position'] = pseudo_position + 1

        if connected:
            ## add edge between the new nodes
            sorted_nodes = sorted(block_nodes.keys(), key=natural_keys)
            for idx, node in enumerate(sorted_nodes[:-1]):
                id1 = block_nodes[node]['id']
                id2 = block_nodes[sorted_nodes[idx+1]]['id']
                e_dict = {'id': id, 'flow': 5, 'position': 0} ## assign a new flow to it
                new_edges.append((id1, id2, e_dict))
                id += 1
                e_dict = {'id': id, 'flow': 5, 'position': 0}
                new_edges.append((id2, id1, e_dict))
                id += 1


        add_to_graph(g_new, nodes = new_nodes, edges = new_edges)
        prune_redundant_nodes(g_new)
        g_nx_nodes, g_nx_edges = g_new.number_of_nodes(), len(g_new.edges)
        for f, b in block_func.items():
            # print(f, b)
            max_block += b['count'] 
        assert g_nx_nodes == orig_nodes + max_block
        print(f'ending with {g_nx_nodes} nodes and {g_nx_edges} edges, max block: {max_block}')
        current_g_value['new_node'] = g_nx_nodes
        current_g_value['new_edge'] = g_nx_edges
        current_g_value['block'] = max_block
        if csv_dict: csv_dict[name] = current_g_value
        nx.write_gexf(g_new, new_gexf_file)

    else:
        raise NotImplementedError()

def remove_extra_header(src_dir, kernel_name):
    from tempfile import mkstemp
    orig_file = join(src_dir, f'{kernel_name}.c')
    fnew, abs_path = mkstemp()
    with open(fnew, 'w') as fpnew:
        with open(orig_file) as fp:
            for line in fp:
                if line.startswith('#include') and 'merlin_type_define' in line:
                    continue
                fpnew.write(line)
    
    shutil.copymode(orig_file, abs_path)
    shutil.copy(abs_path, orig_file)

def write_csv_file(csv_dict, csv_header, file_path):
    with open(join(get_root_path(), file_path), mode = 'w') as f:
        f_writer = csv.DictWriter(f, fieldnames=csv_header)
        f_writer.writeheader()
        for d, value in csv_dict.items():
            if d == 'header':
                continue
            f_writer.writerow(value)


def run_graph_gen(mode='initial', connected=True, target=['machsuite', 'poly'], ALL_KERNEL=ALL_KERNEL):
    test = 'original'
    global processed_gexf_folder
    if mode == 'initial': csv_header = ['name', 'num_node', 'num_edge']
    else: csv_header = ['name', 'prev_node', 'prev_edge', 'new_node', 'new_edge']
    if mode == 'auxiliary': csv_header.append('block')
    csv_dict = {'header': csv_header}
    if mode == 'initial':
        # from tqdm import tqdm
        for BENCHMARK in target:
            processed_gexf_folder = join(get_root_path(), f'{type_graph}/{BENCHMARK}/processed/')
            create_dir_if_not_exists(processed_gexf_folder)
            for kernel in ALL_KERNEL[BENCHMARK]:
                print('####################')
                print('now processing', kernel)
                ## modify the path below:
                path = join(get_root_path(), f'{type_graph}/{BENCHMARK}/', f'{kernel}')
                if not exists(path):
                    create_dir_if_not_exists(path)
                    ## this file needs to be run in programl mode first for this mode to work
                    kernel_dir = join(get_root_path(), f'{BENCHMARK}/sources/**/*')
                    # breakpoint()
                    kernel_path = [f for f in iglob(kernel_dir, recursive=True) if f'{kernel}_' in f]
                    if len(kernel_path) != 1:
                        if len(kernel_path) == 0: print('Error: no source file found')
                        else: print(f'Error: multiple source files found at {kernel_path}')
                        raise RuntimeError()
                    kernel_path = kernel_path[0]
                    ext = kernel_path.split('.')[-1]
                    new_file_path = join(path, f'{kernel}.{ext}')
                    print(kernel_path)
                    print(new_file_path)
                    shutil.copyfile(kernel_path, new_file_path)
                try:
                    # check if the path contains 3 files, if true then skip
                    # if len([f for f in listdir(path) if isfile(join(path, f))]) == 3:
                    #     print(f'{path} already has 3 files')
                    #     continue
                    graph_generator(kernel, path, BENCHMARK, generate_programl = True, csv_dict=csv_dict)
                    # breakpoint()
                except Exception as e:
                    print(f'##########################Error: {e}####################################################')
                    # move the directory to ../dead_case
                    shutil.move(path, path + '/../../dead_case')
                    print(f'##########################Moved {path} to {path + "/../../dead_case"}####################################################')
                        
                        
                print()
        write_csv_file(csv_dict, csv_header, f'{type_graph}/{mode}.csv')
    elif mode == 'auxiliary':
        for BENCHMARK in target:
            processed_gexf_folder = join(get_root_path(), f'{type_graph}/{BENCHMARK}/processed')
            if connected:
                auxiliary_node_gexf_folder = join(get_root_path(), f'{type_graph}/{BENCHMARK}/processed/extended-pseudo-block-connected/')
            else:
                auxiliary_node_gexf_folder = join(get_root_path(), f'{type_graph}/{BENCHMARK}/processed/extended-pseudo-block-base/')
            create_dir_if_not_exists(auxiliary_node_gexf_folder)
            # breakpoint()
            all_kernel = ALL_KERNEL[BENCHMARK]
            for kernel in all_kernel:
                print('####################')
                print('now processing', kernel)
                add_auxiliary_nodes(kernel, processed_gexf_folder, auxiliary_node_gexf_folder, csv_dict=csv_dict, node_type = 'block', connected = connected)
                print()
        write_csv_file(csv_dict, csv_header, f'{type_graph}/{mode}_{connected}.csv')
    elif mode == 'hierarchy':
        for BENCHMARK in target:
            llvm_base_folder = join(get_root_path(), f'{type_graph}/{BENCHMARK}/')
            auxiliary_node_gexf_folder = join(get_root_path(), f'{type_graph}/{BENCHMARK}/processed/extended-pseudo-block-connected/')
            dest_path = join(get_root_path(), f'{type_graph}/{BENCHMARK}/processed/extended-pseudo-block-connected-hierarchy/')
            create_dir_if_not_exists(dest_path)
            assert exists(auxiliary_node_gexf_folder)
            for kernel in ALL_KERNEL[BENCHMARK]:
                print('####################')
                print('now processing', kernel)
                path = join(get_root_path(), f'{type_graph}/{BENCHMARK}/', f'{kernel}')
                try:
                    for_blocks_info = get_for_blocks_info(kernel, llvm_base_folder)
                    augment_graph_hierarchy(kernel, for_blocks_info, src_path = auxiliary_node_gexf_folder, dst_path = dest_path, csv_dict=csv_dict)
                    print()
                except Exception as e:
                    print(f'#####@Error@: {e}##@#@########')
                    # move the directory to ../dead_case
                    shutil.move(path, path + '/../../dead_case')
                    print(f'##########################Moved {path} to {path + "/../../dead_case"}####################################################')
        write_csv_file(csv_dict, csv_header, f'{type_graph}/{mode}.csv')
    else:
        raise NotImplementedError()


if __name__ == '__main__':
    run_graph_gen(mode='initial', target=['our_ll'], connected=True)
    run_graph_gen(mode='auxiliary',target=['our_ll'], connected=False)
    run_graph_gen(mode='auxiliary',target=['our_ll'], connected=True)
    run_graph_gen(mode='hierarchy', target=['our_ll'],connected=True)
    # pass

        
            
    

    
    