lookandfeelmenu = {
	{"pavucontrol", "pavucontrol"},
	{"system-setup-keyboard"},
	{"gpointing", "gpointing-device-settings"},
	{"input method selector", "im-chooser"},
	{"keyboard and mouse", "lxinput"},
	{"desktop session settings", "lxsession-edit"},
	{"lxappearance", "lxappearance"},
	{"preferred applications", "libfm-pref-apps"}
}

usermenu = {
	{"users and groups", "/usr/bin/system-config-users"},
	{"user auth", "/usr/bin/system-config-authentication"}
}


fedoramenu = {
	{"user settings", usermenu},
	{"look and feel", lookandfeelmenu},
	{"yumex", "yumex"}
}
return fedoramenu
