.class public Landroid/media/tv/tuner/Lnb;
.super Ljava/lang/Object;
.source "Lnb.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/Lnb$EventType;,
        Landroid/media/tv/tuner/Lnb$Position;,
        Landroid/media/tv/tuner/Lnb$Tone;,
        Landroid/media/tv/tuner/Lnb$Voltage;
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_DISEQC_RX_OVERFLOW:I = 0x0

.field public static final EVENT_TYPE_DISEQC_RX_PARITY_ERROR:I = 0x2

.field public static final EVENT_TYPE_DISEQC_RX_TIMEOUT:I = 0x1

.field public static final EVENT_TYPE_LNB_OVERLOAD:I = 0x3

.field public static final POSITION_A:I = 0x1

.field public static final POSITION_B:I = 0x2

.field public static final POSITION_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Lnb"

.field public static final TONE_CONTINUOUS:I = 0x1

.field public static final TONE_NONE:I = 0x0

.field public static final VOLTAGE_11V:I = 0x2

.field public static final VOLTAGE_12V:I = 0x3

.field public static final VOLTAGE_13V:I = 0x4

.field public static final VOLTAGE_14V:I = 0x5

.field public static final VOLTAGE_15V:I = 0x6

.field public static final VOLTAGE_18V:I = 0x7

.field public static final VOLTAGE_19V:I = 0x8

.field public static final VOLTAGE_5V:I = 0x1

.field public static final VOLTAGE_NONE:I


# instance fields
.field mCallback:Landroid/media/tv/tuner/LnbCallback;

.field mExecutor:Ljava/util/concurrent/Executor;

.field mId:I

.field private mIsClosed:Ljava/lang/Boolean;

.field private final mLock:Ljava/lang/Object;

.field private mNativeContext:J

.field mTuner:Landroid/media/tv/tuner/Tuner;


# direct methods
.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    iput p1, p0, Landroid/media/tv/tuner/Lnb;->mId:I

    return-void
.end method

.method private native nativeClose()I
.end method

.method private native nativeSendDiseqcMessage([B)I
.end method

.method private native nativeSetSatellitePosition(I)I
.end method

.method private native nativeSetTone(I)I
.end method

.method private native nativeSetVoltage(I)I
.end method

.method private onDiseqcMessage([B)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallback:Landroid/media/tv/tuner/LnbCallback;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Lnb$FxxuwmgmY3zg5Qj8CbdUkPw-Lnk;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/tuner/-$$Lambda$Lnb$FxxuwmgmY3zg5Qj8CbdUkPw-Lnk;-><init>(Landroid/media/tv/tuner/Lnb;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private onEvent(I)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallback:Landroid/media/tv/tuner/LnbCallback;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Lnb$IV6NQ1_DZcILU-MY88njae06xhs;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/tuner/-$$Lambda$Lnb$IV6NQ1_DZcILU-MY88njae06xhs;-><init>(Landroid/media/tv/tuner/Lnb;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    invoke-direct {p0}, Landroid/media/tv/tuner/Lnb;->nativeClose()I

    move-result v1

    if-eqz v1, :cond_19

    const-string v2, "Failed to close LNB"

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    goto :goto_25

    :cond_19
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mTuner:Landroid/media/tv/tuner/Tuner;

    invoke-virtual {v2}, Landroid/media/tv/tuner/Tuner;->releaseLnb()V

    :goto_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method isClosed()Z
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public synthetic lambda$onDiseqcMessage$1$Lnb([B)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallback:Landroid/media/tv/tuner/LnbCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/LnbCallback;->onDiseqcMessage([B)V

    return-void
.end method

.method public synthetic lambda$onEvent$0$Lnb(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallback:Landroid/media/tv/tuner/LnbCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/LnbCallback;->onEvent(I)V

    return-void
.end method

.method public sendDiseqcMessage([B)I
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSendDiseqcMessage([B)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method setCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;Landroid/media/tv/tuner/Tuner;)V
    .registers 4

    iput-object p2, p0, Landroid/media/tv/tuner/Lnb;->mCallback:Landroid/media/tv/tuner/LnbCallback;

    iput-object p1, p0, Landroid/media/tv/tuner/Lnb;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/media/tv/tuner/Lnb;->mTuner:Landroid/media/tv/tuner/Tuner;

    return-void
.end method

.method public setSatellitePosition(I)I
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSetSatellitePosition(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public setTone(I)I
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSetTone(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public setVoltage(I)I
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSetVoltage(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method
