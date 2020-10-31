.class public Lmiui/mipub/MipubUtils;
.super Ljava/lang/Object;
.source "MipubUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MipubUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasFollowedMipubs(Landroid/content/ContentResolver;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    const-string v0, "has_followed_mipub"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    move v1, v2

    :cond_c
    return v1
.end method

.method public static setHasFollowedMipubs(Landroid/content/ContentResolver;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    const-string v1, "has_followed_mipub"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
