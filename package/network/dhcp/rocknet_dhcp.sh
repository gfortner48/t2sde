# --- T2-COPYRIGHT-NOTE-BEGIN ---
# T2 SDE: package/*/dhcp/rocknet_dhcp.sh
# Copyright (C) 2004 - 2023 The T2 SDE Project
# 
# This Copyright note is generated by scripts/Create-CopyPatch,
# more information can be found in the files COPYING and README.
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2.
# --- T2-COPYRIGHT-NOTE-END ---

dhclient_start () {
	local if="$1"; shift
	ip link set $if up
	/sbin/dhclient -nw "$@" $if
}

public_dhcp() {
	addcode up   5 5 "dhclient_start $if $*"
	addcode down 5 5 "killall -TERM dhclient"
	addcode down 5 6 "sleep 1; ip addr flush $if && ip link set $if down || ifconfig $if down"
}
