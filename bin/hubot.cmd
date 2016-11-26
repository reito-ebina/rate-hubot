@echo off

call npm install
SETLOCAL
SET PATH=node_modules\.bin;node_modules\hubot\node_modules\.bin;%PATH%
SET HUBOT_SLACK_TOKEN=xoxb-76381885185-b5ojhMmQ7x99Itsh9KfhV10A

node_modules\.bin\hubot.cmd --name "test-bot" %* 
