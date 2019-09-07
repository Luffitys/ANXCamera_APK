local exports = exports or {}
local FaceCapture = FaceCapture or {}
FaceCapture.__index = FaceCapture
function FaceCapture.new(construct, ...)
    local self = setmetatable({}, FaceCapture)
    self.cameras = {}
    self.faceID = nil
    self.captureType = nil
    self.captureVersion = nil
    self.alignArray = nil
    self.alignOffset = nil
    self.alignZ = nil
    if construct and FaceCapture.constructor then FaceCapture.constructor(self, ...) end
    return self
end

function FaceCapture:constructor()

end


function FaceCapture:onStart(comp)
    local scene = comp.entity.scene
    local capEntity = comp.entity
    local entities = scene.entities
    for i = 0, entities:size() - 1 do 
        local entity = entities:get(i)
        local camera = entity:getComponent("Camera")
        if camera ~= nil then
            if (camera:isLayerVisible(capEntity.layer)) then 
                table.insert(self.cameras, camera)
            end
        end
    end
end

function FaceCapture:onUpdate(comp, deltaTime)
    local scene = comp.entity.scene
    local capEntity = comp.entity
    if self.faceID < Amaz.Calibrate.faceCount then
        capEntity.visible = true
        self.cameras[1].projectionMatrix = Amaz.Calibrate.getPnPPMatrix()
        if self.captureType == Amaz.CaptureType.HUMAN then
            local modelMatrix = nil
            if self.captureVersion == Amaz.CaptureVersion.SOLVEPNP then 
                modelMatrix = Amaz.Calibrate.getPnPMMatrix(self.faceID, self.cameras[1])
            else
                local mvMatrix = Amaz.Calibrate.calcCVPointMVMatrix(self.cameras[1], self.faceID, self.alignArray, self.alignOffset, self.alignZ)
                modelMatrix = Amaz.Calibrate.MVMatrix2MMatrix(mvMatrix, self.cameras[1])
            end
            local trans = capEntity:getComponent("Transform")
            if trans ~= nil and modelMatrix ~= nil then 
                trans.localMatrix = modelMatrix
            end
        else
            print("--Lua-- FaceCapture:CAT Algorithm not supported!")
        end
    else
        capEntity.visible = false
        self.cameras[1]:clearTarget()
    end 
end

function FaceCapture:onEvent(comp, event)

end

exports.FaceCapture = FaceCapture
return exports
