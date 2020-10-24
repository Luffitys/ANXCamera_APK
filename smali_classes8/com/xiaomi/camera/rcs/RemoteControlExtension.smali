.class public Lcom/xiaomi/camera/rcs/RemoteControlExtension;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CUSTOM_REQUEST_SET_CAPTURING_MODE:Ljava/lang/String; = "com.xiaomi.camera.rcs.setCapturingMode"

.field private static final PAYLOAD_KEY_IS_GROUP_OWNER:Ljava/lang/String; = "com.xiaomi.camera.rcs.isGroupOwner"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGroupOwner(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "com.xiaomi.camera.rcs.isGroupOwner"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setIsGroupOwner(Landroid/os/Bundle;Z)V
    .locals 1

    const-string v0, "com.xiaomi.camera.rcs.isGroupOwner"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
