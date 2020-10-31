.class public Lmiui/securityspace/ConfigUtils;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isKitKat()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private static isPad()Z
    .registers 2

    const-string v0, "is_pad"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSecuritySpace()Z
    .registers 1

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isPad()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isKitKat()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isSupportXSpace()Z
    .registers 1

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isKitKat()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
