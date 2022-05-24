#!/bin/zsh

ps -ef | grep JetBrains | awk '{print $2}' | xargs kill -9
