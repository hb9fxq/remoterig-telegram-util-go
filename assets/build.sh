#!/bin/bash
cd ..

# Linux
env GOOS=linux GOARCH=amd64 go build -o ../../../../bin/remoterig-telegram-util-go/linux64/remoterig-telegram-bot
env GOOS=linux GOARCH=386 go build -o ../../../../bin/remoterig-telegram-util-go/linux32/remoterig-telegram-bot

# Raspi
env GOOS=linux GOARCH=arm GOARM=5 go build -o ../../../../bin/remoterig-telegram-util-go/raspberryPi/remoterig-telegram-bot

# Windows
env GOOS=windows GOARCH=amd64 go build -o ../../../../bin/remoterig-telegram-util-go/Win64/remoterig-telegram-bot.exe
env GOOS=windows GOARCH=386 go build -o ../../../../bin/remoterig-telegram-util-go/Win32/remoterig-telegram-bot.exe


# pfsense
env GOOS=freebsd GOARCH=amd64 go build -o ../../../../bin/remoterig-telegram-util-go/pfSense64/remoterig-telegram-bot
env GOOS=freebsd GOARCH=386 go build -o ../../../../bin/remoterig-telegram-util-go/pfSense32/remoterig-telegram-bot
