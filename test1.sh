#!/bin/bash
export XITAO_LAYOUT_PATH=./ptt_layout_tx2

parallelism="1 4"

for dop in $parallelism
do
  echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
  echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
  sleep 5
  echo "Matrix Multiply -2048 Begin, parallelism = $dop"
  ./benchmarks/syntheticDAGs/synbench 1 2048 10240 0 1 50 0 0 $dop > MatrixMultiply_Test_$dop.txt
  sleep 5
  echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
  echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
  sleep 5
  echo "Matrix Copy - 10240 Begin, parallelism = $dop"
  ./benchmarks/syntheticDAGs/synbench 1 0 10240 0 1 0 100 0 $dop > MatrixCopy_Test_$dop.txt
  sleep 5
  echo 2035200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
  echo 2035200 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_setspeed
  sleep 5
  echo "Stencil - 2048 Begin, parallelism = $dop"
  ./benchmarks/syntheticDAGs/synbench 1 0 10240 2048 1 0 0 100 $dop > Stencil_Test_$dop.txt
done
