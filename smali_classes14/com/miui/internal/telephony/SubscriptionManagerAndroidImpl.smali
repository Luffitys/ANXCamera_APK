.class public Lcom/miui/internal/telephony/SubscriptionManagerAndroidImpl;
.super Ljava/lang/Object;
.source "SubscriptionManagerAndroidImpl.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SubscriptionAndroidImpl"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lmiui/telephony/SubscriptionManager;
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_c

    new-instance v0, Lcom/miui/internal/telephony/Api26SubscriptionManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api26SubscriptionManagerImpl;-><init>()V

    return-object v0

    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_18

    new-instance v0, Lcom/miui/internal/telephony/Api24SubscriptionManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api24SubscriptionManagerImpl;-><init>()V

    return-object v0

    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_24

    new-instance v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;-><init>()V

    return-object v0

    :cond_24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_30

    new-instance v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;-><init>()V

    return-object v0

    :cond_30
    new-instance v0, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;-><init>()V

    return-object v0
.end method
