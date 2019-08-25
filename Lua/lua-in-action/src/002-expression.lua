---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Angus.
--- DateTime: 2019/8/4 17:30
---

-- 算术运算符
print(1 + 2)       -->打印 3
print(5 / 10)      -->打印 0.5。 这是Lua不同于c语言的
print(5.0 / 10)    -->打印 0.5。 浮点数相除的结果是浮点数
-- print(10 / 0)   -->注意除数不能为0，计算的结果会出错
print(2 ^ 10)      -->打印 1024。 求2的10次方

local num = 1357
print(num % 2)       -->打印 1
print((num % 2) == 1) -->打印 true。 判断num是否为奇数
print((num % 5) == 0)  -->打印 false。判断num是否能被5整数

-- 关系运算符
print(1 < 2)
print(1 == 2)
print(1 ~= 2)
local a,b = true, false
print(a == b)

-- 只有两个变量引用同一个对象时，才认为它们相等
local a = {x = 1, y = 0}
local b = {x = 1, y = 0}
print(a == b)

-- lua 字符串总是会被“内化”，即相同内容的字符串只会被保存一份
a = "hello"
b = "hello"
print(a == b)

-- 逻辑运算符
-- a and b 如果 a 为 nil，则返回 a，否则返回 b;
-- a or b 如果 a 为 nil，则返回 b，否则返回 a。
local c = nil
local d = 0
local e = 100
-- 对于 and 和 or “短路求值”
print(c and d)  --> 打印 nil
print(c and e)  --> 打印 nil
print(d and e)  --> 打印 100
print(c or d)   --> 打印 0
print(c or e)   --> 打印 100
-- 对于 not，永远只返回 true 或者 false
print(not c)    --> 打印 true
print(not d)    --> 打印 false

-- 字符串连接
print('hello ' .. 'world')
str = string.format("%s %s", "hello", "world")
print(str)
str2 = string.format("%d-%s-%.2f",123,"world",1.21)
print(str2)

-- 推荐使用 table 和 table.concat() 来进行很多字符串的拼接
local pieces = {}
for i, elem in ipairs({"1","2","3"}) do
    pieces[i] = elem
end
local res = table.concat(pieces)
print(res)