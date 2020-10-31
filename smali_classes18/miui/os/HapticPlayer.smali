.class public Lmiui/os/HapticPlayer;
.super Ljava/lang/Object;
.source "HapticPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HapticPlayer"


# instance fields
.field private mAvailable:Z

.field private mEffect:Lmiui/os/DynamicEffect;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/os/IVibratorService;

.field private mStarted:Z

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lmiui/os/HapticPlayer;->mToken:Landroid/os/Binder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/os/HapticPlayer;->mStarted:Z

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/os/HapticPlayer;->mPackageName:Ljava/lang/String;

    const-string v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Lmiui/os/HapticPlayer;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Lmiui/os/HapticPlayer;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/os/HapticPlayer;->mAvailable:Z

    return-void
.end method

.method public constructor <init>(Lmiui/os/DynamicEffect;)V
    .registers 2

    invoke-direct {p0}, Lmiui/os/HapticPlayer;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/os/HapticPlayer;->setDataSource(Lmiui/os/DynamicEffect;)V

    return-void
.end method

.method public static isAvailable()Z
    .registers 2

    const-string v0, "sys.haptic.dynamiceffect"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const-string v0, "HapticPlayer"

    const-string v1, "device not support core haptic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public pause()V
    .registers 4

    iget-object v0, p0, Lmiui/os/HapticPlayer;->mService:Landroid/os/IVibratorService;

    const-string v1, "HapticPlayer"

    if-nez v0, :cond_c

    const-string v0, "Failed to pause haptic; no vibrator service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-boolean v2, p0, Lmiui/os/HapticPlayer;->mAvailable:Z

    if-nez v2, :cond_16

    const-string v0, "Failed to pause haptic; device not support!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    :try_start_16
    iget-object v2, p0, Lmiui/os/HapticPlayer;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v2}, Landroid/os/IVibratorService;->pause(Landroid/os/IBinder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/os/HapticPlayer;->mStarted:Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception v0

    const-string v2, "Failed to pause haptic."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method

.method public seekTo(J)V
    .registers 6

    iget-object v0, p0, Lmiui/os/HapticPlayer;->mService:Landroid/os/IVibratorService;

    const-string v1, "HapticPlayer"

    if-nez v0, :cond_c

    const-string v0, "Failed to seek haptic; no vibrator service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-boolean v2, p0, Lmiui/os/HapticPlayer;->mAvailable:Z

    if-nez v2, :cond_16

    const-string v0, "Failed to seek haptic; device not support!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    :try_start_16
    iget-object v2, p0, Lmiui/os/HapticPlayer;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v2}, Landroid/os/IVibratorService;->seekTo(JLandroid/os/IBinder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/os/HapticPlayer;->mStarted:Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception v0

    const-string v2, "Failed to pause haptic."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method

.method public setDataSource(Lmiui/os/DynamicEffect;)V
    .registers 4

    iget-boolean v0, p0, Lmiui/os/HapticPlayer;->mStarted:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmiui/os/HapticPlayer;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/os/HapticPlayer;->mStarted:Z

    const-string v0, "HapticPlayer"

    const-string v1, "setDataSource stop playing DynamicEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iput-object p1, p0, Lmiui/os/HapticPlayer;->mEffect:Lmiui/os/DynamicEffect;

    return-void
.end method

.method public start()V
    .registers 9

    iget-object v0, p0, Lmiui/os/HapticPlayer;->mService:Landroid/os/IVibratorService;

    const-string v7, "HapticPlayer"

    if-nez v0, :cond_c

    const-string v0, "Failed to play haptic; no vibrator service"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v1, p0, Lmiui/os/HapticPlayer;->mEffect:Lmiui/os/DynamicEffect;

    if-nez v1, :cond_16

    const-string v0, "Failed to play haptic; no effect"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    iget-boolean v1, p0, Lmiui/os/HapticPlayer;->mAvailable:Z

    if-nez v1, :cond_20

    const-string v0, "Failed to play haptic; device not support!"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    :try_start_20
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Lmiui/os/HapticPlayer;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/os/HapticPlayer;->mEffect:Lmiui/os/DynamicEffect;

    invoke-virtual {v3}, Lmiui/os/DynamicEffect;->get()Landroid/os/DynamicEffect;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "DynamicEffect"

    iget-object v6, p0, Lmiui/os/HapticPlayer;->mToken:Landroid/os/Binder;

    invoke-interface/range {v0 .. v6}, Landroid/os/IVibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/os/HapticPlayer;->mStarted:Z
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception v0

    const-string v1, "Failed to play haptic."

    invoke-static {v7, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3e
    return-void
.end method

.method public start(Lmiui/os/DynamicEffect;)V
    .registers 11

    iget-object v0, p0, Lmiui/os/HapticPlayer;->mService:Landroid/os/IVibratorService;

    const-string v1, "HapticPlayer"

    if-nez v0, :cond_c

    const-string v0, "Failed to play haptic; no vibrator service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    if-nez p1, :cond_14

    const-string v0, "Failed to play haptic; no effect"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    iget-boolean v0, p0, Lmiui/os/HapticPlayer;->mAvailable:Z

    if-nez v0, :cond_1e

    const-string v0, "Failed to play haptic; device not support!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    invoke-virtual {p0}, Lmiui/os/HapticPlayer;->stop()V

    :try_start_21
    iget-object v2, p0, Lmiui/os/HapticPlayer;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iget-object v4, p0, Lmiui/os/HapticPlayer;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lmiui/os/DynamicEffect;->get()Landroid/os/DynamicEffect;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "DynamicEffect"

    iget-object v8, p0, Lmiui/os/HapticPlayer;->mToken:Landroid/os/Binder;

    invoke-interface/range {v2 .. v8}, Landroid/os/IVibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_35} :catch_36

    goto :goto_3c

    :catch_36
    move-exception v0

    const-string v2, "Failed to play haptic."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3c
    return-void
.end method

.method public stop()V
    .registers 4

    iget-object v0, p0, Lmiui/os/HapticPlayer;->mService:Landroid/os/IVibratorService;

    const-string v1, "HapticPlayer"

    if-nez v0, :cond_c

    const-string v0, "Failed to stop haptic; no vibrator service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-boolean v2, p0, Lmiui/os/HapticPlayer;->mAvailable:Z

    if-nez v2, :cond_16

    const-string v0, "Failed to stop haptic; device not support!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    :try_start_16
    iget-object v2, p0, Lmiui/os/HapticPlayer;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v2}, Landroid/os/IVibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/os/HapticPlayer;->mStarted:Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception v0

    const-string v2, "Failed to stop haptic."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method
