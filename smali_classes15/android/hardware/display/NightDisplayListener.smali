.class public Landroid/hardware/display/NightDisplayListener;
.super Ljava/lang/Object;
.source "NightDisplayListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/NightDisplayListener$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Landroid/hardware/display/NightDisplayListener$Callback;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mManager:Landroid/hardware/display/ColorDisplayManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/NightDisplayListener;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Landroid/hardware/display/NightDisplayListener;->mManager:Landroid/hardware/display/ColorDisplayManager;

    iput p2, p0, Landroid/hardware/display/NightDisplayListener;->mUserId:I

    iput-object p3, p0, Landroid/hardware/display/NightDisplayListener;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/hardware/display/NightDisplayListener$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/display/NightDisplayListener$1;-><init>(Landroid/hardware/display/NightDisplayListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/display/NightDisplayListener;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/NightDisplayListener;->mCallback:Landroid/hardware/display/NightDisplayListener$Callback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/NightDisplayListener;->mManager:Landroid/hardware/display/ColorDisplayManager;

    return-object v0
.end method

.method private setCallbackInternal(Landroid/hardware/display/NightDisplayListener$Callback;)V
    .registers 8

    iget-object v0, p0, Landroid/hardware/display/NightDisplayListener;->mCallback:Landroid/hardware/display/NightDisplayListener$Callback;

    if-eq v0, p1, :cond_61

    iput-object p1, p0, Landroid/hardware/display/NightDisplayListener;->mCallback:Landroid/hardware/display/NightDisplayListener$Callback;

    if-nez p1, :cond_14

    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_61

    :cond_14
    if-nez v0, :cond_61

    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "night_display_activated"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/display/NightDisplayListener;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Landroid/hardware/display/NightDisplayListener;->mUserId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "night_display_auto_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/display/NightDisplayListener;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Landroid/hardware/display/NightDisplayListener;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    nop

    const-string v2, "night_display_custom_start_time"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/display/NightDisplayListener;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Landroid/hardware/display/NightDisplayListener;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    nop

    const-string v2, "night_display_custom_end_time"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/display/NightDisplayListener;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Landroid/hardware/display/NightDisplayListener;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    nop

    const-string v2, "night_display_color_temperature"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/display/NightDisplayListener;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Landroid/hardware/display/NightDisplayListener;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_61
    :goto_61
    return-void
.end method


# virtual methods
.method public synthetic lambda$setCallback$0$NightDisplayListener(Landroid/hardware/display/NightDisplayListener$Callback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/display/NightDisplayListener;->setCallbackInternal(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method

.method public setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Landroid/hardware/display/NightDisplayListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/display/-$$Lambda$NightDisplayListener$sOK1HmSbMnFLzc4SdDD1WpVWJiI;

    invoke-direct {v1, p0, p1}, Landroid/hardware/display/-$$Lambda$NightDisplayListener$sOK1HmSbMnFLzc4SdDD1WpVWJiI;-><init>(Landroid/hardware/display/NightDisplayListener;Landroid/hardware/display/NightDisplayListener$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    invoke-direct {p0, p1}, Landroid/hardware/display/NightDisplayListener;->setCallbackInternal(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method
