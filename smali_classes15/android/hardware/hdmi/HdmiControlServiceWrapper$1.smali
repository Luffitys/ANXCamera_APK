.class Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;
.super Landroid/hardware/hdmi/IHdmiControlService$Stub;
.source "HdmiControlServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiControlServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiControlServiceWrapper;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    return-void
.end method

.method public addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    return-void
.end method

.method public addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    return-void
.end method

.method public addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    return-void
.end method

.method public addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method public addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method public addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    return-void
.end method

.method public askRemoteDeviceToBecomeActiveSource(I)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->askRemoteDeviceToBecomeActiveSource(I)V

    return-void
.end method

.method public canChangeSystemAudioMode()Z
    .registers 2

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->canChangeSystemAudioMode()Z

    move-result v0

    return v0
.end method

.method public clearTimerRecording(II[B)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->clearTimerRecording(II[B)V

    return-void
.end method

.method public deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getDeviceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getInputDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalAddress()I
    .registers 2

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getPhysicalAddress()I

    move-result v0

    return v0
.end method

.method public getPortInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getPortInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedTypes()[I
    .registers 2

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getSupportedTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public getSystemAudioMode()Z
    .registers 2

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getSystemAudioMode()Z

    move-result v0

    return v0
.end method

.method public isHdmiCecVolumeControlEnabled()Z
    .registers 2

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->isHdmiCecVolumeControlEnabled()Z

    move-result v0

    return v0
.end method

.method public oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public powerOffRemoteDevice(II)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->powerOffRemoteDevice(II)V

    return-void
.end method

.method public powerOnRemoteDevice(II)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->powerOnRemoteDevice(II)V

    return-void
.end method

.method public queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    return-void
.end method

.method public removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    return-void
.end method

.method public removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method public removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method public reportAudioStatus(IIIZ)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->reportAudioStatus(IIIZ)V

    return-void
.end method

.method public sendKeyEvent(IIZ)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->sendKeyEvent(IIZ)V

    return-void
.end method

.method public sendMhlVendorCommand(III[B)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->sendMhlVendorCommand(III[B)V

    return-void
.end method

.method public sendStandby(II)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->sendStandby(II)V

    return-void
.end method

.method public sendVendorCommand(II[BZ)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->sendVendorCommand(II[BZ)V

    return-void
.end method

.method public sendVolumeKeyEvent(IIZ)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->sendVolumeKeyEvent(IIZ)V

    return-void
.end method

.method public setArcMode(Z)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setArcMode(Z)V

    return-void
.end method

.method public setHdmiCecVolumeControlEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setHdmiCecVolumeControlEnabled(Z)V

    return-void
.end method

.method public setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    return-void
.end method

.method public setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    return-void
.end method

.method public setProhibitMode(Z)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setProhibitMode(Z)V

    return-void
.end method

.method public setStandbyMode(Z)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setStandbyMode(Z)V

    return-void
.end method

.method public setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public setSystemAudioModeOnForAudioOnlySource()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setSystemAudioModeOnForAudioOnlySource()V

    return-void
.end method

.method public setSystemAudioMute(Z)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setSystemAudioMute(Z)V

    return-void
.end method

.method public setSystemAudioVolume(III)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setSystemAudioVolume(III)V

    return-void
.end method

.method public startOneTouchRecord(I[B)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->startOneTouchRecord(I[B)V

    return-void
.end method

.method public startTimerRecording(II[B)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->startTimerRecording(II[B)V

    return-void
.end method

.method public stopOneTouchRecord(I)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->stopOneTouchRecord(I)V

    return-void
.end method
