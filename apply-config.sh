sudo cp ~/Downloads/sensory-overload-os-main/misc/s-o.svg /usr/share/icons/breeze/apps/48/
echo Icon installed!
sudo cp -f ~/Downloads/sensory-overload-os-main/os-release /etc/
sudo cp -f ~/Downloads/sensory-overload-os-main/kcm-about-distrorc ~/.config/kdedefaults
sudo cp -f ~/Downloads/sensory-overload-os-main/hostname /etc/
echo Replaced OS info!
mkdir -p ~/.config/fastfetch
sudo cp ~/Downloads/sensory-overload-os-main/misc ~/Pictures
sudo cp -f ~/Downloads/sensory-overload-os-main/config.jsonc ~/.config/fastfetch/
echo Added custom fastfetch config!
sudo dnf install fastfetch
sudo dnf copr enable darkly -y
sudo dnf install darkly -y
kpackagetool6 --type Plasma/Style -i https://dl.opendesktop.org/api/files/download/id/1614339
echo Instaled fastfetch and themes!
kwriteconfig6 --file kdeglobals --group KDE --key widgetStyle Darkly
kwriteconfig6 --file plasmarc --group Theme --key name "Utterly-Round"
./icon.sh
plasmashell --replace & disown
echo Applied themes!
kquitapp6 plasmashell && sleep 1
sudo cp -f ~/Downloads/sensory-overload-os-main/plasmashellrc ~/.config/
plasmashell & disown
echo Changed desktop layout!
mkdir ~/Pictures/Wallpapers
cp ~/Downloads/sensory-overload-os-main/Wallpapers/* ~/Pictures/Wallpapers
kwriteconfig6 --file plasma-org.kde.plasma.desktop-appletsrc --group "Containments" --group "1" --group "Wallpaper" --group "org.kde.image" --group "General" --key "Image" "~/Pictures/Wallpapers/soswall.png"
kquitapp6 plasmashell && sleep 1
plasmashell & disown
echo Applied wallpaper!
echo Setup complete!
