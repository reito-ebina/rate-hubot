module.exports = (robot) ->
	robot.respond /honoka/, (msg) ->
		@exec = require('child_process').exec
		command = "python talk-data/GenerateText.py 3"
		#msg.send "Command: #{command}"
		@exec command, (error, stdout, stderr) ->
			msg.send error if error?
			msg.send stdout if stdout?
			msg.send stderr if stderr?
