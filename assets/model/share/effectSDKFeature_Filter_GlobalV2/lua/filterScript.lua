local exports = exports or {}

local filterScript = filterScript or {}

filterScript.__index = filterScript

function filterScript.new(construct, ...)
    local self = setmetatable({}, filterScript)
    self.filterMaterial = nil
    self.newLookupTex = nil
    if construct and filterScript.constructor then
        filterScript.constructor(self, ...)
    end
    return self
end

function filterScript:constructor()

end


function filterScript:onStart(comp)
    local scene = comp.entity.scene
    local entities = scene.entities
    local filterTag = 2
    for i = 0, entities:size() - 1 do
        local entity = entities:get(i)
        if entity:hasTag(filterTag) then
            local renderer = entity:getComponent("MeshRenderer")
            if renderer ~= nil then
                self.filterMaterial = renderer.materials:get(0)
                local origLookupTex = self.filterMaterial.properties:getTex("inputImageTexture2")
                self.newLookupTex =  self.filterMaterial.properties:getTex("inputImageTexture3")
                self.filterMaterial.properties:setTex("inputImageTexture2",origLookupTex)

                local cfg = Amaz.BuiltinObject:getBuiltinEffectConfig()
                self.filterMaterial.properties:setFloat("leftIntensity",cfg:getInternalFilterIntensity())
                self.filterMaterial.properties:setFloat("rightIntensity",cfg:getInternalFilterIntensity())
                self.filterMaterial.properties:setFloat("mposition",cfg:getInternalFilterPosition())

                local leftTex = cfg:getInternalFilterLeft()
                print("leftTex: "..leftTex)
                if leftTex ~= nil then
                    self.filterMaterial.properties:setTex("inputImageTexture2", leftTex)
                end
                local rightTex = cfg:getInternalFilterRight()
                print("rightTex: "..rightTex)
                if rightTex ~= nil then
                    self.filterMaterial.properties:setTex("inputImageTexture3", rightTex)
                end
                break
            end
        end

    end    
end


function filterScript:onUpdate(comp, deltaTime)
    
end

function filterScript:onEvent(comp, event)
    -- print("event.type = " .. event.type .. ", event.name: " .. event.args:get(0) .. ", event.key: " .. event.args:get(1) .. ", event.value: " ..  event.args:get(2))
    if event.args:get(0) == "SetEffectIntensity" and event.args:get(1) == "Internal_Filter" then
        -- 设置滤镜程度
        self.filterMaterial.properties:setFloat("rightIntensity", event.args:get(2))
    end

    -- if event.args:get(0) == "SetEffectIntensity" and event.args:get(1) == "Switch_Filter"  then
    --     -- 渐进式切换滤镜
    --     self.filterMaterial.properties:setTex("inputImageTexture3",self.newLookupTex)
    --     self.filterMaterial.properties:setFloat("mposition", event.args:get(2))
    -- end

end

exports.filterScript = filterScript

return exports
