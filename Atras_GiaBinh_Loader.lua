-- Atras | GiaBình Loader
-- Giữ nguyên loader gốc, chỉ thay thông tin hiển thị và liên kết.

local SOURCE_URL = "https://pastefy.app/xv1tJF2q/raw"

local source = game:HttpGet(SOURCE_URL)

source = source:gsub('AuthorName = "Kai Roblox"', 'AuthorName = "Atras | GiaBình"')
source = source:gsub('%-%- Được share bởi Kai Roblox', '-- Được share bởi Atras | GiaBình')
source = source:gsub('DiscordLink = "https://discord.gg/kairoblox"',
                      'DiscordLink = "https://discord.gg/uqhEpzXy9q"')
source = source:gsub('DiscordLabel = "discord.gg/kairoblox"',
                      'DiscordLabel = "discord.gg/uqhEpzXy9q"')
source = source:gsub('YouTubeLink = "https://youtube.com/@kairoblox"',
                      'YouTubeLink = "https://youtube.com/@binngamingg?si=DiC2PvPzceaba-yY"')
source = source:gsub('YouTubeLabel = "youtube.com/@kairoblox"',
                      'YouTubeLabel = "youtube.com/@binngamingg"')

local fn, err = loadstring(source)
if not fn then
    error("Không thể tải loader: " .. tostring(err))
end

return fn()
