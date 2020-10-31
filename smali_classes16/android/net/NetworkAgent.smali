.class public abstract Landroid/net/NetworkAgent;
.super Ljava/lang/Object;
.source "NetworkAgent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkAgent$NetworkAgentHandler;,
        Landroid/net/NetworkAgent$InitialConfiguration;,
        Landroid/net/NetworkAgent$ValidationStatus;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x81000

.field private static final BW_REFRESH_MIN_WIN_MS:J = 0x1f4L

.field public static final CMD_ADD_KEEPALIVE_PACKET_FILTER:I = 0x81010

.field public static final CMD_PREVENT_AUTOMATIC_RECONNECT:I = 0x8100f

.field public static final CMD_REMOVE_KEEPALIVE_PACKET_FILTER:I = 0x81011

.field public static final CMD_REPORT_NETWORK_STATUS:I = 0x81007

.field public static final CMD_REQUEST_BANDWIDTH_UPDATE:I = 0x8100a

.field public static final CMD_SAVE_ACCEPT_UNVALIDATED:I = 0x81009

.field public static final CMD_SET_SIGNAL_STRENGTH_THRESHOLDS:I = 0x8100e

.field public static final CMD_START_SOCKET_KEEPALIVE:I = 0x8100b

.field public static final CMD_STOP_SOCKET_KEEPALIVE:I = 0x8100c

.field public static final CMD_SUSPECT_BAD:I = 0x81000

.field private static final DBG:Z = true

.field public static final EVENT_NETWORK_CAPABILITIES_CHANGED:I = 0x81002

.field public static final EVENT_NETWORK_INFO_CHANGED:I = 0x81001

.field public static final EVENT_NETWORK_PROPERTIES_CHANGED:I = 0x81003

.field public static final EVENT_NETWORK_SCORE_CHANGED:I = 0x81004

.field public static final EVENT_SET_EXPLICITLY_SELECTED:I = 0x81008

.field public static final EVENT_SOCKET_KEEPALIVE:I = 0x8100d

.field public static final INVALID_NETWORK:I = 0x2

.field public static REDIRECT_URL_KEY:Ljava/lang/String; = null

.field public static final VALIDATION_STATUS_NOT_VALID:I = 0x2

.field public static final VALIDATION_STATUS_VALID:I = 0x1

.field public static final VALID_NETWORK:I = 0x1

.field private static final VDBG:Z = false

.field public static final WIFI_BASE_SCORE:I = 0x3c


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private volatile mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mBandwidthUpdatePending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBandwidthUpdateScheduled:Z

.field private final mHandler:Landroid/os/Handler;

.field private volatile mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

.field private final mIsLegacy:Z

.field private volatile mLastBwRefreshTime:J

.field private volatile mNetwork:Landroid/net/Network;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mPreConnectedQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisterLock:Ljava/lang/Object;

.field public final providerId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "redirect URL"

    sput-object v0, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V
    .registers 21

    nop

    if-nez p8, :cond_5

    const/4 v0, -0x1

    goto :goto_9

    :cond_5
    invoke-virtual/range {p8 .. p8}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v0

    :goto_9
    move v9, v0

    invoke-static/range {p7 .. p7}, Landroid/net/NetworkAgent;->getLegacyNetworkInfo(Landroid/net/NetworkAgentConfig;)Landroid/net/NetworkInfo;

    move-result-object v10

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v11}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;ILandroid/net/NetworkInfo;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;ILandroid/net/NetworkInfo;Z)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v10, p9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/net/NetworkAgent;->mBandwidthUpdateScheduled:Z

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Landroid/net/NetworkAgent;->mBandwidthUpdatePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Landroid/net/NetworkAgent;->mRegisterLock:Ljava/lang/Object;

    new-instance v3, Landroid/net/NetworkAgent$NetworkAgentHandler;

    move-object/from16 v11, p1

    invoke-direct {v3, v0, v11}, Landroid/net/NetworkAgent$NetworkAgentHandler;-><init>(Landroid/net/NetworkAgent;Landroid/os/Looper;)V

    iput-object v3, v0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    move-object/from16 v12, p3

    iput-object v12, v0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    move/from16 v13, p10

    iput-boolean v13, v0, Landroid/net/NetworkAgent;->mIsLegacy:Z

    new-instance v3, Landroid/net/NetworkInfo;

    invoke-direct {v3, v10}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    iput-object v3, v0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    move/from16 v14, p8

    iput v14, v0, Landroid/net/NetworkAgent;->providerId:I

    if-eqz v10, :cond_64

    if-eqz v1, :cond_64

    if-eqz v2, :cond_64

    new-instance v15, Landroid/net/NetworkAgent$InitialConfiguration;

    new-instance v5, Landroid/net/NetworkCapabilities;

    invoke-direct {v5, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    new-instance v6, Landroid/net/LinkProperties;

    invoke-direct {v6, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    move-object v3, v15

    move-object/from16 v4, p2

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    invoke-direct/range {v3 .. v9}, Landroid/net/NetworkAgent$InitialConfiguration;-><init>(Landroid/content/Context;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;Landroid/net/NetworkInfo;)V

    iput-object v15, v0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    return-void

    :cond_64
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .registers 18

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;II)V
    .registers 19

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;)V
    .registers 19

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;I)V
    .registers 21

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move-object v9, p4

    invoke-direct/range {v0 .. v10}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;ILandroid/net/NetworkInfo;Z)V

    invoke-virtual {p0}, Landroid/net/NetworkAgent;->register()Landroid/net/Network;

    return-void
.end method

.method static synthetic access$000(Landroid/net/NetworkAgent;)Lcom/android/internal/util/AsyncChannel;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/NetworkAgent;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .registers 2

    iput-object p1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/NetworkAgent;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/NetworkAgent;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/net/NetworkAgent;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/NetworkAgent;->mBandwidthUpdateScheduled:Z

    return v0
.end method

.method static synthetic access$302(Landroid/net/NetworkAgent;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/net/NetworkAgent;->mBandwidthUpdateScheduled:Z

    return p1
.end method

.method static synthetic access$400(Landroid/net/NetworkAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkAgent;->mBandwidthUpdatePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/NetworkAgent;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getLegacyNetworkInfo(Landroid/net/NetworkAgentConfig;)Landroid/net/NetworkInfo;
    .registers 6

    new-instance v0, Landroid/net/NetworkInfo;

    iget v1, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    iget-object v2, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    invoke-virtual {p0}, Landroid/net/NetworkAgentConfig;->getLegacyExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    return-object v0
.end method

.method private queueOrSendMessage(III)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private queueOrSendMessage(IIILjava/lang/Object;)V
    .registers 6

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private queueOrSendMessage(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Landroid/net/NetworkAgent;->queueOrSendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private queueOrSendMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_12

    :cond_d
    iget-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method


# virtual methods
.method protected addKeepalivePacketFilter(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public explicitlySelected(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/net/NetworkAgent;->explicitlySelected(ZZ)V

    return-void
.end method

.method public explicitlySelected(ZZ)V
    .registers 4

    nop

    nop

    nop

    const v0, 0x81008

    invoke-direct {p0, v0, p1, p2}, Landroid/net/NetworkAgent;->queueOrSendMessage(III)V

    return-void
.end method

.method public getNetwork()Landroid/net/Network;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public markConnected()V
    .registers 5

    iget-boolean v0, p0, Landroid/net/NetworkAgent;->mIsLegacy:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x81001

    iget-object v1, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Legacy agents can\'t call markConnected."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected networkStatus(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onAddKeepalivePacketFilter(ILandroid/net/KeepalivePacketData;)V
    .registers 6

    iget-object v0, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    const v1, 0x81010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->addKeepalivePacketFilter(Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    return-void
.end method

.method public onAutomaticReconnectDisabled()V
    .registers 1

    invoke-virtual {p0}, Landroid/net/NetworkAgent;->preventAutomaticReconnect()V

    return-void
.end method

.method public onBandwidthUpdateRequested()V
    .registers 1

    invoke-virtual {p0}, Landroid/net/NetworkAgent;->pollLceData()V

    return-void
.end method

.method public onNetworkUnwanted()V
    .registers 1

    invoke-virtual {p0}, Landroid/net/NetworkAgent;->unwanted()V

    return-void
.end method

.method public onRemoveKeepalivePacketFilter(I)V
    .registers 6

    iget-object v0, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    const v1, 0x81011

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->removeKeepalivePacketFilter(Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    return-void
.end method

.method public onSaveAcceptUnvalidated(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->saveAcceptUnvalidated(Z)V

    return-void
.end method

.method public onSignalStrengthThresholdsUpdated([I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->setSignalStrengthThresholds([I)V

    return-void
.end method

.method public onSocketKeepaliveEvent(II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/net/NetworkAgent;->sendSocketKeepaliveEvent(II)V

    return-void
.end method

.method public onStartSocketKeepalive(ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V
    .registers 9

    invoke-virtual {p2}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-ltz v2, :cond_21

    const-wide/16 v2, 0xe10

    cmp-long v2, v0, v2

    if-gtz v2, :cond_21

    iget-object v2, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    const v3, 0x8100b

    long-to-int v4, v0

    invoke-virtual {v2, v3, p1, v4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/NetworkAgent;->startSocketKeepalive(Landroid/os/Message;)V

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    return-void

    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interval needs to be comprised between 10 and 3600 but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onStopSocketKeepalive(I)V
    .registers 6

    iget-object v0, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    const v1, 0x8100c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->stopSocketKeepalive(Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    return-void
.end method

.method public onValidationStatus(ILandroid/net/Uri;)V
    .registers 4

    if-nez p2, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkAgent;->networkStatus(ILjava/lang/String;)V

    return-void
.end method

.method protected pollLceData()V
    .registers 1

    return-void
.end method

.method protected preventAutomaticReconnect()V
    .registers 1

    return-void
.end method

.method public register()Landroid/net/Network;
    .registers 11

    iget-object v0, p0, Landroid/net/NetworkAgent;->mRegisterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/net/NetworkAgent;->mNetwork:Landroid/net/Network;

    if-nez v1, :cond_43

    iget-object v1, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v1, v1, Landroid/net/NetworkAgent$InitialConfiguration;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/ConnectivityManager;

    new-instance v3, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v4, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v1, v1, Landroid/net/NetworkAgent$InitialConfiguration;->info:Landroid/net/NetworkInfo;

    invoke-direct {v4, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    iget-object v1, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v5, v1, Landroid/net/NetworkAgent$InitialConfiguration;->properties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v6, v1, Landroid/net/NetworkAgent$InitialConfiguration;->capabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget v7, v1, Landroid/net/NetworkAgent$InitialConfiguration;->score:I

    iget-object v1, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v8, v1, Landroid/net/NetworkAgent$InitialConfiguration;->config:Landroid/net/NetworkAgentConfig;

    iget v9, p0, Landroid/net/NetworkAgent;->providerId:I

    invoke-virtual/range {v2 .. v9}, Landroid/net/ConnectivityManager;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkAgentConfig;I)Landroid/net/Network;

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkAgent;->mNetwork:Landroid/net/Network;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_4b

    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetwork:Landroid/net/Network;

    return-object v0

    :cond_43
    :try_start_43
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Agent already registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public registerForTest(Landroid/net/Network;)Landroid/os/Messenger;
    .registers 4

    const-string v0, "Registering NetworkAgent for test"

    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkAgent;->mRegisterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iput-object p1, p0, Landroid/net/NetworkAgent;->mNetwork:Landroid/net/Network;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_16

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0

    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method protected removeKeepalivePacketFilter(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method protected saveAcceptUnvalidated(Z)V
    .registers 2

    return-void
.end method

.method public final sendLinkProperties(Landroid/net/LinkProperties;)V
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    const v1, 0x81003

    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/NetworkAgent;->mBandwidthUpdatePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    const v1, 0x81002

    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final sendNetworkInfo(Landroid/net/NetworkInfo;)V
    .registers 4

    iget-boolean v0, p0, Landroid/net/NetworkAgent;->mIsLegacy:Z

    if-eqz v0, :cond_10

    const v0, 0x81001

    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void

    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only legacy agents can call sendNetworkInfo."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sendNetworkScore(I)V
    .registers 4

    if-ltz p1, :cond_a

    const v0, 0x81004

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(III)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Score must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sendSocketKeepaliveEvent(II)V
    .registers 4

    const v0, 0x8100d

    invoke-direct {p0, v0, p1, p2}, Landroid/net/NetworkAgent;->queueOrSendMessage(III)V

    return-void
.end method

.method public setLegacyExtraInfo(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/net/NetworkAgent;->mIsLegacy:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    const v0, 0x81001

    iget-object v1, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void

    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Legacy agents can\'t call setLegacyExtraInfo."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLegacySubtype(ILjava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/net/NetworkAgent;->mIsLegacy:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    const v0, 0x81001

    iget-object v1, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void

    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Legacy agents can\'t call setLegacySubtype."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setSignalStrengthThresholds([I)V
    .registers 2

    return-void
.end method

.method protected startSocketKeepalive(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, -0x1e

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkAgent;->onSocketKeepaliveEvent(II)V

    return-void
.end method

.method protected stopSocketKeepalive(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, -0x1e

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkAgent;->onSocketKeepaliveEvent(II)V

    return-void
.end method

.method public unregister()V
    .registers 4

    iget-boolean v0, p0, Landroid/net/NetworkAgent;->mIsLegacy:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x81001

    iget-object v1, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void

    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Legacy agents can\'t call unregister."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected unwanted()V
    .registers 1

    return-void
.end method

.method public waitForIdle(J)Z
    .registers 6

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iget-object v1, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/net/-$$Lambda$xEDVsWySjOhZCU-CTVGu6ziJ2xc;

    invoke-direct {v2, v0}, Landroid/net/-$$Lambda$xEDVsWySjOhZCU-CTVGu6ziJ2xc;-><init>(Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, p1, p2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    return v1
.end method
