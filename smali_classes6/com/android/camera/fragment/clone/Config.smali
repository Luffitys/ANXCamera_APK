.class public Lcom/android/camera/fragment/clone/Config;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

.field private static sOpenUseGuideFromFirstUse:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/clone/Config;->sMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    return-object v0
.end method

.method public static isOpenUseGuideFromFirstUse()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/fragment/clone/Config;->sOpenUseGuideFromFirstUse:Z

    return v0
.end method

.method public static setCloneMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 0

    sput-object p0, Lcom/android/camera/fragment/clone/Config;->sMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    return-void
.end method

.method public static setOpenUseGuideFromFirstUse(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/camera/fragment/clone/Config;->sOpenUseGuideFromFirstUse:Z

    return-void
.end method
