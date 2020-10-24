.class public abstract Lcom/xiaomi/idm/service/iot/IPCameraService$Skeleton;
.super Lcom/xiaomi/idm/service/iot/IPCameraService;
.source ""


# instance fields
.field private mSkeletonEventEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IPCameraService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enableEvent(IZ)I
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Skeleton;->mSkeletonEventEnabled:Z

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected notifySkeletonEvent([B)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Skeleton;->mSkeletonEventEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService;->notifyEvent(I[B)V

    :cond_0
    return-void
.end method
