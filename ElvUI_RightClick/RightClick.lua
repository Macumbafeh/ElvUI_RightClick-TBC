local AB = ElvUI[1]:GetModule("ActionBars")

LibStub("LibElvUIPlugin-1.0"):RegisterPlugin("ElvUI_RightClick")

hooksecurefunc(AB, "UpdateButtonConfig", function(_, bar)
	bar:SetAttribute("unit-S"..(bar:GetAttribute("state-page") or 0).."Right", "player")
end)