.class public Landroid/media/AudioStatusHandler;
.super Ljava/lang/Object;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioStatusHandler$ModeState;,
        Landroid/media/AudioStatusHandler$AudioState;,
        Landroid/media/AudioStatusHandler$DeviceState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DELAY:J = 0x1d4c0L

.field public static final KEY_PID:Ljava/lang/String; = "pid"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final KEY_USAGE:Ljava/lang/String; = "usage"

.field public static final MODE_MASK_FOR_NOTIFY:Ljava/lang/String; = "mode_mask_for_notify"

.field public static final MODE_MASK_FOR_NOTIFY_DEFAULT:Ljava/lang/String; = "3"

.field private static final MSG_CANCEL_MODE_NOTIFICATION:I = 0x2712

.field private static final MSG_SEND_MODE_NOTIFICATION:I = 0x2711

.field private static final TAG:Ljava/lang/String;

.field private static sAudioStatusHandler:Landroid/media/AudioStatusHandler;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

.field private mAudioState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioStatusHandler$AudioState;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeviceState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioStatusHandler$DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private mHandle:Landroid/os/Handler;

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Landroid/media/AudioStatusHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioStatusHandler;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    new-instance v0, Landroid/media/AudioStatusHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/AudioStatusHandler$1;-><init>(Landroid/media/AudioStatusHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    new-instance v0, Landroid/media/AudioStatusHandler$2;

    invoke-direct {v0, p0}, Landroid/media/AudioStatusHandler$2;-><init>(Landroid/media/AudioStatusHandler;)V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    iput-object p1, p0, Landroid/media/AudioStatusHandler;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioStatusHandler;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioStatusHandler;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/AudioStatusHandler;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/AudioStatusHandler;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AudioStatusHandler;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->checkAndSetToNormal(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .registers 1

    sget-boolean v0, Landroid/media/AudioStatusHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Landroid/media/AudioStatusHandler;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/AudioStatusHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioStatusHandler;->cancelModeNotification()V

    return-void
.end method

.method static synthetic access$700(Landroid/media/AudioStatusHandler;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->cancelMessage(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/AudioStatusHandler;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioStatusHandler;->sendMessage(IJ)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/AudioStatusHandler;)Landroid/media/AudioManager$AudioPlaybackCallback;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    return-object v0
.end method

.method private addAudioState(I)Landroid/media/AudioStatusHandler$AudioState;
    .registers 7

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioStatusHandler$AudioState;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    if-eqz p1, :cond_12

    goto :goto_19

    :cond_12
    new-instance v1, Landroid/media/AudioStatusHandler$ModeState;

    invoke-direct {v1, p0}, Landroid/media/AudioStatusHandler$ModeState;-><init>(Landroid/media/AudioStatusHandler;)V

    move-object v0, v1

    nop

    :goto_19
    if-eqz v0, :cond_4a

    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioStatusHandler$DeviceState;

    if-nez v1, :cond_2d

    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->addDeviceState(I)Landroid/media/AudioStatusHandler$DeviceState;

    move-result-object v1

    :cond_2d
    invoke-virtual {v0, v1}, Landroid/media/AudioStatusHandler$AudioState;->updateDeviceState(Landroid/media/AudioStatusHandler$DeviceState;)Z

    iget-object v2, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_33
    iget-object v3, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v0

    :catchall_47
    move-exception v3

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_47

    throw v3

    :cond_4a
    const/4 v1, 0x0

    return-object v1
.end method

.method private addDeviceState(I)Landroid/media/AudioStatusHandler$DeviceState;
    .registers 6

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioStatusHandler$DeviceState;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v1, Landroid/media/AudioStatusHandler$DeviceState;

    invoke-direct {v1, p0, p1}, Landroid/media/AudioStatusHandler$DeviceState;-><init>(Landroid/media/AudioStatusHandler;I)V

    move-object v0, v1

    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_18
    iget-object v2, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw v2
.end method

.method private cancelMessage(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    return-void
.end method

.method private cancelModeNotification()V
    .registers 4

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    sget-boolean v1, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v1, :cond_22

    sget-object v1, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    const-string v2, "cancelAudioStatusNotification id 10001"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method private checkAndSetToNormal(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_28

    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    if-ne v5, v4, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    goto :goto_7

    :cond_29
    :goto_29
    if-nez v0, :cond_34

    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    invoke-direct {p0}, Landroid/media/AudioStatusHandler;->cancelModeNotification()V

    :cond_34
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;
    .registers 3

    sget-object v0, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    if-nez v0, :cond_17

    const-class v0, Landroid/media/AudioStatusHandler;

    monitor-enter v0

    :try_start_7
    sget-object v1, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    if-nez v1, :cond_12

    new-instance v1, Landroid/media/AudioStatusHandler;

    invoke-direct {v1, p0}, Landroid/media/AudioStatusHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    return-object v0
.end method

.method private sendMessage(IJ)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->cancelMessage(I)V

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public handleAudioStatusChanged(Landroid/os/Bundle;)V
    .registers 7

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_69

    :cond_9
    const-string/jumbo v0, "usage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/AudioStatusHandler;->addAudioState(I)Landroid/media/AudioStatusHandler$AudioState;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-virtual {v1, p1}, Landroid/media/AudioStatusHandler$AudioState;->update(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_4e

    :cond_1d
    sget-boolean v2, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v2, :cond_4d

    sget-object v2, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAudioStatusChanged type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/media/AudioStatusHandler$AudioState;->mUsage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    return-void

    :cond_4e
    :goto_4e
    sget-boolean v2, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v2, :cond_68

    sget-object v2, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAudioStatusChanged no update for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    return-void

    :cond_69
    :goto_69
    return-void
.end method

.method public handleSetForceUse(IILjava/lang/String;)V
    .registers 9

    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->addDeviceState(I)Landroid/media/AudioStatusHandler$DeviceState;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioStatusHandler$DeviceState;->update(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_5a

    :cond_d
    sget-boolean v1, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v1, :cond_45

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSetForceUse("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetForceUse type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioStatusHandler$AudioState;

    if-eqz v1, :cond_59

    invoke-virtual {v1, v0}, Landroid/media/AudioStatusHandler$AudioState;->updateDeviceState(Landroid/media/AudioStatusHandler$DeviceState;)Z

    invoke-virtual {v1}, Landroid/media/AudioStatusHandler$AudioState;->onConfigChanaged()Z

    :cond_59
    return-void

    :cond_5a
    :goto_5a
    sget-boolean v1, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v1, :cond_74

    sget-object v1, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetForceUse no update for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    return-void
.end method
