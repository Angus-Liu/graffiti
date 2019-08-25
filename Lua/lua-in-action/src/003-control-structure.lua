---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Angus.
--- DateTime: 2019/8/4 17:45
---

-- 控制结构 if-else
x = 10
if x > 0 then
    print("x > 0")
end

if x > 0 then
    print("x is a positive number")
else
    print("x is a negative number")
end

score = 90
if score == 100 then
    print("Very good!Your score is 100")
elseif score >= 60 then
    print("Congratulations, you have passed it,your score greater or equal to 60")
    --此处可以添加多个elseif
else
    print("Sorry, you do not pass the exam! ")
end

-- while 型控制结构
x = 1
sum = 0
while x <= 10 do
    sum = sum + x;
    x = x + 1;
end
print(sum)

local t = { 1, 3, 5, 8, 11, 18, 21 }
for i, v in ipairs(t) do
    if 11 == v then
        print("index[" .. i .. "] have right value[11]")
        break
    end
end

-- repeat 控制结构
x = 10
repeat
    print(x)
until true

-- for 控制结构
for i = 1, 5 do
    print(i)
end

for i = 10, 1, -1 do
    print(i)
end

-- for 泛型
local a = { "a", "b", "c", "d" }
for i, v in ipairs(a) do
    print("index: " .. i .. " value: " .. v)
end

local days = {
    "Monday", "Tuesday", "Wednesday", "Thursday",
    "Friday", "Saturday","Sunday"
}
local revDays = {}
for k, v in pairs(days) do
    revDays[v] = k
end
for k,v in pairs(revDays) do
    print("k:", k, " v:", v)
end

-- break, return 和 goto
-- 计算最小的x,使从1到x的所有数相加和大于100
sum = 0
i = 1
while true do
    sum = sum + i
    if sum > 100 then
        break
    end
    i = i + 1
end
print("The result is " .. i)  -->output:The result is 14

local function add(x, y)
    return x + y
    --print("add: I will return the result " .. (x + y))
    --因为前面有个return，若不注释该语句，则会报错
end

for i=1, 3 do
    if i <= 2 then
        print(i, "yes continue")
        goto continue
    end

    print(i, " no continue")

    ::continue::
    print([[i'm end]])
end
