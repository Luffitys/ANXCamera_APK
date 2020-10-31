.class public Lmiui/content/res/AssetManagerUtil;
.super Ljava/lang/Object;
.source "AssetManagerUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCookieName(Landroid/content/res/AssetManager;I)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    return-object v0
.end method
