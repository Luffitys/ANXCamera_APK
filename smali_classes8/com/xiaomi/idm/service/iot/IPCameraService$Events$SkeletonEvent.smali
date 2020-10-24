.class public Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent;
.super Lcom/xiaomi/idm/api/IDMService$Event;
.source ""


# instance fields
.field callback:Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent$Callback;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent$Callback;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/idm/api/IDMService$Event;-><init>(Lcom/xiaomi/idm/api/IDMService;I)V

    iput-object p2, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent;->callback:Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent$Callback;

    return-void
.end method


# virtual methods
.method protected onEvent([B)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent;->callback:Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent$Callback;

    invoke-interface {p0, p1}, Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent$Callback;->onSkeletonEvent([B)V

    return-void
.end method
