-- 🎣 FISCH SCRIPT LOADER
-- Copy dan paste kode ini ke dalam executor Anda

-- Metode 1: Load script utama (main.lua)
loadstring(game:HttpGet("https://raw.githubusercontent.com/MELLISAEFFENDY/fffish/main/main.lua", true))()

-- Metode 2: Dengan error handling (direkomendasikan)
local success, result = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/MELLISAEFFENDY/fffish/main/main.lua", true))()
end)

if not success then
    warn("Failed to load script:", result)
else
    print("🎣 Fisch Script loaded successfully!")
end

-- Metode 3: Dengan fallback jika main server down
local urls = {
    "https://raw.githubusercontent.com/MELLISAEFFENDY/fffish/main/main.lua",
    "https://github.com/MELLISAEFFENDY/fffish/raw/main/main.lua"
}

local loaded = false
for i, url in ipairs(urls) do
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url, true))()
    end)
    
    if success then
        print("🎣 Fisch Script loaded from URL", i)
        loaded = true
        break
    else
        warn("Failed to load from URL", i, ":", result)
    end
end

if not loaded then
    error("❌ Failed to load script from all URLs")
end
