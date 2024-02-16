-- Density values from 0.0 to 1.0.
DensityMultiplier = 0.0
Citizen.CreateThread(function()
	while true do
	    Citizen.Wait(0)
	    SetVehicleDensityMultiplierThisFrame(DensityMultiplier)
	    SetPedDensityMultiplierThisFrame(DensityMultiplier)
	    SetRandomVehicleDensityMultiplierThisFrame(DensityMultiplier)
	    SetParkedVehicleDensityMultiplierThisFrame(DensityMultiplier)
	    SetScenarioPedDensityMultiplierThisFrame(DensityMultiplier, DensityMultiplier)
	end
end)

Citizen.CreateThread(function()
      while true do
        Citizen.Wait(5)
        SetPedConfigFlag(PlayerPedId(), 35, false)
    end
end)

CreateThread(function()
    while true do
        Wait(500)
        local gamepad = GetLastInputMethod(2)
        if not gamepad then
           SetPlayerTargetingMode(3)--set targeting to "free-aim" if a controller is being used
        else
            Wait(2000)
        end
    end
end)

