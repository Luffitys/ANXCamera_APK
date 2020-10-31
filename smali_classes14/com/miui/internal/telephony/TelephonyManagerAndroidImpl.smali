.class public Lcom/miui/internal/telephony/TelephonyManagerAndroidImpl;
.super Ljava/lang/Object;
.source "TelephonyManagerAndroidImpl.java"


# static fields
.field static final TAG:Ljava/lang/String; = "TelephonyAndroidImpl"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lmiui/telephony/TelephonyManager;
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_c

    new-instance v0, Lcom/miui/internal/telephony/Api26TelephonyManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api26TelephonyManagerImpl;-><init>()V

    return-object v0

    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_18

    new-instance v0, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;-><init>()V

    return-object v0

    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_24

    new-instance v0, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;-><init>()V

    return-object v0

    :cond_24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_30

    new-instance v0, Lcom/miui/internal/telephony/Api22TelephonyManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api22TelephonyManagerImpl;-><init>()V

    return-object v0

    :cond_30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3c

    new-instance v0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;-><init>()V

    return-object v0

    :cond_3c
    new-instance v0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;-><init>()V

    return-object v0
.end method
