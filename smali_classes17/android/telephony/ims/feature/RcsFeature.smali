.class public Landroid/telephony/ims/feature/RcsFeature;
.super Landroid/telephony/ims/feature/ImsFeature;
.source "RcsFeature.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;,
        Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RcsFeature"


# instance fields
.field private final mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

.field private mListenerBinder:Landroid/telephony/ims/aidl/IRcsFeatureListener;

.field private mPresExchange:Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;

.field private mSipOptions:Landroid/telephony/ims/stub/RcsSipOptionsImplBase;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    sget-object v1, Landroid/telephony/ims/feature/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;->INSTANCE:Landroid/telephony/ims/feature/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;-><init>(Landroid/telephony/ims/feature/RcsFeature;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    if-eqz p1, :cond_d

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;-><init>(Landroid/telephony/ims/feature/RcsFeature;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/telephony/ims/feature/RcsFeature;Landroid/telephony/ims/aidl/IRcsFeatureListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/RcsFeature;->setListener(Landroid/telephony/ims/aidl/IRcsFeatureListener;)V

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/ims/feature/RcsFeature;)Landroid/telephony/ims/stub/RcsSipOptionsImplBase;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/ims/feature/RcsFeature;->getOptionsExchangeInternal()Landroid/telephony/ims/stub/RcsSipOptionsImplBase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/ims/feature/RcsFeature;)Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/ims/feature/RcsFeature;->getPresenceExchangeInternal()Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;

    move-result-object v0

    return-object v0
.end method

.method private getOptionsExchangeInternal()Landroid/telephony/ims/stub/RcsSipOptionsImplBase;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mSipOptions:Landroid/telephony/ims/stub/RcsSipOptionsImplBase;

    if-nez v1, :cond_10

    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->getOptionsExchangeImpl()Landroid/telephony/ims/stub/RcsSipOptionsImplBase;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mSipOptions:Landroid/telephony/ims/stub/RcsSipOptionsImplBase;

    invoke-virtual {v1, p0}, Landroid/telephony/ims/stub/RcsSipOptionsImplBase;->initialize(Landroid/telephony/ims/feature/RcsFeature;)V

    :cond_10
    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mSipOptions:Landroid/telephony/ims/stub/RcsSipOptionsImplBase;

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private getPresenceExchangeInternal()Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mPresExchange:Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;

    if-nez v1, :cond_10

    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->getPresenceExchangeImpl()Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mPresExchange:Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;

    invoke-virtual {v1, p0}, Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;->initialize(Landroid/telephony/ims/feature/RcsFeature;)V

    :cond_10
    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mPresExchange:Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private setListener(Landroid/telephony/ims/aidl/IRcsFeatureListener;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature;->mListenerBinder:Landroid/telephony/ims/aidl/IRcsFeatureListener;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->onFeatureReady()V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .registers 3

    return-void
.end method

.method public bridge synthetic getBinder()Landroid/os/IInterface;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public final getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    return-object v0
.end method

.method public getListener()Landroid/telephony/ims/aidl/IRcsFeatureListener;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mListenerBinder:Landroid/telephony/ims/aidl/IRcsFeatureListener;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getOptionsExchangeImpl()Landroid/telephony/ims/stub/RcsSipOptionsImplBase;
    .registers 2

    new-instance v0, Landroid/telephony/ims/stub/RcsSipOptionsImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/RcsSipOptionsImplBase;-><init>()V

    return-object v0
.end method

.method public getPresenceExchangeImpl()Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;
    .registers 2

    new-instance v0, Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;-><init>()V

    return-object v0
.end method

.method public final notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .registers 4

    if-eqz p1, :cond_6

    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RcsImsCapabilities must be non-null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFeatureReady()V
    .registers 1

    return-void
.end method

.method public onFeatureRemoved()V
    .registers 1

    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public final queryCapabilityStatus()Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    .registers 4

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-super {p0}, Landroid/telephony/ims/feature/ImsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;Landroid/telephony/ims/feature/RcsFeature$1;)V

    return-object v0
.end method
