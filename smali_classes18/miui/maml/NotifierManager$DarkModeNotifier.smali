.class public Lmiui/maml/NotifierManager$DarkModeNotifier;
.super Lmiui/maml/NotifierManager$BaseNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DarkModeNotifier"
.end annotation


# static fields
.field public static final DARK_MODE:I = 0x1

.field public static final DARK_WALLPAPER_MODE:I = 0x2


# instance fields
.field private mComponentCallback:Landroid/content/ComponentCallbacks2;

.field private mDarkModeObserver:Landroid/database/ContentObserver;

.field private mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

.field private mIsDarkMode:Z

.field private mIsDarkWallpaperMode:Z

.field private mIsUIModeNight:Z

.field private mMamlDarkMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    new-instance v0, Lmiui/maml/NotifierManager$DarkModeNotifier$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/maml/NotifierManager$DarkModeNotifier$1;-><init>(Lmiui/maml/NotifierManager$DarkModeNotifier;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mDarkModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lmiui/maml/NotifierManager$DarkModeNotifier$2;

    invoke-direct {v0, p0, v1}, Lmiui/maml/NotifierManager$DarkModeNotifier$2;-><init>(Lmiui/maml/NotifierManager$DarkModeNotifier;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lmiui/maml/NotifierManager$DarkModeNotifier$3;

    invoke-direct {v0, p0}, Lmiui/maml/NotifierManager$DarkModeNotifier$3;-><init>(Lmiui/maml/NotifierManager$DarkModeNotifier;)V

    iput-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/NotifierManager$DarkModeNotifier;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/NotifierManager$DarkModeNotifier;->updateDarkMode()V

    return-void
.end method

.method static synthetic access$300(Lmiui/maml/NotifierManager$DarkModeNotifier;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/NotifierManager$DarkModeNotifier;->checkIfNeedToNotify()V

    return-void
.end method

.method static synthetic access$400(Lmiui/maml/NotifierManager$DarkModeNotifier;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/NotifierManager$DarkModeNotifier;->updateDarkWallpaperMode()V

    return-void
.end method

.method static synthetic access$500(Lmiui/maml/NotifierManager$DarkModeNotifier;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$DarkModeNotifier;->updateUIModeNight(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private checkIfNeedToNotify()V
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mIsDarkMode:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mIsUIModeNight:Z

    if-eqz v1, :cond_b

    :cond_9
    or-int/lit8 v0, v0, 0x1

    :cond_b
    iget-boolean v1, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mIsDarkWallpaperMode:Z

    if-eqz v1, :cond_11

    or-int/lit8 v0, v0, 0x2

    :cond_11
    iget v1, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mMamlDarkMode:I

    if-eq v0, v1, :cond_35

    iput v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mMamlDarkMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1}, Lmiui/maml/NotifierManager$DarkModeNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maml dark mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotifierManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-void
.end method

.method private updateDarkMode()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ui_night_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    iput-boolean v2, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mIsDarkMode:Z

    return-void
.end method

.method private updateDarkWallpaperMode()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "darken_wallpaper_under_dark_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mIsDarkWallpaperMode:Z

    return-void
.end method

.method private updateUIModeNight(Landroid/content/res/Configuration;)V
    .registers 4

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mIsUIModeNight:Z

    return-void
.end method


# virtual methods
.method protected onListenerAdded(Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .registers 4

    iget v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mMamlDarkMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v0}, Lmiui/maml/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method

.method protected onRegister()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ui_night_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mDarkModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "darken_wallpaper_under_dark_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2f
    invoke-direct {p0}, Lmiui/maml/NotifierManager$DarkModeNotifier;->updateDarkMode()V

    invoke-direct {p0}, Lmiui/maml/NotifierManager$DarkModeNotifier;->updateDarkWallpaperMode()V

    iget-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/NotifierManager$DarkModeNotifier;->updateUIModeNight(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lmiui/maml/NotifierManager$DarkModeNotifier;->checkIfNeedToNotify()V

    return-void
.end method

.method protected onUnregister()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mDarkModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/maml/NotifierManager$DarkModeNotifier;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_22
    return-void
.end method
