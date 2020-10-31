.class public abstract Lcom/xiaomi/joyose/MiPlatformConstants;
.super Ljava/lang/Object;
.source "MiPlatformConstants.java"


# static fields
.field public static MI_PLATFORM_BOOSTER_CALLBACK_MAX_EVENT:I

.field public static MI_PLATFORM_BOOSTER_CALLBACK_NONE_EVENT:I

.field public static MI_PLATFORM_BOOSTER_CALLBACK_THERMAL_CHANGE_EVENT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/joyose/MiPlatformConstants;->MI_PLATFORM_BOOSTER_CALLBACK_NONE_EVENT:I

    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/joyose/MiPlatformConstants;->MI_PLATFORM_BOOSTER_CALLBACK_THERMAL_CHANGE_EVENT:I

    const/16 v0, 0x3e8

    sput v0, Lcom/xiaomi/joyose/MiPlatformConstants;->MI_PLATFORM_BOOSTER_CALLBACK_MAX_EVENT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
