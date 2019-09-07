local exports = exports or {}
local EffectEntry = EffectEntry or {}

EffectEntry.__index = EffectEntry
function EffectEntry.new(construct, ...)
    local self = setmetatable({}, EffectEntry)
    if construct and EffectEntry.constructor then EffectEntry.constructor(self, ...) end
    return self
end

function EffectEntry:constructor()
    self.runtimeIndex = 1
end


function EffectEntry:onStart(comp)
    -- obtain config result
    local entity = comp.entity
    self.entity = entity

    local efHolder = entity:getComponent("EffectHolder")
    local isAsFeature = efHolder:asFeature()
    --local featureLuaPath = efHolder:getAllFeatureLuaPaths():get(0)
    local featureLuaPaths = efHolder:getAllFeatureLuaPaths()

    -- include effect modules
    include("EffectUtils")
    include("EffectRuntime")

    -- prepare
    -- obtain all feature paths
    local pathSize = efHolder:getFeaturePathSize()
    local featurePaths = efHolder:getAllFeaturePaths()
    
    for pathIndex = 0, pathSize-1 do
        local path = featurePaths:get(pathIndex)
        -- check the feature type
        local featureType = efHolder:getFeature(path)
        print("Can Test Effect2dv3 efHolder, feature type", featureType)
        local feature = nil
        if (featureType == Amaz.FeatureType.FT_3DV3) then
            feature =  Runtime.Sticker3dv3Feature.new(true)
            Runtime.effect:addFeaturePath(feature, path)
            print("Can Test Effect3dv3 addFeature path ", path)
            feature:setEntity(self.entity) -- each feature map to a lua scene
        elseif (featureType == Amaz.FeatureType.FT_ARV3) then
            -- add later
        elseif (featureType == Amaz.FeatureType.FT_2DV3) then
            feature = Runtime.Sticker2dv3Feature.new(true)
            Runtime.effect:addFeaturePath(feature, path)
            feature:setEntity(self.entity) -- each feature map to a lua scene
        else
            -- add later
        end
        
        local luaPathSize = featureLuaPaths:size()
        for luaPathIndex = 0 , luaPathSize -1 do
            
            local luaPath = featureLuaPaths:get(luaPathIndex)
            if(path == luaPath) then
                -- include event.lua under the feature folder
                includeAbsolutePath(entity.scene.assetMgr.rootDir..luaPath.."/event")
                -- copy feature event handles
                local featureHandles = simpleCopyTable(EventHandles)
                feature:setHandles(featureHandles)
            
                 -- set luaSelf
                Runtime.This[self.runtimeIndex] = feature
                self.runtimeIndex = self.runtimeIndex + 1
                print("self.runtimeIndex="..self.runtimeIndex)
            end
        end
    end

    -- include event.lua in the path if any
    if(not isAsFeature) then
        print("Can Test Effect efHolder not as feature...begin")
        -- include event.lua under the root of the effect folder
        local path = entity.scene.assetMgr.rootDir
        includeAbsolutePath(path.."event")
        -- copy effect event handles
        local effectHandles = simpleCopyTable(EventHandles)
        -- set handles to effect
        Runtime.effect:setHandles(effectHandles)
        Runtime.This[self.runtimeIndex] = Runtime.effect
        print("Can Test Effect efHolder not as feature...end ")
    end

    local event = Amaz.Event()
    event.type = Amaz.EventType.EFFECT_COMPAT_EVENT
    event.args:pushBack(Amaz.BEFEventType.BET_EFFECT)
    comp.entity.scene:getSystem("EventSystem"):sendEvent(event)

end

function EffectEntry:onUpdate(comp, deltaTime)
	
end

function EffectEntry:onEvent(comp, event)
    if (event.type == Amaz.EventType.TOUCH_EVENT) then -- touch event
        local touch_phase = event.args:get(0).type
        if (touch_phase == Amaz.TouchPhase.BEGIN) then
            for index = 1, self.runtimeIndex do
                local This = Runtime.This[index]
                local handles = This:getHandles()
                if(handles.handleTouchEvent ~= nil) then
                    handles.handleTouchEvent(This, 1)
                end
            end
        end
        return true
    elseif (event.type == Amaz.EventType.RECORD_EVENT) then
        local eventCode = event.args:get(0)
        for index = 1, self.runtimeIndex do
            local This = Runtime.This[index]
            local handles = This:getHandles()
            if(handles.handleRecodeVedioEvent ~= nil) then
                handles.handleRecodeVedioEvent(This, eventCode)
            end
        end
        return true
    elseif (event.type == Amaz.EventType.EFFECT_COMPAT_EVENT) then -- event sdk algorithm event type
        -- handleEffectEvent事件，在EffectEntry中触发
        local args_0 = event.args:get(0)
        if (args_0 == Amaz.BEFEventType.BET_EFFECT) then
            for index = 1, self.runtimeIndex do
                local This = Runtime.This[index]
                local handles = This:getHandles()
                if(handles.handleEffectEvent ~= nil) then
                    handles.handleEffectEvent(This, 1)
                end
            end
            return true
        elseif(args_0 == Amaz.BEFEventType.BET_TIMER) then
            --print("BET_BASE_FACE_ATTRIBUTE")
            local timerId = event.args:get(1)
            local milliSeconds = event.args:get(2)
            for index = 1, self.runtimeIndex do
                local This = Runtime.This[index]
                local handles = This:getHandles()
                if (handles.handleTimerEvent ~= nil) then
                    --print("handleFaceAttributeEvent")
                    handles.handleTimerEvent(This, timerId, milliSeconds)
                end
            end
            return true
        elseif (args_0 == Amaz.BEFEventType.BET_ANIMATION) then
            local entityName = event.args:get(1)
            local clipName = event.args:get(2)
            local eventCode = event.args:get(3)
            for index = 1, self.runtimeIndex do
                local This = Runtime.This[index]
                local handles = This:getHandles()
                if(handles.handleAnimationEvent ~= nil) then
                    handles.handleAnimationEvent(This, entityName, clipName, eventCode)
                end
            end
            return true
        end
        
        -- C++层触发事件
        local result = event.args:get(0)
        local ev_type = result.eventType
        if(ev_type == Amaz.BEFEventType.BET_BASE_HAND_GESTURE) then -- hand gesture
            local hand_index = result.handIndex
            local hand_action = result.handAction
            for index = 1, self.runtimeIndex do
                local This = Runtime.This[index]
                local handles = This:getHandles()
                if(handles.handleHandGestureEvent ~= nil) then
                    handles.handleHandGestureEvent(This, hand_index, hand_action)
                end
            end
        elseif (ev_type == Amaz.BEFEventType.BET_BASE_FACE_DETECT) then
            local faceIndex = result.faceIndex
            local action = result.faceAction
            for index = 1, self.runtimeIndex do
                local This = Runtime.This[index]
                local handles = This:getHandles()
                if (handles.handleFaceActionEvent ~= nil) then
                    handles.handleFaceActionEvent(This, faceIndex, action)
                end
            end
        elseif(ev_type == Amaz.BEFEventType.BET_BASE_FACE_ATTRIBUTE) then
            --print("BET_BASE_FACE_ATTRIBUTE")
            local faceIndex = result.faceIndex
            local faceId = result.faceId
            local score = result.smileScore
            --print("faceIndex:"..faceIndex..",faceId:"..faceId..",score:"..score)
            for index = 1, self.runtimeIndex do
                local This = Runtime.This[index]
                local handles = This:getHandles()
                if (handles.handleFaceAttributeEvent ~= nil) then
                    --print("handleFaceAttributeEvent")
                    handles.handleFaceAttributeEvent(This, faceIndex, faceId, score)
                end
            end
        end
    else
        -- Other Event type
    end
    return true
end

exports.EffectEntry = EffectEntry
return exports
