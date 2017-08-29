local AB = ElvUI[1]:GetModule("ActionBars");

local AddOnName = ...
LibStub("LibElvUIPlugin-1.0"):RegisterPlugin(AddOnName)

hooksecurefunc(AB, "UpdateButtonConfig", function(_, bar)
	for _, button in pairs(bar.buttons) do
		button:SetAttribute("unit2", "player");
	end
end);