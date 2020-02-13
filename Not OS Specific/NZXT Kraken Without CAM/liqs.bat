@echo off
title Kraken Monitor
mode con:cols=40 lines=7

:iter
liquidctl status
ping 127.0.0.1 -n 6 > nul
goto iter