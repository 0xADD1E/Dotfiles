function powersave
	echo powersave |sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
end
