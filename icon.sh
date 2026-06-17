qdbus6 org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript "
  for (var c of containments()) {
    for (var a of c.applets) {
      if (a.pluginId === 'org.kde.plasma.kickoff' || a.pluginId === 'org.kde.plasma.kicker') {
        a.currentConfigGroup = ['General'];
        a.writeConfig('icon', 's-o');
      }
    }
  }
"
