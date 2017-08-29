local AB = ElvUI[1]:GetModule("ActionBars")

LibStub("LibElvUIPlugin-1.0"):RegisterPlugin("ElvUI_RightClick")

hooksecurefunc(AB, "UpdateButtonConfig", function(_, bar)
	for _, button in pairs(bar.buttons) do
		button:SetAttribute("unit2", "player")
	end
end)