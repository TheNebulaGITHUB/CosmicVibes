function onCreate()

  setPropertyFromClass('GameOverSubstate', 'characterName', 'b3 bf'); -- your character's json file name
  setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); -- sound to play when the death screen is triggered
  setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'B3 gameOver'); -- song that will play during the death screen
  setPropertyFromClass('GameOverSubstate', 'endSoundName', 'B3 gameOverEnd'); --sound to play when you press the confirm button to retry
end
