#!/bin/bash
export XITAO_LAYOUT_PATH=./ptt_layout_tx2

parallelism="4"

for dop in $parallelism
do
  # echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
  # echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
  # sleep 2
  # echo "Matrix Multiply - 2048 Begin, parallelism = $dop"
  # ./benchmarks/syntheticDAGs/synbench 1 2048 10240 2048 1 40 0 0 $dop > MM_Test_$dop.txt
  # sleep 5
  # echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
  # echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
  # sleep 5
  # echo "Matrix Copy - 10240 Begin, parallelism = $dop"
  # ./benchmarks/syntheticDAGs/synbench 1 0 10240 0 1 0 100 0 $dop > MC_Test_$dop.txt
  # sleep 5
  echo 1866000000 > /sys/kernel/debug/bpmp/debug/clk/emc/rate
  echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
  echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
  sleep 5
  echo "Stencil - 2048 Begin, parallelism = $dop"
  ./benchmarks/syntheticDAGs/synbench 1 2048 10240 512 1 0 0 50 $dop > ST_fine_grain_$dop.txt
done
