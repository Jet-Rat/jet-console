#!/bin/bash

if [[ -z "$(sed -n -e '/Defaults\s\+env_keep +\?=\s\+"COLORS DISPLAY HOSTNAME HISTSIZE KDEDIR LS_COLORS"/p' /etc/sudoers)" ]]; then
	echo 'Defaults    env_keep += "COLORS DISPLAY HOSTNAME HISTSIZE KDEDIR LS_COLORS"' >> /etc/sudoers
fi;

if [[ -z "$(sed -n -e '/Defaults\s\+env_keep +=\s\+"MAIL PS1 PS2 QTDIR USERNAME LANG LC_ADDRESS LC_CTYPE"/p' /etc/sudoers)" ]]; then
	echo 'Defaults    env_keep += "MAIL PS1 PS2 QTDIR USERNAME LANG LC_ADDRESS LC_CTYPE"' >> /etc/sudoers
fi;

if [[ -z "$(sed -n -e '/Defaults\s\+env_keep +=\s\+"LC_COLLATE LC_IDENTIFICATION LC_MEASUREMENT LC_MESSAGES"/p' /etc/sudoers)" ]]; then
	echo 'Defaults    env_keep += "LC_COLLATE LC_IDENTIFICATION LC_MEASUREMENT LC_MESSAGES"' >> /etc/sudoers
fi;

if [[ -z "$(sed -n -e '/Defaults\s\+env_keep +=\s\+"LC_MONETARY LC_NAME LC_NUMERIC LC_PAPER LC_TELEPHONE"/p' /etc/sudoers)" ]]; then
	echo 'Defaults    env_keep += "LC_MONETARY LC_NAME LC_NUMERIC LC_PAPER LC_TELEPHONE"' >> /etc/sudoers
fi;

if [[ -z "$(sed -n -e '/Defaults\s\+env_keep +=\s\+"LC_TIME LC_ALL LANGUAGE LINGUAS _XKB_CHARSET XAUTHORITY"/p' /etc/sudoers)" ]]; then
	echo 'Defaults    env_keep += "LC_TIME LC_ALL LANGUAGE LINGUAS _XKB_CHARSET XAUTHORITY"' >> /etc/sudoers
fi;

if [[ -z "$(sed -n -e '/Defaults\s\+env_keep +=\s\+"EDITOR VISUAL"/p' /etc/sudoers)" ]]; then
	echo 'Defaults    env_keep += "EDITOR VISUAL"' >> /etc/sudoers
fi;
