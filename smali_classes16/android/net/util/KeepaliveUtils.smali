.class public final Landroid/net/util/KeepaliveUtils;
.super Ljava/lang/Object;
.source "KeepaliveUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/KeepaliveUtils$KeepaliveDeviceConfigurationException;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KeepaliveUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportedKeepalives(Landroid/content/Context;)[I
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_c} :catch_e

    move-object v0, v1

    goto :goto_f

    :catch_e
    move-exception v1

    :goto_f
    if-eqz v0, :cond_9b

    const/16 v1, 0x8

    new-array v1, v1, [I

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_9a

    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_92

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8a

    :try_start_2c
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_39} :catch_81

    nop

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    move-result v9

    if-eqz v9, :cond_6a

    if-ltz v8, :cond_47

    aput v8, v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_47
    new-instance v2, Landroid/net/util/KeepaliveUtils$KeepaliveDeviceConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid supported count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/util/KeepaliveUtils$KeepaliveDeviceConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6a
    new-instance v2, Landroid/net/util/KeepaliveUtils$KeepaliveDeviceConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/util/KeepaliveUtils$KeepaliveDeviceConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_81
    move-exception v2

    new-instance v3, Landroid/net/util/KeepaliveUtils$KeepaliveDeviceConfigurationException;

    const-string v4, "Invalid number format"

    invoke-direct {v3, v4}, Landroid/net/util/KeepaliveUtils$KeepaliveDeviceConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8a
    new-instance v2, Landroid/net/util/KeepaliveUtils$KeepaliveDeviceConfigurationException;

    const-string v3, "Invalid parameter length"

    invoke-direct {v2, v3}, Landroid/net/util/KeepaliveUtils$KeepaliveDeviceConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_92
    new-instance v2, Landroid/net/util/KeepaliveUtils$KeepaliveDeviceConfigurationException;

    const-string v3, "Empty string"

    invoke-direct {v2, v3}, Landroid/net/util/KeepaliveUtils$KeepaliveDeviceConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9a
    return-object v1

    :cond_9b
    new-instance v1, Landroid/net/util/KeepaliveUtils$KeepaliveDeviceConfigurationException;

    const-string v2, "invalid resource"

    invoke-direct {v1, v2}, Landroid/net/util/KeepaliveUtils$KeepaliveDeviceConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSupportedKeepalivesForNetworkCapabilities([ILandroid/net/NetworkCapabilities;)I
    .registers 8

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_9

    return v2

    :cond_9
    aget v1, v0, v2

    aget v1, p0, v1

    array-length v3, v0

    :goto_e
    if-ge v2, v3, :cond_1b

    aget v4, v0, v2

    aget v5, p0, v4

    if-le v1, v5, :cond_18

    aget v1, p0, v4

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1b
    return v1
.end method
