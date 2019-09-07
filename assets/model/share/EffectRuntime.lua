-- define a runtime module for effect sdk
-- base class
local LuaBase = LuaBase or {}
LuaBase.__index = LuaBase
function LuaBase.new(construct, ...)
    local self = setmetatable({}, LuaBase)

    if construct and LuaBase.constructor then LuaBase.constructor(self, ...) end
    self.name = "LuaBase"
    return self
end

function LuaBase.constructor(self)
end

function LuaBase:setHandles(handles)
    self.handles = handles
end

function LuaBase:getHandles()
    return self.handles
end

-- LuaScene class
local LuaScene = LuaScene or LuaBase.new()
LuaScene.__index = LuaScene
LuaScene.__base = LuaBase
function LuaScene.new(construct, ...)
    local self = setmetatable({}, LuaScene)
    if construct and LuaScene.constructor then LuaScene.constructor(self, ...) end
    self.name = "LuaScene"
    return self
end

function LuaScene.constructor(self)
    LuaScene.__base.constructor(self)
    print("EffectRuntime LuaScene constructor ----")
end

function LuaScene:setEntity(entity)
    self.entity = entity
end

function LuaScene:getEntity()
    return self.entity
end

function LuaScene:play(anim_type, entity_name, clip_name, loop)
    local entity = self.entity.scene:findEntityBy(entity_name)
    local animator
    if(entity) then
        print("Can Test LuaScene play getAnimator")
        animator = entity:getComponent("Animator")
    end

    if(animator) then
        print("Can Test Runtime LuaScene play .. ", clip_name)
        local anim = animator:getAnimation(clip_name)
        local clip = anim:getClip()
        if(not clip:isPlaying()) then
            animator:stopAllAnimations()
            animator:schedule(clip)
        end
    end
end




-- Effect class
local Effect = Effect or LuaBase.new()
Effect.__index = Effect
Effect.__base = LuaBase
function Effect.new(construct, ...)
    local self = setmetatable({}, Effect)
    if construct and Effect.constructor then Effect.constructor(self, ...) end
    self.featureMap = {}
    self.name = "Effect"
    return self
end

function Effect.constructor(self)
    Effect.__base.constructor(self);
end

function Effect:addFeaturePath(feature, path)
    self.featureMap.path = feature
end

function Effect:getFeature(path)
    return self.featureMap.path
end

-- Base Feature class
local BaseFeature = BaseFeature or LuaBase.new()
BaseFeature.__index = BaseFeature
BaseFeature.__base = LuaBase
function BaseFeature.new(construct, ...)
    local self = setmetatable({}, BaseFeature)
    if construct and BaseFeature.constructor then BaseFeature.constructor(self, ...) end
    self.luaScene = LuaScene.new(true)
    return self
end
function BaseFeature.constructor(self)
    BaseFeature.__base.constructor(self);
    
end

function BaseFeature:getLuaScene()
    return self.luaScene
end

function BaseFeature:setEntity(entity)
    self.luaScene:setEntity(entity)
end

function BaseFeature:getEntity()
    return self.luaScene:getEntity()
end

-- 3dv3 feature class
local Sticker3dv3Feature = Sticker3dv3Feature or BaseFeature.new()
Sticker3dv3Feature.__index = Sticker3dv3Feature
Sticker3dv3Feature.__base = BaseFeature
function Sticker3dv3Feature.new(construct, ...)
    local self = setmetatable({}, Sticker3dv3Feature)
    if construct and Sticker3dv3Feature.constructor then Sticker3dv3Feature.constructor(self, ...) end
    self.name = "3dv3"
    return self
end
function Sticker3dv3Feature.constructor(self)
    Sticker3dv3Feature.__base.constructor(self);
    print("EffectRuntime Sticker3dv3Feature constructor ----")
end

-- 2dv3 feature class
local Sticker2dv3Feature = Sticker2dv3Feature or BaseFeature.new()
Sticker2dv3Feature.__index = Sticker2dv3Feature
Sticker2dv3Feature.__base = BaseFeature
function Sticker2dv3Feature.new(construct, ...)
    local self = setmetatable({}, Sticker2dv3Feature)
    if construct and Sticker2dv3Feature.constructor then Sticker2dv3Feature.constructor(self, ...) end
    self.name = "2dv3"
    return self
end

function Sticker2dv3Feature.constructor(self)
    Sticker2dv3Feature.__base.constructor(self);
end

function Sticker2dv3Feature:playClip(entityName, clipName, speed, loopCount)
    local entityClipName = tostring(entityName)..":"..tostring(clipName)
    local entities = self:getEntity().scene:findEntitiesByName(entityClipName)
    for i = 0, entities:size() - 1 do 
        local entity = entities:get(i)
        local sticker2dv3component = entity:getComponent("Sticker2DV3Component")
        if sticker2dv3component then
            sticker2dv3component:playClip(speed, loopCount)
            print("Sticker2dv3Feature.playClip(",entityName,clipName,tostring(speed),tostring(loopCount),")")
        end
        local spriteRenderer = entity:getComponent("SpriteRenderer")
        if spriteRenderer then
            spriteRenderer.enabled = true
        end
    end
end
function Sticker2dv3Feature:resumeClip(entityName, clipName, isResume)
    local entityClipName = tostring(entityName)..":"..tostring(clipName)
    local entities = self:getEntity().scene:findEntitiesByName(entityClipName)
    for i = 0, entities:size() - 1 do 
        local entity = entities:get(i)
        local sticker2dv3component = entity:getComponent("Sticker2DV3Component")
        if sticker2dv3component then
            sticker2dv3component:resumeClip(isResume)
            print("Sticker2dv3Feature.resumeClip(",entityName,clipName,tostring(isResume),")")
        end
    end
    
end
function Sticker2dv3Feature:resetClip(entityName, clipName)
    local entityClipName = tostring(entityName)..":"..tostring(clipName)
    local entities = self:getEntity().scene:findEntitiesByName(entityClipName)
    for i = 0, entities:size() - 1 do 
        local entity = entities:get(i)
        local sticker2dv3component = entity:getComponent("Sticker2DV3Component")
        if sticker2dv3component then
            sticker2dv3component:resetClip()
            print("Sticker2dv3Feature.resetClip(",entityName,clipName,")")
        end
    end
    
end
function Sticker2dv3Feature:appearClip(entityName, clipName, isAppear)
    local entityClipName = tostring(entityName)..":"..tostring(clipName)
    local entities = self:getEntity().scene:findEntitiesByName(entityClipName)
    for i = 0, entities:size() - 1 do 
        local entity = entities:get(i)
        local sticker2dv3component = entity:getComponent("Sticker2DV3Component")
        if sticker2dv3component then
            sticker2dv3component:appearClip(isAppear)
            print("Sticker2dv3Feature.appearClip(",entityName,clipName,tostring(isAppear),")")
        end
        local spriteRenderer = entity:getComponent("SpriteRenderer")
        if spriteRenderer then
            spriteRenderer.enabled = isAppear
        end
    end
    
end

function Sticker2dv3Feature:addTimer(timerId, timerType, milliSeconds)
    if(timerType == EffectSdk.BEF_TIMER_EVENT_ONCE) then
        self:getEntity().scene:getSystem("TimerSystem"):addTimer(timerId, Amaz.BEFTimerType.BEF_TIMER_EVENT_ONCE, milliSeconds)
    else
        self:getEntity().scene:getSystem("TimerSystem"):addTimer(timerId, Amaz.BEFTimerType.BEF_TIMER_EVENT_CIRCLE, milliSeconds)
    end
end

function Sticker2dv3Feature:removeTimer(timerId, timerType, milliSeconds)
    if(timerType == EffectSdk.BEF_TIMER_EVENT_ONCE) then
        self:getEntity().scene:getSystem("TimerSystem"):removeTimer(timerId, Amaz.BEFTimerType.BEF_TIMER_EVENT_ONCE, milliSeconds)
    else
        self:getEntity().scene:getSystem("TimerSystem"):removeTimer(timerId, Amaz.BEFTimerType.BEF_TIMER_EVENT_CIRCLE, milliSeconds)
    end
end

-- wrapper classes that each is associated with event.lua file
local effect = Effect.new(true)
--local sticker3dv3 = Sticker3dv3Feature.new(true)

-- define EffectSdk Module
EffectSdk = {}
EffectSdk.castSticker3DV3Feature = function(feature) return feature end
EffectSdk.castSticker2DV3Feature = function(feature) return feature end

-- define a Runtime Module
Runtime = {}
Runtime.Sticker3dv3Feature = Sticker3dv3Feature
Runtime.Sticker2dv3Feature = Sticker2dv3Feature
Runtime.effect = effect
Runtime.LuaScene = LuaScene

Runtime.This = {}
    
