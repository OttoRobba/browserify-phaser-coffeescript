module.exports =
  loadingLabel: ->
    #Here we add a label to let the user know we are loading everything
    #This is the "Loading" phrase in pixel art
    #You can just as easily change it for your own art :)
    @loading = game.add.sprite(game.world.centerX, game.world.centerY - 20, "loading")
    @loading.anchor.setTo 0.5, 0.5
    
    #This is the bright blue bar that is hidden by the dark bar
    @barBg = game.add.sprite(game.world.centerX, game.world.centerY + 40, "load_progress_bar")
    @barBg.anchor.setTo 0.5, 0.5
    
    #This bar will get cropped by the setPreloadSprite function as the game loads!
    @bar = game.add.sprite(game.world.centerX - 192, game.world.centerY + 40, "load_progress_bar_dark")
    @bar.anchor.setTo 0, 0.5
    game.load.setPreloadSprite @bar

  preload: ->
    @loadingLabel()
  
  #Add here all the assets that you need to game.load
  create: ->
    game.state.start "menu"
