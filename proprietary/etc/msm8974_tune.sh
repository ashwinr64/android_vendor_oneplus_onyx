#!/system/bin/sh +v
#title           :msm8974_tune.sh
#description     :core tunings for Qualcomm MSM8974 platform
#author		 	 :Wu, Wesley
#date            :2015/09/01
#version         :0.1
#usage		 	 :sh msm8974_tune.sh
#notes           :Root priviledge is required, it'd be mandatory to
#									turn off Selinux enforce
#=================================================

echo "10000 1800000:20000" > /sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay
echo "85 1500000:90" > /sys/devices/system/cpu/cpufreq/interactive/target_loads
echo 20000 > /sys/devices/system/cpu/cpufreq/interactive/min_sample_time
echo 50000 > /sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor
echo 960000 >  /sys/devices/system/cpu/cpufreq/interactive/hispeed_freq
echo 960000 > /sys/module/cpu_boost/parameters/input_boost_freq

echo 0 > /sys/module/cpu_boost/parameters/boost_ms
