# PATH TO SCRIPTS
  export PATH=${PATH}:~/scripts

# SET PROPER locale(1) with LC_ALL VARIABLE.
  export LC_ALL=en_US.UTF-8

# GTK ANTIALIASING
  export GDK_USE_XFT=1

# QT ANTIALIASING
  export QT_XFT=1

# QT MUST KNOW WHERE IS GTK2 CONFIG
  export GTK2_RC_FILES="${HOME}/.config/.gtkrc-2.0"

# QT5 qt5ct
  export QT_QPA_PLATFORMTHEME=qt5ct

# DSB AUTOMOUNTER
  dsbmc-cli -a &
  dsbmc &

# ICONS WM
  sed -i '' -E "s%\/home\/[a-zA-Z0-9_-]+\/%\/home\/${USER}\/%g" ~/.config/openbox/menu.xml
  sed -i '' -E "s%\/home\/[a-zA-Z0-9_-]+\/%\/home\/${USER}\/%g" ~/.config/openbox/rc.xml

# ICONS TINT2
  sed -i '' -E "s%\/home\/[a-zA-Z0-9_-]+\/%\/home\/${USER}\/%g" ~/.tint2rc

# ICONS APPS
  for I in ~/.apps/*.desktop
  do
    sed -i '' -E "s%\/home\/[a-zA-Z0-9_-]+\/%\/home\/${USER}\/%g" "${I}"
  done

# WINDOW MANAGER
#  exec openbox-session

# PRESTARTED APPS
#~/scripts/__openbox_restart_dzen2.sh &
#~/scripts/__openbox_restart_tint2.sh &
#xsetroot -solid black &
#xterm &
#tint2 &
#dzen2 &

exec ck-launch-session startplasma-x11
#exec startfluxbox

