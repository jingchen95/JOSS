#!/bin/bash
export XITAO_LAYOUT_PATH=./ptt_layout_tx2

# --- Dot Product ---
# for((k=0;k<10;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "SEER Begin the $k execution! "
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 2
        # width = 1, block length = 640000, 100 blocks = 100 tasks, 100 iterations ==> 10000 tasks in total 
#         ./benchmarks/dotproduct/dotprod 1 100 64000000 1 320000 > ./debug_results/dotprod_${k}.txt
#         sleep 2
#         echo "SEER End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"
# done

# --- Fibnacci ---
# for((k=0;k<3;k++))
# do
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 2
#         # 57236 tasks with term 55 grain_size 34
#         ./benchmarks/fibonacci/fibonacci 1 55 34 > ./NoDDRDVFS/fib_JOSS_NoMem_${k}.txt
#         sleep 2
# done

# --- Sparse LU ---
# for((k=0;k<5;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "JOSS sparse LU 32, 256 Begin the $k execution! "
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 3
#         ./benchmarks/sparselu/sparselu 1 32 512 > ./NoDDRDVFS/sparselu_32_512_${k}.txt
#         sleep 3
#         echo "JOSS End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"
# done

# for((k=0;k<5;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "JOSS sparse LU 64, 512 Begin the $k execution! "
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 3
#         ./benchmarks/sparselu/sparselu 1 64 512 > ./NoDDRDVFS/sparselu_64_512_${k}.txt
#         sleep 3
#         echo "JOSS End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"
# done

# --- 2D Heat ---
# for((k=0;k<5;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "JOSS Begin the Heat -small $k execution! "
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 3 
#         ./benchmarks/heat/heat-tao 1 ./benchmarks/heat/small.dat > ./NoDDRDVFS/heat_small_${k}.txt
#         sleep 3
#         echo "JOSS End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"        
# done

# for((k=0;k<5;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "JOSS Begin the Heat -small $k execution! "
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 3 
#         ./benchmarks/heat/heat-tao 1 ./benchmarks/heat/big.dat > ./NoDDRDVFS/heat_big_${k}.txt
#         sleep 3
#         echo "JOSS End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"        
# done

# for((k=0;k<5;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "JOSS Begin the Heat -small $k execution! "
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 3 
#         ./benchmarks/heat/heat-tao 1 ./benchmarks/heat/huge.dat > ./NoDDRDVFS/heat_huge_${k}.txt
#         sleep 3
#         echo "JOSS End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"        
# done

# parallelism="4"
# # exe="2 4 6 8 10 12 14"
# for dop in $parallelism
# do
#         for((k=0;k<3;k++))
#         do
#                 echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                 echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                 echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                 # echo "/*--------- MM - 256 - 10k - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#                 sleep 5
#                 # ./benchmarks/syntheticDAGs/synbench 1 256 0 0 1 10000 0 0 $dop > ./NoDDRDVFS/mm256_NoddrDVFS_p${dop}_${k}.txt 
#                 # echo "/*--------- CP - 4096 - 20k - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#                 # ./benchmarks/syntheticDAGs/synbench 1 0 4096 0 1 0 20000 0 $dop > ./NoDDRDVFS/cp4096_NoddrDVFS_p${dop}_${k}.txt
#                 echo "/*--------- ST - 512 - 50k - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#                 ./benchmarks/syntheticDAGs/synbench 1 0 0 512 1 0 0 50000 $dop > ./NoDDRDVFS/st512_NoddrDVFS_p${dop}_${k}.txt
#                 # jetson_clocks --show >> ./NoDDRDVFS/mm256_steal_${executable}_p${dop}_${k}.txt  
#                 sleep 2
#         done
# done   

# for dop in $parallelism
# do
#         for((k=0;k<3;k++)) 
#         do
#                 echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                 echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                 echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                 # echo "/*--------- MM - 512 - 2k - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#                 sleep 5
#                 # ./benchmarks/syntheticDAGs/synbench 1 512 0 0 1 2000 0 0 $dop > ./NoDDRDVFS/mm512_NoddrDVFS_p${dop}_${k}.txt 
#                 # echo "/*--------- CP - 8192 - 10k - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#                 # ./benchmarks/syntheticDAGs/synbench 1 0 8192 0 1 0 10000 0 $dop > ./NoDDRDVFS/cp8192_NoddrDVFS_p${dop}_${k}.txt
#                 echo "/*--------- ST - 2048 - 50k - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#                 ./benchmarks/syntheticDAGs/synbench 1 0 0 2048 1 0 0 50000 $dop > ./NoDDRDVFS/st2048_NoddrDVFS_p${dop}_${k}.txt
#                 # jetson_clocks --show >> ./NoDDRDVFS/mm256_steal_${executable}_p${dop}_${k}.txt  
#                 sleep 2
#         done
# done  


# echo 800000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
# echo 1113600 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
# echo 1113600 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
# sleep 2
# export XITAO_LAYOUT_PATH=./ptt_layout_d2;./benchmarks/syntheticDAGs/synbench 3 0 8192 0 1 0 10000 0 4

# echo 1420800 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
# sleep 2
# export XITAO_LAYOUT_PATH=./ptt_layout_d2;./benchmarks/syntheticDAGs/synbench 3 0 8192 0 1 0 10000 0 4

# echo 1600000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
# echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
# sleep 2
# export XITAO_LAYOUT_PATH=./ptt_layout_d2;./benchmarks/syntheticDAGs/synbench 3 0 8192 0 1 0 10000 0 4

# echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
# echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
# sleep 2
# export XITAO_LAYOUT_PATH=./ptt_layout_d2;./benchmarks/syntheticDAGs/synbench 3 0 8192 0 1 0 10000 0 4

# exe="1.2 1.4 1.8 4"
# # --- Sparse LU ---
# for executable in $exe
# do
#         for((k=0;k<5;k++))
#         do
#                 echo "/*---------------------------------------------------------------*/"
#                 echo "JOSS sparse LU 32, 256 Begin the $k execution! "
#                 echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#                 echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                 echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#                 echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                 echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                 sleep 3
#                 ./benchmarks/sparselu/slu_${executable}X 1 32 256 > ./debug_results/sparselu_32_256_${executable}X_${k}.txt
#                 sleep 3
#                 echo "JOSS End the $k execution! "
#                 echo "/*---------------------------------------------------------------*/"
#         done
# done

# for executable in $exe
# do
#         for((k=0;k<5;k++))
#         do
#                 echo "/*---------------------------------------------------------------*/"
#                 echo "JOSS sparse LU 32, 512 Begin the $k execution! "
#                 echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#                 echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                 echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#                 echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                 echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                 sleep 3
#                 ./benchmarks/sparselu/slu_${executable}X 1 32 512 > ./debug_results/sparselu_32_512_${executable}X_${k}.txt
#                 sleep 3
#                 echo "JOSS End the $k execution! "
#                 echo "/*---------------------------------------------------------------*/"
#         done
# done

# for executable in $exe
# do
#         for((k=0;k<5;k++))
#         do
#                 echo "/*---------------------------------------------------------------*/"
#                 echo "JOSS sparse LU 64, 256 Begin the $k execution! "
#                 echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#                 echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                 echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#                 echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                 echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                 sleep 3
#                 ./benchmarks/sparselu/slu_${executable}X 1 64 256 > ./debug_results/sparselu_64_256_${executable}X_${k}.txt
#                 sleep 3
#                 echo "JOSS End the $k execution! "
#                 echo "/*---------------------------------------------------------------*/"
#         done
# done

# for executable in $exe
# do
#         for((k=0;k<5;k++))
#         do
#                 echo "/*---------------------------------------------------------------*/"
#                 echo "JOSS sparse LU 64, 512 Begin the $k execution! "
#                 echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#                 echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                 echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#                 echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                 echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                 sleep 3
#                 ./benchmarks/sparselu/slu_${executable}X 1 64 512 > ./debug_results/sparselu_64_512_${executable}X_${k}.txt
#                 sleep 3
#                 echo "JOSS End the $k execution! "
#                 echo "/*---------------------------------------------------------------*/"
#         done
# done

# # --- 2D Heat ---
# for executable in $exe
# do
#         for((k=0;k<5;k++))
#         do
#                 echo "/*---------------------------------------------------------------*/"
#                 echo "JOSS Begin the Heat -small $k execution! "
#                 echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#                 echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                 echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#                 echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                 echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                 sleep 3 
#                 ./benchmarks/heat/heat_${executable}X 1 ./benchmarks/heat/small.dat > ./debug_results/heat_small_${executable}X_${k}.txt
#                 sleep 3
#                 echo "JOSS End the $k execution! "
#                 echo "/*---------------------------------------------------------------*/"        
#         done
# done

# for executable in $exe
# do
#         for((k=0;k<5;k++))
#         do
#                 echo "/*---------------------------------------------------------------*/"
#                 echo "JOSS Begin the Heat - big $k execution! "
#                 echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#                 echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                 echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#                 echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                 echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                 sleep 5
#                 ./benchmarks/heat/heat_${executable}X 1 ./benchmarks/heat/big.dat > ./debug_results/heat_big_${executable}X_${k}.txt
#                 sleep 5
#                 echo "JOSS End the $k execution! "
#                 echo "/*---------------------------------------------------------------*/"        
#         done
# done

# for executable in $exe
# do
#         for((k=0;k<5;k++))
#         do
#                 echo "/*---------------------------------------------------------------*/"
#                 echo "JOSS Begin the Heat - huge $k execution! "
#                 echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#                 echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                 echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#                 echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                 echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                 sleep 5
#                 ./benchmarks/heat/heat_${executable}X 1 ./benchmarks/heat/huge.dat > ./debug_results/heat_huge_${executable}X_${k}.txt
#                 sleep 5
#                 echo "JOSS End the $k execution! "
#                 echo "/*---------------------------------------------------------------*/"        
#         done
# done

# 2022, November 28th ===> JOSS with performance improvement(specified with user inputs, how much speedup they want)
# parallelism="16"
# echo 1331200000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
# echo 1113600  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
# echo 1267200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
# sleep 3
# export XITAO_LAYOUT_PATH=./ptt_layout_d2; ./benchmarks/syntheticDAGs/synbench 3 0 4096 0 2 0 20000 0 16 >> test.txt

# echo 1331200000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
# echo 1113600  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
# echo 1574400  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
# sleep 3
# export XITAO_LAYOUT_PATH=./ptt_layout_d2; ./benchmarks/syntheticDAGs/synbench 3 0 4096 0 2 0 20000 0 16 >> test.txt

# echo 1600000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
# echo 1113600  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
# echo 1420800  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
# sleep 3
# export XITAO_LAYOUT_PATH=./ptt_layout_d2; ./benchmarks/syntheticDAGs/synbench 3 0 4096 0 2 0 20000 0 4 >> test.txt

# echo 1881600  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
# echo 1062400000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
# echo 1728000  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
# sleep 3
# export XITAO_LAYOUT_PATH=./ptt_layout_d2; ./benchmarks/syntheticDAGs/synbench 3 0 4096 0 1 0 20000 0 4 >> test.txt

# export XITAO_LAYOUT_PATH=./ptt_layout_d2; ./benchmarks/syntheticDAGs/synbench 3 0 0 2048 2 0 0 50000 16 >> test.txt

# echo 1574400  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
# sleep 3
# export XITAO_LAYOUT_PATH=./ptt_layout_d2; ./benchmarks/syntheticDAGs/synbench 3 0 0 512 2 0 0 50000 16 >> test.txt
# export XITAO_LAYOUT_PATH=./ptt_layout_d2; ./benchmarks/syntheticDAGs/synbench 3 0 0 2048 2 0 0 50000 16 >> test.txt

# echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
# sleep 3
# export XITAO_LAYOUT_PATH=./ptt_layout_d2; ./benchmarks/syntheticDAGs/synbench 3 0 0 512 2 0 0 50000 16 >> test.txt
# export XITAO_LAYOUT_PATH=./ptt_layout_d2; ./benchmarks/syntheticDAGs/synbench 3 0 0 2048 2 0 0 50000 16 >> test.txt

# echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
# echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
# sleep 3
# export XITAO_LAYOUT_PATH=./ptt_layout_d2; ./benchmarks/syntheticDAGs/synbench 3 0 0 512 2 0 0 50000 16 >> test.txt
# export XITAO_LAYOUT_PATH=./ptt_layout_d2; ./benchmarks/syntheticDAGs/synbench 3 0 0 2048 2 0 0 50000 16 >> test.txt

# exe="1 1.2 1.4 1.8 4"

# for dop in $parallelism
# do
#         for executable in $exe
#         do
#                 for((k=0;k<5;k++)) # Test with performance constraints
#                 do
#                         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                         echo "/*--------- MM - 256 - 10k - Perf improvement ${executable}X - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#                         sleep 5
#                         ./benchmarks/syntheticDAGs/syn_${executable}X 1 256 0 0 1 10000 0 0 $dop > ./debug_results/mm256_${executable}X_p${dop}_${k}.txt 
#                         jetson_clocks --show >> ./debug_results/mm256_${executable}X_p${dop}_${k}.txt   
#                         sleep 5
#                 done
#         done
# done   

# for dop in $parallelism
# do
#         for executable in $exe
#         do
#                 for((k=0;k<3;k++))
#                 do 
#                         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                         echo "/*--------- MM - 512 - 2k - Perf improvement ${executable}X - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#                         sleep 5
#                         ./benchmarks/syntheticDAGs/syn_${executable}X 1 512 0 0 1 2000 0 0 $dop > ./debug_results/mm512_${executable}X_p${dop}_${k}.txt 
#                         jetson_clocks --show >> ./debug_results/mm512_${executable}X_p${dop}_${k}.txt
#                         sleep 5
#                 done
#         done
# done

# for dop in $parallelism
# do
#         for executable in $exe
#         do
#                 for((k=0;k<3;k++))
#                 do 
#                         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                         echo "/*--------- ST - 512 - 50k - Perf improvement ${executable}X - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#                         sleep 5
#                         ./benchmarks/syntheticDAGs/syn_${executable}X 1 0 0 512 1 0 0 50000 $dop > ./debug_results/st512_${executable}X_p${dop}_${k}.txt
#                         jetson_clocks --show >> ./debug_results/st512_${executable}X_p${dop}_${k}.txt
#                         sleep 5
#                 done
#         done
# done

exe="1.4 1.8 4 1.2"
parallelism="16 4"
for dop in $parallelism
do
        for executable in $exe
        do
                for((k=0;k<3;k++))
                do 
                        echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
                        echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
                        echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
                        echo "/*--------- ST - 2048 - 50k - Perf improvement ${executable}X - p${dop} - $k iteration starts! -----------*/" >> Process.txt
                        sleep 5
                        ./benchmarks/syntheticDAGs/syn_${executable}X 1 0 0 2048 1 0 0 50000 $dop > ./debug_results/st2048_${executable}X_p${dop}_${k}.txt
                        jetson_clocks --show >> ./debug_results/st2048_${executable}X_p${dop}_${k}.txt
                        sleep 5
                done
        done
done

# for dop in $parallelism
# do
#         for executable in $exe
#         do
#                 for((k=0;k<5;k++))
#                 do
#                         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#                         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#                         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                         echo "/*--------- CP - 4096 - 20k - Perf improvement ${executable}X - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#                         sleep 5
#                         ./benchmarks/syntheticDAGs/syn_${executable}X 1 0 4096 0 1 0 20000 0 $dop > ./debug_results/cp4096_${executable}X_p${dop}_${k}.txt
#                         jetson_clocks --show >> ./debug_results/cp4096_${executable}X_p${dop}_${k}.txt
#                         sleep 5
#                 done
#         done
# done

# for dop in $parallelism
# do
#         for executable in $exe
#         do
#                 for((k=0;k<5;k++))
#                 do
#                         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#                         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#                         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                         echo "/*--------- CP - 8192 - 10k - Perf improvement ${executable}X - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#                         sleep 5
#                         ./benchmarks/syntheticDAGs/syn_${executable}X 1 0 8192 0 1 0 10000 0 $dop > ./debug_results/cp8192_${executable}X_p${dop}_${k}.txt
#                         jetson_clocks --show >> ./debug_results/cp8192_${executable}X_p${dop}_${k}.txt
#                         sleep 5
#                 done
#         done
# done

# --- Fibnacci ---
# for((k=0;k<10;k++))
# do
#     echo "/*----------------------- JOSS Scheduler Begin! Fibnacci -----------------------*/"
#     echo " "
#     echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#     echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#     echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#     echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#     echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#     sleep 5
#     export XITAO_LAYOUT_PATH=./ptt_layout_tx2; ./benchmarks/fibonacci/fibonacci 1 55 34 > ./debug_results/fib_JOSS_$k.txt
#     sleep 5
#     echo "/*----------------------The $k th try finish!-----------------------*/"
# done

# --- 2D Heat ---
# for((k=0;k<10;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "JOSS Begin the Heat -small $k execution! "
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 5
#         ./benchmarks/heat/heat-tao 1 ./benchmarks/heat/small.dat > ./debug_results/heat_small_${k}.txt
#         sleep 10
#         echo "JOSS End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"        
# done

# for((k=0;k<10;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "JOSS Begin the Heat - big $k execution! "
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 5
#         ./benchmarks/heat/heat-tao 1 ./benchmarks/heat/big.dat > ./debug_results/heat_big_${k}.txt
#         sleep 5
#         echo "JOSS End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"        
# done

# for((k=0;k<10;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "JOSS Begin the Heat - huge $k execution! "
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 5
#         ./benchmarks/heat/heat-tao 1 ./benchmarks/heat/huge.dat > ./debug_results/heat_huge_${k}.txt
#         sleep 5
#         echo "JOSS End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"        
# done

# --- Sparse LU ---
# for((k=0;k<15;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "JOSS sparse LU 32, 256 Begin the $k execution! "
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 10
#         ./benchmarks/sparselu/sparselu 1 32 256 > ./debug_results/sparselu_32_256_${k}.txt
#         sleep 10
#         echo "JOSS End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"
# done

# for((k=4;k<15;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "JOSS sparse LU 32, 512 Begin the $k execution! "
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 10
#         ./benchmarks/sparselu/sparselu 1 32 512 > ./debug_results/sparselu_32_512_${k}.txt
#         sleep 10
#         echo "JOSS End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"
# done

# for((k=0;k<15;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "JOSS sparse LU 64, 256 Begin the $k execution! "
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 10
#         ./benchmarks/sparselu/sparselu 1 64 256 > ./debug_results/sparselu_64_256_${k}.txt
#         sleep 10
#         echo "JOSS End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"
# done

# for((k=3;k<10;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "JOSS sparse LU 64, 512 Begin the $k execution! "
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 10
#         ./benchmarks/sparselu/sparselu 1 64 512 > ./debug_results/sparselu_64_512_${k}.txt
#         sleep 10
#         echo "JOSS End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"
# done


# --- Synthetic DAGs ---


# for dop in $parallelism
# do
#     for((k=0;k<10;k++))
#     do
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         echo "/*--------- CP - 1024 - 50k - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#         sleep 5
#         ./benchmarks/syntheticDAGs/synbench 1 0 1024 0 1 0 50000 0 $dop > ./debug_results/cp_1024_50k_p${dop}_${k}.txt
#         jetson_clocks --show >> ./debug_results/cp_1024_50k_p${dop}_${k}.txt
#         sleep 5
#     done
# done

# for dop in $parallelism
# do
#     for((k=0;k<10;k++))
#     do
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         echo "/*--------- CP - 2048 - 50k - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#         sleep 5
#         ./benchmarks/syntheticDAGs/synbench 1 0 2048 0 1 0 50000 0 $dop > ./debug_results/cp_2048_50k_p${dop}_${k}.txt
#         jetson_clocks --show >> ./debug_results/cp_2048_50k_p${dop}_${k}.txt
#         sleep 5
#     done
# done

# for dop in $parallelism
# do
#     for((k=0;k<10;k++))
#     do
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         echo "/*--------- CP - 4096 - 20k - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#         sleep 5
#         ./benchmarks/syntheticDAGs/synbench 1 0 4096 0 1 0 20000 0 $dop > ./debug_results/cp_4096_20k_p${dop}_${k}.txt
#         jetson_clocks --show >> ./debug_results/cp_4096_20k_p${dop}_${k}.txt
#         sleep 5
#     done
# done

# for dop in $parallelism
# do
#     for((k=0;k<10;k++))
#     do
#         echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         echo "/*--------- CP - 8192 - 10k - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#         sleep 5
#         ./benchmarks/syntheticDAGs/synbench 1 0 8192 0 1 0 10000 0 $dop > ./debug_results/cp_8192_10k_p${dop}_${k}.txt
#         jetson_clocks --show >> ./debug_results/cp_8192_10k_p${dop}_${k}.txt
#         sleep 5
#     done
# done



# for dop in $parallelism
# do
#     for((k=0;k<5;k++))
#     do 
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         echo "/*--------- ST - 1024 - 50k - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#         sleep 5
#         ./benchmarks/syntheticDAGs/synbench 1 0 0 1024 1 0 0 50000 $dop > ./debug_results/st_1024_50k_p${dop}_${k}.txt
#         jetson_clocks --show >> ./debug_results/st_1024_50k_p${dop}_${k}.txt
#         sleep 5
#     done
# done

# for dop in $parallelism
# do
#     for((k=0;k<5;k++))
#     do 
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         echo "/*--------- ST - 2048 - 50k - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#         sleep 5
#         ./benchmarks/syntheticDAGs/synbench 1 0 0 2048 1 0 0 50000 $dop > ./debug_results/st_2048_50k_p${dop}_${k}.txt
#         jetson_clocks --show >> ./debug_results/st_2048_50k_p${dop}_${k}.txt
#         sleep 5
#     done
# done

# for dop in $parallelism
# do
#     for((k=0;k<10;k++))
#     do
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         echo "/*--------- MM - 64 - 50k - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#         sleep 5
#         ./benchmarks/syntheticDAGs/synbench 1 64 0 0 1 50000 0 0 $dop > ./debug_results/mm_64_50k_p${dop}_$k.txt 
#         jetson_clocks --show >> ./debug_results/mm_64_50k_p${dop}_$k.txt
#         sleep 5
#     done
# done

# parallelism="16"
# exe="2 4 6 8 10 12 14"
# for dop in $parallelism
# do
#         for executable in $exe
#         do
#                 #for((k=0;k<10;k++))
#                 for((k=0;k<3;k++)) # Test with performance constraints
#                 do
#                         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                         echo "/*--------- MM - 256 - 10k - time constraint ${executable} - p${dop} - $k iteration starts! -----------*/" >> Process.txt
#                         sleep 5
#                         ./benchmarks/syntheticDAGs/syn_steal_${executable} 1 256 0 0 1 10000 0 0 $dop > ./debug_results/mm256_steal_${executable}_p${dop}_${k}.txt 
#                         jetson_clocks --show >> ./debug_results/mm256_steal_${executable}_p${dop}_${k}.txt  
#                         sleep 5
#                 done
#         done
# done   




# for dop in $parallelism
# do
#         # export XITAO_LAYOUT_PATH=./ptt_layout_d2; ./benchmarks/syntheticDAGs/synbench 3 256 0 0 2 10000 0 0 $dop
#         export XITAO_LAYOUT_PATH=./ptt_layout_d2; ./benchmarks/syntheticDAGs/synbench 3 0 4096 0 2 0 20000 0 $dop
#         sleep 5
# done



# exe="10 20 30 40 50 60 70 80 90 100"

# --- Sparse LU with performance constraints ---
# for executable in $exe
# do
#         for((k=0;k<5;k++))
#         do
#                 echo "/*---------------------------------------------------------------*/"
#                 echo "JOSS sparse LU 64, 256 Begin the $k execution! "
#                 echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#                 echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                 echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#                 echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                 echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                 sleep 5
#                 ./benchmarks/sparselu/sparselu${executable} 1 64 256 > ./debug_results/sparselu_64_256_${executable}_${k}.txt
#                 sleep 5
#                 echo "JOSS End the $k execution! "
#                 echo "/*---------------------------------------------------------------*/"
#         done
# done

# --- 2D Heat with performance constraints ---
# for executable in $exe
# do
#         for((k=0;k<5;k++))
#         do
#                 echo "/*---------------------------------------------------------------*/"
#                 echo "JOSS Begin the Heat -small $k execution! "
#                 echo 1 >/sys/kernel/debug/bpmp/debug/clk/emc/mrq_rate_locked
#                 echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#                 echo 1 > /sys/kernel/debug/bpmp/debug/clk/emc/state
#                 echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#                 echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#                 sleep 5
#                 ./benchmarks/heat/heat-tao${executable} 1 ./benchmarks/heat/small.dat > ./debug_results/heat_small_${executable}_${k}.txt
#                 sleep 5
#                 echo "JOSS End the $k execution! "
#                 echo "/*---------------------------------------------------------------*/"        
#         done
# done

#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 5
#         ./benchmarks/syntheticDAGs/synbench 1 0 1024 0 1 0 50000 0 $dop > ./debug_results/cp_1024_50k_p${dop}_${k}.txt
#         jetson_clocks --show >> ./debug_results/cp_1024_50k_p${dop}_${k}.txt
#         sleep 5
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 5
#         ./benchmarks/syntheticDAGs/synbench 1 0 2048 0 1 0 50000 0 $dop > ./debug_results/cp_2048_50k_p${dop}_${k}.txt
#         jetson_clocks --show >> ./debug_results/cp_2048_50k_p${dop}_${k}.txt
#         sleep 5
#         echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
#         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 5
#         ./benchmarks/syntheticDAGs/synbench 1 0 4096 0 1 0 50000 0 $dop > ./debug_results/cp_4096_50k_p${dop}_${k}.txt
#         jetson_clocks --show >> ./debug_results/cp_4096_50k_p${dop}_${k}.txt
#         sleep 5


# 2022 - Feb 2nd - EDP optimization per task
# parallelism="8"
# for dop in $parallelism
# do
#     for((k=0;k<10;k++))
#     do
#         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 1
#         ./benchmarks/syntheticDAGs/synbench 1 0 2048 0 1 0 50000 0 $dop > cp_2048_50k_EDP_${k}.txt
#         sleep 5
#     done
#     # for((k=0;k<2;k++))
#     # do
#     #     echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#     #     echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#     #     sleep 1
#     #     ./benchmarks/syntheticDAGs/synbench 1 0 0 1024 1 0 0 50000 $dop > st_1024_50k_EDP_${k}.txt
#     #     sleep 5
#     # done
#     for((k=0;k<10;k++))
#     do
#         echo 2035200  > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200  > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 1
#         ./benchmarks/syntheticDAGs/synbench 1 256 0 0 1 10000 0 0 $dop > mm_256_10k_EDP_${k}.txt 
#         sleep 5
#     done
# done

# --- 2D Heat ---
# for((k=0;k<10;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "2D Heat - SEER Begin the $k execution! "
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 2
#         ./benchmarks/heat/heat-tao 1 ./benchmarks/heat/big.dat > heat_10k_2048_EDP_${k}.txt
#         sleep 5
#         echo "2D Heat - SEER End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"        
# done

# --- Sparse LU ---
# for((k=0;k<10;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "Sparse LU - SEER Begin the $k execution! "
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 2
#         ./benchmarks/sparselu/sparselu 1 64 512 > slu_EDP_64_${k}.txt
#         sleep 10
#         echo "Sparse LU - SEER End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"
# done

# for((k=0;k<10;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "Sparse LU - SEER Begin the $k execution! "
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 2
#         ./benchmarks/sparselu/sparselu 1 32 512 > slu_EDP_32_${k}.txt
#         sleep 10
#         echo "Sparse LU - SEER End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"
# done

# --- 2D Heat ---
# for((k=0;k<10;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "SEER Begin the $k execution! "
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 2
#         ./benchmarks/heat/heat-tao 1 ./benchmarks/heat/big.dat > ./debug_results/heat_10k_2048_${k}.txt
#         sleep 5
#         echo "SEER End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"        
# done



# --- Sparse LU ---
# for((k=0;k<7;k++))
# do
#         echo "/*---------------------------------------------------------------*/"
#         echo "SEER Begin the $k execution! "
#         echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
#         echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
#         sleep 2
#         ./benchmarks/sparselu/sparselu 1 64 512 > ./debug_results/sparselu_${k}.txt
#         sleep 10
#         echo "SEER End the $k execution! "
#         echo "/*---------------------------------------------------------------*/"
# done



