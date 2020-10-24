.class public Lcom/android/camera/external/NotifyExternalManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/external/INotifyExternal;


# static fields
.field private static volatile sInstance:Lcom/android/camera/external/NotifyExternalManager;


# instance fields
.field private final mSendBroadcastNotifyExternal:Lcom/android/camera/external/SendBroadcastNotifyExternal;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/external/SendBroadcastNotifyExternal;

    invoke-direct {v0, p1}, Lcom/android/camera/external/SendBroadcastNotifyExternal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/external/NotifyExternalManager;->mSendBroadcastNotifyExternal:Lcom/android/camera/external/SendBroadcastNotifyExternal;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/camera/external/NotifyExternalManager;
    .locals 2

    sget-object v0, Lcom/android/camera/external/NotifyExternalManager;->sInstance:Lcom/android/camera/external/NotifyExternalManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/camera/external/NotifyExternalManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/external/NotifyExternalManager;->sInstance:Lcom/android/camera/external/NotifyExternalManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/external/NotifyExternalManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/camera/external/NotifyExternalManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/camera/external/NotifyExternalManager;->sInstance:Lcom/android/camera/external/NotifyExternalManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/external/NotifyExternalManager;->sInstance:Lcom/android/camera/external/NotifyExternalManager;

    return-object p0
.end method


# virtual methods
.method public notifyCameraResume()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/external/NotifyExternalManager;->mSendBroadcastNotifyExternal:Lcom/android/camera/external/SendBroadcastNotifyExternal;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/external/SendBroadcastNotifyExternal;->notifyCameraResume()V

    :cond_0
    return-void
.end method

.method public notifyModeAndFacing(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/external/NotifyExternalManager;->mSendBroadcastNotifyExternal:Lcom/android/camera/external/SendBroadcastNotifyExternal;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/external/SendBroadcastNotifyExternal;->notifyModeAndFacing(II)V

    :cond_0
    return-void
.end method
