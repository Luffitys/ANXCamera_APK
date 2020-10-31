.class public Landroid/view/ScreenOptimizeObserver;
.super Landroid/database/ContentObserver;
.source "ScreenOptimizeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScreenOptimizeObserver$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenOptimizeObserver"

.field private static final WCG_MODE:I = 0x1


# instance fields
.field private mCallback:Landroid/view/ScreenOptimizeObserver$Callback;

.field private mContext:Landroid/content/Context;

.field private mThreadedRenderer:Landroid/view/ThreadedRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/ScreenOptimizeObserver$Callback;)V
    .registers 7

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/view/ScreenOptimizeObserver;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/view/ScreenOptimizeObserver;->mCallback:Landroid/view/ScreenOptimizeObserver$Callback;

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/view/ThreadedRenderer;->create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ScreenOptimizeObserver;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Landroid/view/ScreenOptimizeObserver;->mCallback:Landroid/view/ScreenOptimizeObserver$Callback;

    invoke-virtual {p0}, Landroid/view/ScreenOptimizeObserver;->isWCGEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/view/ScreenOptimizeObserver$Callback;->screenOptimizeSettingsChanged(Landroid/view/ThreadedRenderer;Z)V

    invoke-virtual {p0}, Landroid/view/ScreenOptimizeObserver;->register()V

    return-void
.end method


# virtual methods
.method public getCallback()Landroid/view/ScreenOptimizeObserver$Callback;
    .registers 2

    iget-object v0, p0, Landroid/view/ScreenOptimizeObserver;->mCallback:Landroid/view/ScreenOptimizeObserver$Callback;

    return-object v0
.end method

.method public getColorSpaceMode()I
    .registers 4

    iget-object v0, p0, Landroid/view/ScreenOptimizeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_space_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenMode()I
    .registers 4

    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x2

    :goto_9
    iget-object v1, p0, Landroid/view/ScreenOptimizeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_optimize_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public isWCGEnabled()Z
    .registers 5

    invoke-virtual {p0}, Landroid/view/ScreenOptimizeObserver;->getScreenMode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x4

    const/4 v3, 0x0

    if-eq v0, v1, :cond_d

    return v3

    :cond_d
    invoke-virtual {p0}, Landroid/view/ScreenOptimizeObserver;->getColorSpaceMode()I

    move-result v1

    if-ne v1, v2, :cond_14

    goto :goto_15

    :cond_14
    move v2, v3

    :goto_15
    return v2

    :cond_16
    return v2
.end method

.method public onChange(Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ScreenOptimizeObserver;->getCallback()Landroid/view/ScreenOptimizeObserver$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Landroid/view/ScreenOptimizeObserver;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {p0}, Landroid/view/ScreenOptimizeObserver;->isWCGEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/ScreenOptimizeObserver$Callback;->screenOptimizeSettingsChanged(Landroid/view/ThreadedRenderer;Z)V

    :cond_11
    return-void
.end method

.method public register()V
    .registers 5

    const-string v0, "ScreenOptimizeObserver"

    const-string/jumbo v1, "register"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "screen_optimize_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "color_space_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ScreenOptimizeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Landroid/view/ScreenOptimizeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setCallback(Landroid/view/ScreenOptimizeObserver$Callback;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ScreenOptimizeObserver;->mCallback:Landroid/view/ScreenOptimizeObserver$Callback;

    return-void
.end method

.method public unregister()V
    .registers 3

    const-string v0, "ScreenOptimizeObserver"

    const-string/jumbo v1, "unregister"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/ScreenOptimizeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
