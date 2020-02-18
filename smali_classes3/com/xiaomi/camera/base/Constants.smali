.class public final Lcom/xiaomi/camera/base/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/base/Constants$EngineProcessAlgoType;,
        Lcom/xiaomi/camera/base/Constants$SatMaterCameraId;,
        Lcom/xiaomi/camera/base/Constants$AlgoType;,
        Lcom/xiaomi/camera/base/Constants$ResultImage;,
        Lcom/xiaomi/camera/base/Constants$ShotType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isIntentType(I)Z
    .locals 1

    const/4 v0, -0x7

    if-eq p0, v0, :cond_0

    const/4 v0, -0x6

    if-eq p0, v0, :cond_0

    const/4 v0, -0x5

    if-eq p0, v0, :cond_0

    const/4 v0, -0x3

    if-eq p0, v0, :cond_0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
