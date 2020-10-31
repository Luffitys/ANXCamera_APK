.class public Landroid/media/tv/tuner/Tuner;
.super Ljava/lang/Object;
.source "Tuner.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/Tuner$Frontend;,
        Landroid/media/tv/tuner/Tuner$EventHandler;,
        Landroid/media/tv/tuner/Tuner$OnResourceLostListener;,
        Landroid/media/tv/tuner/Tuner$DvrType;,
        Landroid/media/tv/tuner/Tuner$Result;,
        Landroid/media/tv/tuner/Tuner$ScanType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DVR_TYPE_PLAYBACK:I = 0x1

.field public static final DVR_TYPE_RECORD:I = 0x0

.field public static final INVALID_AV_SYNC_ID:I = -0x1

.field public static final INVALID_FILTER_ID:I = -0x1

.field public static final INVALID_STREAM_ID:I = 0xffff

.field public static final INVALID_TIMESTAMP:J = -0x1L

.field public static final INVALID_TS_PID:I = 0xffff

.field private static final MSG_ON_FILTER_EVENT:I = 0x2

.field private static final MSG_ON_FILTER_STATUS:I = 0x3

.field private static final MSG_ON_LNB_EVENT:I = 0x4

.field private static final MSG_RESOURCE_LOST:I = 0x1

.field public static final RESULT_INVALID_ARGUMENT:I = 0x4

.field public static final RESULT_INVALID_STATE:I = 0x3

.field public static final RESULT_NOT_INITIALIZED:I = 0x2

.field public static final RESULT_OUT_OF_MEMORY:I = 0x5

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_UNAVAILABLE:I = 0x1

.field public static final RESULT_UNKNOWN_ERROR:I = 0x6

.field public static final SCAN_TYPE_AUTO:I = 0x1

.field public static final SCAN_TYPE_BLIND:I = 0x2

.field public static final SCAN_TYPE_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaTvTuner"


# instance fields
.field private final mClientId:I

.field private final mContext:Landroid/content/Context;

.field private mDemuxHandle:Ljava/lang/Integer;

.field private mDescramblers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/tv/tuner/Descrambler;",
            ">;"
        }
    .end annotation
.end field

.field private mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/tuner/filter/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

.field private mFrontendHandle:Ljava/lang/Integer;

.field private mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

.field private mFrontendType:I

.field private mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

.field private mLnb:Landroid/media/tv/tuner/Lnb;

.field private mLnbHandle:Ljava/lang/Integer;

.field private mNativeContext:J

.field private mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

.field private mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

.field private mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

.field private mOnTunerEventExecutor:Ljava/util/concurrent/Executor;

.field private final mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

.field private mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

.field private mScanCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-string/jumbo v0, "media_tv_tuner"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/tv/tuner/Tuner;->nativeInit()V
    :try_end_9
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    const-string v1, "MediaTvTuner"

    const-string/jumbo v2, "tuner JNI library not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    new-instance v1, Landroid/media/tv/tuner/Tuner$1;

    invoke-direct {v1, p0}, Landroid/media/tv/tuner/Tuner$1;-><init>(Landroid/media/tv/tuner/Tuner;)V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeSetup()V

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mContext:Landroid/content/Context;

    nop

    const-string/jumbo v1, "tv_tuner_resource_mgr"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    if-nez v1, :cond_36

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    :cond_36
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    const/4 v1, 0x1

    new-array v1, v1, [I

    new-instance v2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    invoke-direct {v2, p2, p3}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;-><init>(Ljava/lang/String;I)V

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    new-instance v4, Landroid/os/HandlerExecutor;

    iget-object v5, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v5, p0, Landroid/media/tv/tuner/Tuner;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    invoke-virtual {v3, v2, v4, v5, v1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;[I)V

    aget v0, v1, v0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->setFrontendInfoList()V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->setLnbIds()V

    return-void
.end method

.method static synthetic access$000(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$Frontend;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/tv/tuner/Tuner;)I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    return v0
.end method

.method static synthetic access$200(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$EventHandler;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$OnResourceLostListener;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/tv/tuner/Tuner;)Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private checkResource(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_20

    if-eq p1, v0, :cond_15

    const/4 v2, 0x3

    if-eq p1, v2, :cond_a

    return v1

    :cond_a
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-nez v2, :cond_2b

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestLnb()Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    :cond_15
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    if-nez v2, :cond_2b

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestDemux()Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    :cond_20
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-nez v2, :cond_2b

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestFrontend()Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    :cond_2b
    return v0
.end method

.method private createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    new-instance v0, Landroid/media/tv/tuner/Tuner$EventHandler;

    invoke-direct {v0, p0, v1, v2}, Landroid/media/tv/tuner/Tuner$EventHandler;-><init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;Landroid/media/tv/tuner/Tuner$1;)V

    return-object v0

    :cond_e
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1b

    new-instance v0, Landroid/media/tv/tuner/Tuner$EventHandler;

    invoke-direct {v0, p0, v1, v2}, Landroid/media/tv/tuner/Tuner$EventHandler;-><init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;Landroid/media/tv/tuner/Tuner$1;)V

    return-object v0

    :cond_1b
    return-object v2
.end method

.method private native nativeClose()I
.end method

.method private native nativeCloseDemux(I)I
.end method

.method private native nativeCloseFrontend(I)I
.end method

.method private native nativeCloseFrontendByHandle(I)I
.end method

.method private native nativeConnectCiCam(I)I
.end method

.method private native nativeDisconnectCiCam()I
.end method

.method private native nativeGetAvSyncHwId(Landroid/media/tv/tuner/filter/Filter;)Ljava/lang/Integer;
.end method

.method private native nativeGetAvSyncTime(I)Ljava/lang/Long;
.end method

.method private native nativeGetDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;
.end method

.method private native nativeGetFrontendIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetFrontendInfo(I)Landroid/media/tv/tuner/frontend/FrontendInfo;
.end method

.method private native nativeGetFrontendStatus([I)Landroid/media/tv/tuner/frontend/FrontendStatus;
.end method

.method private native nativeGetLnbIds()[I
.end method

.method private static native nativeInit()V
.end method

.method private native nativeOpenDemuxByhandle(I)I
.end method

.method private native nativeOpenDescramblerByHandle(I)Landroid/media/tv/tuner/Descrambler;
.end method

.method private native nativeOpenDvrPlayback(J)Landroid/media/tv/tuner/dvr/DvrPlayback;
.end method

.method private native nativeOpenDvrRecorder(J)Landroid/media/tv/tuner/dvr/DvrRecorder;
.end method

.method private native nativeOpenFilter(IIJ)Landroid/media/tv/tuner/filter/Filter;
.end method

.method private native nativeOpenFrontendByHandle(I)Landroid/media/tv/tuner/Tuner$Frontend;
.end method

.method private native nativeOpenLnbByHandle(I)Landroid/media/tv/tuner/Lnb;
.end method

.method private native nativeOpenLnbByName(Ljava/lang/String;)Landroid/media/tv/tuner/Lnb;
.end method

.method private native nativeOpenTimeFilter()Landroid/media/tv/tuner/filter/TimeFilter;
.end method

.method private native nativeScan(ILandroid/media/tv/tuner/frontend/FrontendSettings;I)I
.end method

.method private native nativeSetLna(Z)I
.end method

.method private native nativeSetLnb(I)I
.end method

.method private native nativeSetup()V
.end method

.method private native nativeStopScan()I
.end method

.method private native nativeStopTune()I
.end method

.method private native nativeTune(ILandroid/media/tv/tuner/frontend/FrontendSettings;)I
.end method

.method private onAnalogSifStandard(I)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Tuner$H2MeyMgstu2-FkYFyyhEuqcpaOM;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/tuner/-$$Lambda$Tuner$H2MeyMgstu2-FkYFyyhEuqcpaOM;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private onAtsc3PlpInfos([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Tuner$vA8r09mS8B2Xp9N33dOsBZ4Y_0g;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/tuner/-$$Lambda$Tuner$vA8r09mS8B2Xp9N33dOsBZ4Y_0g;-><init>(Landroid/media/tv/tuner/Tuner;[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private onDvbsStandard(I)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Tuner$6JzdHyaum-wXts_YXYS69zQbClY;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/tuner/-$$Lambda$Tuner$6JzdHyaum-wXts_YXYS69zQbClY;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private onDvbtStandard(I)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Tuner$0UUd7kSDwJbNOtYJHcznNHjL2vI;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/tuner/-$$Lambda$Tuner$0UUd7kSDwJbNOtYJHcznNHjL2vI;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private onFrequenciesReport([I)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Tuner$cO3VZA6A_FG0wouIFcyFrkppVKQ;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/tuner/-$$Lambda$Tuner$cO3VZA6A_FG0wouIFcyFrkppVKQ;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private onFrontendEvent(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got event from tuning. Event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaTvTuner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTunerEventExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_26

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    if-eqz v2, :cond_26

    new-instance v2, Landroid/media/tv/tuner/-$$Lambda$Tuner$W0RSFCXzyS-Nm5JhUoyHO4-gtHc;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/-$$Lambda$Tuner$W0RSFCXzyS-Nm5JhUoyHO4-gtHc;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_26
    const-string v0, "Wrote Stats Log for the events from tuning."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/16 v1, 0x114

    if-nez p1, :cond_36

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    goto :goto_48

    :cond_36
    const/4 v2, 0x1

    if-ne p1, v2, :cond_40

    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    goto :goto_48

    :cond_40
    if-ne p1, v0, :cond_48

    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    :cond_48
    :goto_48
    return-void
.end method

.method private onGroupIds([I)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Tuner$Br0QGgsEJkvWiWGajrBIp9UhcI4;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/tuner/-$$Lambda$Tuner$Br0QGgsEJkvWiWGajrBIp9UhcI4;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private onHierarchy(I)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Tuner$kZB5DmQFvVQLdFFRG1ICjIXzxIg;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/tuner/-$$Lambda$Tuner$kZB5DmQFvVQLdFFRG1ICjIXzxIg;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private onInputStreamIds([I)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Tuner$97hY_kdBewG88N1-oDJVJ-0tzGU;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/tuner/-$$Lambda$Tuner$97hY_kdBewG88N1-oDJVJ-0tzGU;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private onLocked()V
    .registers 4

    const-string v0, "MediaTvTuner"

    const-string v1, "Wrote Stats Log for locked event from scanning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/16 v1, 0x114

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_1f

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Tuner$7LyXqscGIcs4FBunPKfBAgBWBPc;

    invoke-direct {v1, p0}, Landroid/media/tv/tuner/-$$Lambda$Tuner$7LyXqscGIcs4FBunPKfBAgBWBPc;-><init>(Landroid/media/tv/tuner/Tuner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1f
    return-void
.end method

.method private onPlpIds([I)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Tuner$NJZQL7FtM6GTMGzFfc6hPmY8a-A;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/tuner/-$$Lambda$Tuner$NJZQL7FtM6GTMGzFfc6hPmY8a-A;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private onProgress(I)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Tuner$EpB-abkPzm4k9y4f_ckGHE7hk-Y;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/tuner/-$$Lambda$Tuner$EpB-abkPzm4k9y4f_ckGHE7hk-Y;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private onScanStopped()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Tuner$iNLvb_AT8Ni5vDrCZXOvhTYUE1U;

    invoke-direct {v1, p0}, Landroid/media/tv/tuner/-$$Lambda$Tuner$iNLvb_AT8Ni5vDrCZXOvhTYUE1U;-><init>(Landroid/media/tv/tuner/Tuner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private onSignalType(I)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Tuner$bvxMLDowJ_umoo-_NEeXgXWz0Gw;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/tuner/-$$Lambda$Tuner$bvxMLDowJ_umoo-_NEeXgXWz0Gw;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private onSymbolRates([I)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Tuner$qLBwtqwgHR4JTsJuxl0FSPNFPuA;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/tuner/-$$Lambda$Tuner$qLBwtqwgHR4JTsJuxl0FSPNFPuA;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private requestDemux()Z
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-direct {v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;-><init>(I)V

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeOpenDemuxByhandle(I)I

    :cond_22
    return v2
.end method

.method private requestDescrambler()Landroid/media/tv/tuner/Descrambler;
    .registers 8

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-direct {v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;-><init>(I)V

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v3, 0x0

    return-object v3

    :cond_14
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeOpenDescramblerByHandle(I)Landroid/media/tv/tuner/Descrambler;

    move-result-object v4

    if-eqz v4, :cond_27

    iget-object v5, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_27
    iget-object v5, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v6, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v5, v3, v6}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseDescrambler(II)V

    :goto_2e
    return-object v4
.end method

.method private requestFrontend()Z
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    invoke-direct {v1, v2, v3}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;-><init>(II)V

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeOpenFrontendByHandle(I)Landroid/media/tv/tuner/Tuner$Frontend;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    :cond_27
    return v2
.end method

.method private requestLnb()Z
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-direct {v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;-><init>(I)V

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeOpenLnbByHandle(I)Landroid/media/tv/tuner/Lnb;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    :cond_25
    return v2
.end method

.method private setFrontendInfoList()V
    .registers 9

    invoke-virtual {p0}, Landroid/media/tv/tuner/Tuner;->getFrontendIds()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;

    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/tv/tuner/Tuner;->getFrontendInfoById(I)Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v4

    if-nez v4, :cond_25

    goto :goto_34

    :cond_25
    new-instance v5, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;

    invoke-virtual {v4}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getType()I

    move-result v6

    invoke-virtual {v4}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getExclusiveGroupId()I

    move-result v7

    invoke-direct {v5, v3, v6, v7}, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;-><init>(III)V

    aput-object v5, v1, v2

    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_37
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V

    return-void
.end method

.method private setLnb(Landroid/media/tv/tuner/Lnb;)I
    .registers 3

    iget v0, p1, Landroid/media/tv/tuner/Lnb;->mId:I

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeSetLnb(I)I

    move-result v0

    return v0
.end method

.method private setLnbIds()V
    .registers 3

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetLnbIds()[I

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->setLnbInfoList([I)V

    return-void
.end method


# virtual methods
.method public cancelScanning()I
    .registers 4

    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/16 v1, 0x114

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeStopScan()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    return v0
.end method

.method public cancelTuning()I
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeStopTune()I

    move-result v0

    return v0
.end method

.method public clearOnTuneEventListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTunerEventExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public clearResourceLostListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public close()V
    .registers 7

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeCloseFrontend(I)I

    move-result v0

    if-eqz v0, :cond_14

    const-string v2, "failed to close frontend"

    invoke-static {v0, v2}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    :cond_14
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseFrontend(II)V

    const/16 v2, 0x114

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    :cond_2d
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/media/tv/tuner/Lnb;->close()V

    :cond_34
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/tuner/Descrambler;

    invoke-virtual {v3}, Landroid/media/tv/tuner/Descrambler;->close()V

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v3, v4, v5}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseDescrambler(II)V

    goto :goto_46

    :cond_6d
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_72
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_95

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_80
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tuner/filter/Filter;

    invoke-virtual {v2}, Landroid/media/tv/tuner/filter/Filter;->close()V

    goto :goto_80

    :cond_90
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_95
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_b7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeCloseDemux(I)I

    move-result v0

    if-eqz v0, :cond_a8

    const-string v2, "failed to close demux"

    invoke-static {v0, v2}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    :cond_a8
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseDemux(II)V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    :cond_b7
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeClose()I

    move-result v0

    const-string v1, "failed to close tuner"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    return-void
.end method

.method public connectCiCam(I)I
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeConnectCiCam(I)I

    move-result v0

    return v0

    :cond_c
    return v0
.end method

.method public disconnectCiCam()I
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeDisconnectCiCam()I

    move-result v0

    return v0

    :cond_c
    return v0
.end method

.method public getAvSyncHwId(Landroid/media/tv/tuner/filter/Filter;)I
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_9

    return v1

    :cond_9
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetAvSyncHwId(Landroid/media/tv/tuner/filter/Filter;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_14
    return v1
.end method

.method public getAvSyncTime(I)J
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(I)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_a

    return-wide v1

    :cond_a
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetAvSyncTime(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_15
    return-wide v1
.end method

.method public getDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getFrontendIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFrontendInfo()Landroid/media/tv/tuner/frontend/FrontendInfo;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(I)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    if-nez v1, :cond_1b

    # getter for: Landroid/media/tv/tuner/Tuner$Frontend;->mId:I
    invoke-static {v0}, Landroid/media/tv/tuner/Tuner$Frontend;->access$600(Landroid/media/tv/tuner/Tuner$Frontend;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/tv/tuner/Tuner;->getFrontendInfoById(I)Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    :cond_1b
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFrontendInfoById(I)Landroid/media/tv/tuner/frontend/FrontendInfo;
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendInfo(I)Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFrontendStatus([I)Landroid/media/tv/tuner/frontend/FrontendStatus;
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendStatus([I)Landroid/media/tv/tuner/frontend/FrontendStatus;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic lambda$onAnalogSifStandard$13$Tuner(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onAnalogSifStandardReported(I)V

    return-void
.end method

.method public synthetic lambda$onAtsc3PlpInfos$14$Tuner([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onAtsc3PlpInfosReported([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V

    return-void
.end method

.method public synthetic lambda$onDvbsStandard$11$Tuner(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbsStandardReported(I)V

    return-void
.end method

.method public synthetic lambda$onDvbtStandard$12$Tuner(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbtStandardReported(I)V

    return-void
.end method

.method public synthetic lambda$onFrequenciesReport$4$Tuner([I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onFrequenciesReported([I)V

    return-void
.end method

.method public synthetic lambda$onFrontendEvent$0$Tuner(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/frontend/OnTuneEventListener;->onTuneEvent(I)V

    return-void
.end method

.method public synthetic lambda$onGroupIds$9$Tuner([I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onGroupIdsReported([I)V

    return-void
.end method

.method public synthetic lambda$onHierarchy$6$Tuner(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onHierarchyReported(I)V

    return-void
.end method

.method public synthetic lambda$onInputStreamIds$10$Tuner([I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onInputStreamIdsReported([I)V

    return-void
.end method

.method public synthetic lambda$onLocked$1$Tuner()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v0}, Landroid/media/tv/tuner/frontend/ScanCallback;->onLocked()V

    return-void
.end method

.method public synthetic lambda$onPlpIds$8$Tuner([I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onPlpIdsReported([I)V

    return-void
.end method

.method public synthetic lambda$onProgress$3$Tuner(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onProgress(I)V

    return-void
.end method

.method public synthetic lambda$onScanStopped$2$Tuner()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v0}, Landroid/media/tv/tuner/frontend/ScanCallback;->onScanStopped()V

    return-void
.end method

.method public synthetic lambda$onSignalType$7$Tuner(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onSignalTypeReported(I)V

    return-void
.end method

.method public synthetic lambda$onSymbolRates$5$Tuner([I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onSymbolRatesReported([I)V

    return-void
.end method

.method public openDescrambler()Landroid/media/tv/tuner/Descrambler;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(I)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestDescrambler()Landroid/media/tv/tuner/Descrambler;

    move-result-object v0

    return-object v0
.end method

.method public openDvrPlayback(JLjava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;)Landroid/media/tv/tuner/dvr/DvrPlayback;
    .registers 6

    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "OnPlaybackStatusChangedListener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(I)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    return-object v0

    :cond_13
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeOpenDvrPlayback(J)Landroid/media/tv/tuner/dvr/DvrPlayback;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/media/tv/tuner/dvr/DvrPlayback;->setListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;)V

    return-object v0
.end method

.method public openDvrRecorder(JLjava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;)Landroid/media/tv/tuner/dvr/DvrRecorder;
    .registers 6

    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "OnRecordStatusChangedListener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(I)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    return-object v0

    :cond_13
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeOpenDvrRecorder(J)Landroid/media/tv/tuner/dvr/DvrRecorder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/media/tv/tuner/dvr/DvrRecorder;->setListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;)V

    return-object v0
.end method

.method public openFilter(IIJLjava/util/concurrent/Executor;Landroid/media/tv/tuner/filter/FilterCallback;)Landroid/media/tv/tuner/filter/Filter;
    .registers 9

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(I)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    nop

    invoke-static {p1, p2}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v0

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/media/tv/tuner/Tuner;->nativeOpenFilter(IIJ)Landroid/media/tv/tuner/filter/Filter;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/tuner/filter/Filter;->setType(II)V

    invoke-virtual {v0, p6, p5}, Landroid/media/tv/tuner/filter/Filter;->setCallback(Landroid/media/tv/tuner/filter/FilterCallback;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    if-nez v1, :cond_24

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    :cond_24
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    return-object v0
.end method

.method public openLnb(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)Landroid/media/tv/tuner/Lnb;
    .registers 4

    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "LnbCallback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1, p2, p0}, Landroid/media/tv/tuner/Lnb;->setCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;Landroid/media/tv/tuner/Tuner;)V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    return-object v0

    :cond_14
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v0, :cond_2a

    invoke-virtual {v0, p1, p2, p0}, Landroid/media/tv/tuner/Lnb;->setCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;Landroid/media/tv/tuner/Tuner;)V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->setLnb(Landroid/media/tv/tuner/Lnb;)I

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    return-object v0

    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public openLnbByName(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)Landroid/media/tv/tuner/Lnb;
    .registers 6

    const-string v0, "LNB name must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "LnbCallback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeOpenLnbByName(Ljava/lang/String;)Landroid/media/tv/tuner/Lnb;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/media/tv/tuner/Lnb;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    :cond_1f
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-virtual {v0, p2, p3, p0}, Landroid/media/tv/tuner/Lnb;->setCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;Landroid/media/tv/tuner/Tuner;)V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-direct {p0, v1}, Landroid/media/tv/tuner/Tuner;->setLnb(Landroid/media/tv/tuner/Lnb;)I

    :cond_29
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    return-object v1
.end method

.method public openTimeFilter()Landroid/media/tv/tuner/filter/TimeFilter;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(I)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeOpenTimeFilter()Landroid/media/tv/tuner/filter/TimeFilter;

    move-result-object v0

    return-object v0
.end method

.method releaseLnb()V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v2, v0, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseLnb(II)V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    :cond_12
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    return-void
.end method

.method public scan(Landroid/media/tv/tuner/frontend/FrontendSettings;ILjava/util/concurrent/Executor;Landroid/media/tv/tuner/frontend/ScanCallback;)I
    .registers 8

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-nez v0, :cond_2f

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_2f

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    iput-object p4, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    iput-object p3, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    const/16 v0, 0x114

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeScan(ILandroid/media/tv/tuner/frontend/FrontendSettings;I)I

    move-result v0

    return v0

    :cond_2d
    const/4 v0, 0x1

    return v0

    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scan already in progress.  stopScan must be called before a new scan can be started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLnaEnabled(Z)I
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeSetLna(Z)I

    move-result v0

    return v0
.end method

.method public setOnTuneEventListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/frontend/OnTuneEventListener;)V
    .registers 3

    iput-object p2, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mOnTunerEventExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setResourceLostListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/Tuner$OnResourceLostListener;)V
    .registers 4

    const-string v0, "OnResourceLostListener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public shareFrontendFromTuner(Landroid/media/tv/tuner/Tuner;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->shareFrontend(II)V

    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeOpenFrontendByHandle(I)Landroid/media/tv/tuner/Tuner$Frontend;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    return-void
.end method

.method public tune(Landroid/media/tv/tuner/frontend/FrontendSettings;)I
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tune to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaTvTuner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_40

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    const-string v0, "Write Stats Log for tuning."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x114

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroid/media/tv/tuner/Tuner;->nativeTune(ILandroid/media/tv/tuner/frontend/FrontendSettings;)I

    move-result v0

    return v0

    :cond_40
    return v2
.end method

.method public updateResourcePriority(II)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->updateClientPriority(III)Z

    return-void
.end method
