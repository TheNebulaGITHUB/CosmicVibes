function onCreate()

  setPropertyFromClass('GameOverSubstate', 'characterName', 'cv-pico'); -- your character's json file name
  setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'pico death'); -- sound to play when the death screen is triggered
  setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'Void gameOver'); -- song that will play during the death screen
  setPropertyFromClass('GameOverSubstate', 'endSoundName', 'Void gameOverEnd'); --sound to play when you press the confirm button to retry
end
