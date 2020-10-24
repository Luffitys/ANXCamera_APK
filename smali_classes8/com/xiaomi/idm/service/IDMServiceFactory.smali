.class public Lcom/xiaomi/idm/service/IDMServiceFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "IDMServiceFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIDMService(Lcom/xiaomi/idm/api/IDMClientApi;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/idm/api/IDMService;
    .locals 5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x1980e

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x6e8f170c

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "ipcamera"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v2, "iot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/xiaomi/idm/service/iot/IPCameraService$Stub;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/IPCameraService$Stub;-><init>(Lcom/xiaomi/idm/api/IDMClientApi;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/xiaomi/idm/service/iot/IotService$Stub;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/IotService$Stub;-><init>(Lcom/xiaomi/idm/api/IDMClientApi;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
