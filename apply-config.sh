sudo cp ~/Downloads/sensory-overload-os-main/misc/s-o.svg /usr/share/icons/breeze/apps/48/
echo Icon installed!
sudo cp -f ~/Downloads/sensory-overload-os-main/os-release /etc/
sudo cp -f ~/Downloads/sensory-overload-os-main/kcm-about-distrorc ~/.config/kdedefaults
sudo cp -f ~/Downloads/sensory-overload-os-main/hostname /etc/
echo Replaced OS info!
sudo dnf install fastfetch
sudo dnf copr enable deltacopy/darkly -y
sudo dnf install darkly -y
mkdir -p ~/.local/share/plasma/desktoptheme/
curl -L -o /tmp/utterly-round.tar.gz "https://dl.opendesktop.org/api/files/download/id/1614339"
tar -xzf /tmp/utterly-round.tar.gz -C ~/.local/share/plasma/desktoptheme/ 2>/dev/null
echo "Installed fastfetch and themes!"
echo Instaled fastfetch and themes!
kwriteconfig6 --file kdeglobals --group KDE --key widgetStyle Darkly
kwriteconfig6 --file plasmarc --group Theme --key name "Utterly-Round"
chmod +x icon.sh
./icon.sh
plasmashell --replace & disown
echo Applied themes!
mkdir -p ~/.config/fastfetch
fastfetch --gen-config-full
sudo cp ~/Downloads/sensory-overload-os-main/misc ~/Pictures
sudo cp -f ~/Downloads/sensory-overload-os-main/config.jsonc ~/.config/fastfetch/
echo Added custom fastfetch config!
kquitapp6 plasmashell && sleep 1
sudo cp -f ~/Downloads/sensory-overload-os-main/plasmashellrc ~/.config/
plasmashell & disown
echo Changed desktop layout!
mkdir ~/Pictures/Wallpapers
cp ~/Downloads/sensory-overload-os-main/Wallpapers/* ~/Pictures/Wallpapers
plasma-apply-wallpaperimage ~/Pictures/Wallpapers/soswall.png
kquitapp6 plasmashell && sleep 1
plasmashell & disown
echo Applied wallpaper!
echo Setup complete!
