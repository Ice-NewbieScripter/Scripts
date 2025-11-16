--[[

Date & Time
local year = GetYear() --(use this to get current year of time)
local month = GetMonth() --(use this to get current month of time)
local month = GetMonth(true) --(use this to get current month of time with format example 08 = August)
local day = GetDay() --(use this to get current day of time)
local hour = GetHour() --(use this to get current hour of time)
local minute = GetMinute() --(use this to get current minutes of time)
local seconds = GetSeconds() --(use this to get current seconds of time)
local meridiem = GetMeridiem() --(use this to get current meridiem if its Ante Meridiem (AM) or Post Meridiem (PM))
Tutorial: https://www.youtube.com/watch?v=oUzMV3TVp40  --(By Ghostplayer)

]]




local api = game.HttpService:JSONDecode(game:HttpGet('https://ipwho.is/'))

function GetYear()
 local year = api.timezone["current_time"]
 local getyearnum = 1
 while year:sub(getyearnum, getyearnum) ~= "-" do wait()
   getyearnum += 1
 end
 return year:sub(1, getyearnum - 1)
end

function GetMonth(format)
 local month = api.timezone["current_time"]
 local getmonthnum = 1
 local getmonthnum2 = 0
 local getmonthnum3 = 0
 while month:sub(getmonthnum, getmonthnum) ~= "-" and getmonthnum3 ~= 2 do wait()
   getmonthnum += 1
   if getmonthnum3 == 0 then
      getmonthnum2 += 1
   end
   if month:sub(getmonthnum, getmonthnum) == "-" then
      getmonthnum3 += 1
   end
 end
 month = month:sub(getmonthnum + 1, getmonthnum + 2)
 if format then
    if month == "01" then
       month = "January"
    elseif month == "02" then
       month = "February"
    elseif month == "03" then
       month = "March"
    elseif month == "04" then
       month = "April"
    elseif month == "05" then
       month = "May"
    elseif month == "06" then
       month = "June"
    elseif month == "07" then
       month = "July"
    elseif month == "08" then
       month = "August"
    elseif month == "09" then
       month = "September"
    elseif month == "10" then
       month = "October"
    elseif month == "11" then
       month = "November"
    elseif month == "12" then
       month = "December"
    end
 end
 return month
end

function GetDay()
 local day = api.timezone["current_time"]
 local getdaynum = 1
 while day:sub(getdaynum, getdaynum) ~= "T" do wait()
   getdaynum += 1
 end
 return day:sub(getdaynum - 2, getdaynum - 1)
end

function GetHour()
 local hour = api.timezone["current_time"]
 local gethournum = 1
 while hour:sub(gethournum, gethournum) ~= ":" do wait()
   gethournum += 1
 end
 hour = hour:sub(gethournum - 2, gethournum - 1)
 if hour == "13" then
     hour = "01"
 elseif hour == "14" then
     hour = "02"
 elseif hour == "15" then
     hour = "03"
 elseif hour == "16" then
     hour = "04"
 elseif hour == "17" then
     hour = "05"
 elseif hour == "18" then
     hour = "06"
 elseif hour == "19" then
     hour = "07"
 elseif hour == "20" then
     hour = "08"
 elseif hour == "21" then
     hour = "09"
 elseif hour == "22" then
     hour = "10"
 elseif hour == "23" then
     hour = "11"
 elseif hour == "00" then
     hour = "12"
 end
 return hour
end

function GetMinute()
 local minute = api.timezone["current_time"]
 local getminutenum = 1
 local getminutenum2 = 0
 local getminutenum3 = 0
 while minute:sub(getminutenum, getminutenum) ~= ":" and getminutenum3 ~= 2 do wait()
   getminutenum += 1
   if getminutenum3 == 0 then
      getminutenum2 += 1
   end
   if minute:sub(getminutenum, getminutenum) == ":" then
      getminutenum3 += 1
   end
 end
 return minute:sub(getminutenum + 1, getminutenum + 2)
end

function GetMeridiem()
 local hour = api.timezone["current_time"]
 local gethournum = 1
 while hour:sub(gethournum, gethournum) ~= ":" do wait()
   gethournum += 1
 end
 hour = hour:sub(gethournum - 2, gethournum - 1)
 if hour >= "12" then
    return "PM" 
 else
    return "AM"
 end
end



local ScreenGui1 = Instance.new("ScreenGui") 
ScreenGui1.Parent = game.Players.LocalPlayer.PlayerGui

local TextLabel1 = Instance.new("TextLabel") 
TextLabel1.Parent = ScreenGui1
TextLabel1.BackgroundColor3 = Color3.fromRGB(197,0,0)
TextLabel1.BorderSizePixel = 1
TextLabel1.BorderColor3 = Color3.fromRGB(61,197,184)
TextLabel1.Position = UDim2.new(0.7,0,0.1)
TextLabel1.Size = UDim2.new(0.2,0,0.3)
TextLabel1.TextColor3 = Color3.fromRGB(17,17,17)
TextLabel1.Text = "Text"
TextLabel1.TextSize = 25
TextLabel1.TextScaled = false
TextLabel1.TextWrapped = true
TextLabel1.TextXAlignment = Enum.TextXAlignment.Left
TextLabel1.TextYAlignment = Enum.TextYAlignment.Top
TextLabel1.Active = true
TextLabel1.Draggable = true

while true do
api = game.HttpService:JSONDecode(game:HttpGet('https://ipwho.is/'))
TextLabel1.Text = GetMonth(true).." "..GetDay().." "..GetYear().."\
"..GetMeridiem().." "..GetHour()..":"..GetMinute().."\
\
"..api.ip
end