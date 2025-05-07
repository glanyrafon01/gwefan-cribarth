+++
title = "Cribarth Music Player"
date = 2025-05-07T00:00:00Z
draft = false
description = "A lightweight Electron wrapper for Home Assistant's Music Assistant player."
tags = ["Electron", "Home Assistant", "Music Assistant", "Linux", "GitHub"]
+++

Cribarth Music Player is a small desktop application that allows Music Assistant
in Home Assistant to target the local device as a persistent playback endpoint,
independent of the browser. It's designed for simplicity, stability, and
integration with system launchers.

## ⚙️ Features

- Electron-based player wrapping Music Assistant's "This Device" feature
- Custom desktop launcher and icon
- Distributed as a `.deb` package for Linux systems and a `.exe` for Windows
  devices
- Manual install and update process for simplicity

## 🏗️ How It Was Built

- Developed in **Visual Studio Code**
- **ChatGPT** (GPT-4) provided primary development guidance, including packaging
  strategy, icon integration, and debugging support
- **GitHub Copilot** was used to accelerate syntax-level editing
- Versioned, built, and released via **GitHub Actions** and tagged GitHub
  releases

## 🌐 Applications

- Local playback for Music Assistant without needing an open browser
- Persistent multi-room audio integration
- Lightweight music player in environments like kiosks or lightweight desktops

## 🔗 Source Code

View the full repository on GitHub:  
[github.com/glanyrafon01/cribarth-music-player](https://github.com/glanyrafon01/cribarth-music-player)
