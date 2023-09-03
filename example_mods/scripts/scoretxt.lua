
noRatingScoreFormat = 'Waiting for Vibe?: %health | Score: %score | Misses: %misses | Rating: %rating'
scoreFormat = 'Vibe: %health | Score: %score | Misses: %misses | Rating: %rating (%percent%)'
percentDecimals = 2


noRatingName = 'N/A'
ratingNames = {
	{100, "Cosmic vibes!!"},
	{90, "Astro!"},
	{80, "chill"},
	{70, "cool"},
	{69, "You are doing good"},
	{60, "you got it"},
	{50, "better than most people"},
	{40, "you need botplay?"},
	{20, "wtf?"},
	{0, "what are you community games"}
}

local errors
function updateRating()
	luaDebugMode = true
	local percent, rating = tonumber(getProperty("ratingPercent")) * 100, noRatingName
	local health = math.max(0, math.min(getHealth() * 50, 100))
	local showAcc = hits ~= 0

	if showAcc then
		local v
		for i = #ratingNames, 1, -1 do
			v = ratingNames[i]
			if (percent >= v[1]) then
				rating = v[2]
			else
				break
			end
		end
	end

	local decimals = 10 ^ percentDecimals
	percent = math.floor(percent * decimals) / decimals

	local str = showAcc and scoreFormat or noRatingScoreFormat
	str = str:gsub('%%score', score)
	str = str:gsub('%%misses', misses)
	str = str:gsub('%%rating', rating)
	str = str:gsub('%%percent', percent)
	str = str:gsub('%%health', health)

	setTextString("scoreTxt", str)
end

-- backwards compatibility
function onUpdateScore()
	onUpdate = nil; onUpdateScore = updateRating
	return updateRating()
end

onUpdate = updateRating