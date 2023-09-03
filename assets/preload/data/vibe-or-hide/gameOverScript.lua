function onCreate()

  setPropertyFromClass('GameOverSubstate', 'characterName', 'cosmic bf'); -- your character's json file name
  setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'death noise'); -- sound to play when the death screen is triggered
  setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'cosmic bf gameOver'); -- song that will play during the death screen
  setPropertyFromClass('GameOverSubstate', 'endSoundName', 'cosmic bf gameOverEnd'); --sound to play when you press the confirm button to retry
end
