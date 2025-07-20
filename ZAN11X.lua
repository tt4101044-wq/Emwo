local ReplicatedStorage = game:GetService("ReplicatedStorage")
local purchaseRequest = ReplicatedStorage:WaitForChild("PurchaseRequest")

local button10 = script.Parent:WaitForChild("Donate10")
local button50 = script.Parent:WaitForChild("Donate50")

button10.MouseButton1Click:Connect(function()
	purchaseRequest:FireServer(12345678) -- Thay bằng Developer Product ID của bạn (10 Robux)
end)

button50.MouseButton1Click:Connect(function()
	purchaseRequest:FireServer(87654321) -- Thay bằng Developer Product ID của bạn (50 Robux)
end)
