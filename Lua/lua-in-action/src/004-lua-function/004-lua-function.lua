---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Angus.
--- DateTime: 2019/8/25 14:20
---

local function say(something)
    print(something)
end

say("Angus")


local function test(a)
    a.b = 0
    print(a)
end

local a = {
    b = 1
}
test(a)
print(a.b)

local function fun(...)
    print(...)
end

fun(1,2,3)


local s, e = string.find("hello world", "llo")
print(s, e)

local function swap(a, b)
    return b, a
end

print(swap(1, 2))

local function run(x, y)
    print('run', x, y)
end

local function attack(targetId)
    print('targetId', targetId)
end

local function do_action(method, ...)
    method(...)
end

do_action(run, 1, 2, 3)
do_action(attack, 3)