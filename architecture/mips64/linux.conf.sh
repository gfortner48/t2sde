# --- T2-COPYRIGHT-NOTE-BEGIN ---
# This copyright note is auto-generated by scripts/Create-CopyPatch.
# 
# T2 SDE: architecture/mips64/linux.conf.sh
# Copyright (C) 2013 - 2020 The T2 SDE Project
# 
# More information can be found in the files COPYING and README.
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License. A copy of the
# GNU General Public License can be found in the file COPYING.
# --- T2-COPYRIGHT-NOTE-END ---

{
	[ "$SDECFG_MIPS64_ENDIANESS" = "EL" ] &&
		echo "CONFIG_CPU_LITTLE_ENDIAN=y" ||
		echo "CONFIG_CPU_BIG_ENDIAN=y" ||

	echo
	cat <<- 'EOT'
 		include(`linux.conf.m4')
	EOT
} | m4 -I $base/architecture/$arch -I $base/architecture/mips -I $base/architecture/share
