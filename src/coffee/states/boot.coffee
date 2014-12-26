module.exports =
	init: ->
		#Add here your scaling options

	preload: ->
		#Load just the essential files for the loading screen,
		#they will be used in the Load State
		game.load.image "loading", "assets/loading.png"
		game.load.image "load_progress_bar", "assets/progress_bar_bg.png"
		game.load.image "load_progress_bar_dark", "assets/progress_bar_fg.png"

	create: ->
		game.state.start "load"
