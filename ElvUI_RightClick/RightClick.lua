local AB = ElvUI[1]:GetModule("ActionBars")
LibStub("LibElvUIPlugin-1.0"):RegisterPlugin("ElvUI_RightClick")

hooksecurefunc(AB, "UpdateButtonConfig", function(_, bar)
	bar:SetAttribute("unit-S"..(bar:GetAttribute("state-page") or 0).."Right", "player")
end)

-- Update Actiobars at Login to make it work properly - by fuba
local f = CreateFrame("FRAME")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", function(...)
	if event == "PLAYER_ENTERING_WORLD" then
		AB:UpdateButtonSettings()
		f:UnregisterEvent("PLAYER_ENTERING_WORLD")
	end
end)