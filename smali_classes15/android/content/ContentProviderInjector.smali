.class public Landroid/content/ContentProviderInjector;
.super Ljava/lang/Object;
.source "ContentProviderInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCrossUserIncomingUri(Landroid/content/Context;I)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static isMmsProviderClass(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "com.android.providers.telephony.MmsProvider"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
