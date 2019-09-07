local exports = exports or {}
local EffectEvent = EffectEvent or {}
EffectEvent.__index = EffectEvent

function EffectEvent.new(construct, ...)
    local self = setmetatable({}, EffectEvent)
    if construct and EffectEvent.constructor then EffectEvent.constructor(self, ...) end
    return self
end

function EffectEvent:constructor()
end

function EffectEvent:onStart(comp)
    print("Can Test EffectEvent onStart ....")
    include("EffectRuntime")

    local entity = comp.entity
    --local scene = entity.scene
    local eventAction = entity:getComponent("EventActionCoupler")
    if(eventAction ~= nil) then

    end
    self.eventAction = eventAction

    self.luaScene = Runtime.LuaScene.new(true)
    self.luaScene:setEntity(entity)
end

function EffectEvent:onUpdate(comp, deltaTime)

end

function EffectEvent:onEvent(comp, event)
    if (event.type == Amaz.EventType.EFFECT_COMPAT_EVENT) then -- event sdk algorithm event type
        local eventAction = self.eventAction
        local algorithm_res = event.args:get(0)
        local ev_type = algorithm_res.eventType
        
        if(ev_type == Amaz.BEFEventType.BET_USER)then
            if(algorithm_res.actionType == "boneAnimation") then
                local luaScene = self.luaScene
                local entityName = algorithm_res.entityName
                local action = algorithm_res.action
                local animName = algorithm_res.animClipName
                local isLoop = algorithm_res.isLoop
                if(action == "play")then
                    self.luaScene:play("BONE_ANIM", entityName, animName, isLoop)
                    self.eventAction.lastIsPlayAnimName = animName
                end
            end
        end
    end
end

exports.EffectEvent = EffectEvent
return exports
