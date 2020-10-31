.class public Lcom/miui/internal/vip/VipServiceClient;
.super Ljava/lang/Object;
.source "VipServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/vip/VipServiceClient$ListenerSelector;,
        Lcom/miui/internal/vip/VipServiceClient$Selector;,
        Lcom/miui/internal/vip/VipServiceClient$ConnectData;
    }
.end annotation


# static fields
.field private static final CMD_PORTRAIT:Ljava/lang/String; = "/user/portrait"

.field private static final CMD_TONGJI:Ljava/lang/String; = "/tongji/page"

.field private static final KEY_DATA:Ljava/lang/String; = "portrait_data"

.field private static final PARAM_NAME:Ljava/lang/String; = "name"

.field private static final PREF_NAME:Ljava/lang/String; = "xiaomi_vip_portrait_data"


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/vip/QueryCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCtx:Landroid/content/Context;

.field private mData:Lcom/miui/internal/vip/protocol/PortraitData;

.field private final mIsServiceAvailable:Z

.field private mPref:Lcom/miui/internal/vip/utils/VipDataPref;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/vip/VipServiceClient;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/miui/internal/vip/VipServiceClient;->mCtx:Landroid/content/Context;

    invoke-static {}, Lcom/miui/internal/vip/VipServiceClient;->localCheck()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "com.xiaomi.vip"

    invoke-static {v0}, Lcom/miui/internal/vip/utils/Utils;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-boolean v0, p0, Lcom/miui/internal/vip/VipServiceClient;->mIsServiceAvailable:Z

    new-instance v0, Lcom/miui/internal/vip/utils/VipDataPref;

    const-string v1, "xiaomi_vip_portrait_data"

    invoke-direct {v0, p1, v1}, Lcom/miui/internal/vip/utils/VipDataPref;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/vip/VipServiceClient;->mPref:Lcom/miui/internal/vip/utils/VipDataPref;

    const-string v1, "portrait_data"

    invoke-virtual {v0, v1}, Lcom/miui/internal/vip/utils/VipDataPref;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-class v1, Lcom/miui/internal/vip/protocol/PortraitData;

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/vip/protocol/PortraitData;

    iput-object v1, p0, Lcom/miui/internal/vip/VipServiceClient;->mData:Lcom/miui/internal/vip/protocol/PortraitData;

    :cond_3e
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/vip/VipServiceClient;Lmiui/vip/QueryCallback;ILcom/miui/internal/vip/VipResponse;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/vip/VipServiceClient;->notifyResult(Lmiui/vip/QueryCallback;ILcom/miui/internal/vip/VipResponse;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/vip/VipServiceClient;ILcom/miui/internal/vip/VipResponse;Lmiui/vip/QueryCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/vip/VipServiceClient;->invokeCallback(ILcom/miui/internal/vip/VipResponse;Lmiui/vip/QueryCallback;)V

    return-void
.end method

.method private addConnectCallback(Lmiui/vip/QueryCallback;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/miui/internal/vip/VipServiceClient$ListenerSelector;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/vip/VipServiceClient$ListenerSelector;-><init>(Lcom/miui/internal/vip/VipServiceClient;Lmiui/vip/QueryCallback;)V

    invoke-direct {p0, v0}, Lcom/miui/internal/vip/VipServiceClient;->searchCallback(Lcom/miui/internal/vip/VipServiceClient$Selector;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/miui/internal/vip/VipServiceClient;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    return-void
.end method

.method private getConnectData()Lcom/miui/internal/vip/VipServiceClient$ConnectData;
    .registers 3

    new-instance v0, Lcom/miui/internal/vip/VipServiceClient$ConnectData;

    invoke-direct {v0}, Lcom/miui/internal/vip/VipServiceClient$ConnectData;-><init>()V

    iget-boolean v1, p0, Lcom/miui/internal/vip/VipServiceClient;->mIsServiceAvailable:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/miui/internal/vip/VipServiceClient;->mData:Lcom/miui/internal/vip/protocol/PortraitData;

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    iput-boolean v1, v0, Lcom/miui/internal/vip/VipServiceClient$ConnectData;->isServiceAvailable:Z

    iget-object v1, p0, Lcom/miui/internal/vip/VipServiceClient;->mData:Lcom/miui/internal/vip/protocol/PortraitData;

    if-eqz v1, :cond_28

    iget v1, v1, Lcom/miui/internal/vip/protocol/PortraitData;->level:I

    invoke-static {v1}, Lcom/miui/internal/vip/protocol/Convertor;->toVipUserInfo(I)Lmiui/vip/VipUserInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/vip/VipServiceClient$ConnectData;->userInfo:Lmiui/vip/VipUserInfo;

    iget-object v1, p0, Lcom/miui/internal/vip/VipServiceClient;->mData:Lcom/miui/internal/vip/protocol/PortraitData;

    iget-object v1, v1, Lcom/miui/internal/vip/protocol/PortraitData;->badgeList:[Lcom/miui/internal/vip/protocol/Achievement;

    invoke-static {v1}, Lcom/miui/internal/vip/protocol/Convertor;->toVipAchievement([Lcom/miui/internal/vip/protocol/Achievement;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/vip/VipServiceClient$ConnectData;->achievements:Ljava/util/List;

    :cond_28
    return-object v0
.end method

.method private invokeCallback(ILcom/miui/internal/vip/VipResponse;Lmiui/vip/QueryCallback;)V
    .registers 8

    if-eqz p2, :cond_45

    if-eqz p3, :cond_45

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x10

    if-eq p1, v0, :cond_20

    const/16 v0, 0x40

    if-eq p1, v0, :cond_14

    goto :goto_45

    :cond_14
    iget v0, p2, Lcom/miui/internal/vip/VipResponse;->state:I

    iget-object v1, p2, Lcom/miui/internal/vip/VipResponse;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p2, Lcom/miui/internal/vip/VipResponse;->errMsg:Ljava/lang/String;

    invoke-virtual {p3, v0, v1, v2}, Lmiui/vip/QueryCallback;->onBanners(ILjava/util/List;Ljava/lang/String;)V

    goto :goto_45

    :cond_20
    iget v0, p2, Lcom/miui/internal/vip/VipResponse;->state:I

    iget-object v1, p2, Lcom/miui/internal/vip/VipResponse;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p2, Lcom/miui/internal/vip/VipResponse;->errMsg:Ljava/lang/String;

    invoke-virtual {p3, v0, v1, v2}, Lmiui/vip/QueryCallback;->onAchievements(ILjava/util/List;Ljava/lang/String;)V

    goto :goto_45

    :cond_2c
    iget-object v0, p2, Lcom/miui/internal/vip/VipResponse;->value:Ljava/lang/Object;

    check-cast v0, Lcom/miui/internal/vip/VipServiceClient$ConnectData;

    iget-boolean v1, v0, Lcom/miui/internal/vip/VipServiceClient$ConnectData;->isServiceAvailable:Z

    iget-object v2, v0, Lcom/miui/internal/vip/VipServiceClient$ConnectData;->userInfo:Lmiui/vip/VipUserInfo;

    iget-object v3, v0, Lcom/miui/internal/vip/VipServiceClient$ConnectData;->achievements:Ljava/util/List;

    invoke-virtual {p3, v1, v2, v3}, Lmiui/vip/QueryCallback;->onConnected(ZLmiui/vip/VipUserInfo;Ljava/util/List;)V

    goto :goto_45

    :cond_3a
    iget v0, p2, Lcom/miui/internal/vip/VipResponse;->state:I

    iget-object v1, p2, Lcom/miui/internal/vip/VipResponse;->value:Ljava/lang/Object;

    check-cast v1, Lmiui/vip/VipUserInfo;

    iget-object v2, p2, Lcom/miui/internal/vip/VipResponse;->errMsg:Ljava/lang/String;

    invoke-virtual {p3, v0, v1, v2}, Lmiui/vip/QueryCallback;->onUserInfo(ILmiui/vip/VipUserInfo;Ljava/lang/String;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public static localCheck()Z
    .registers 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_c

    invoke-static {}, Lcom/miui/internal/vip/utils/DeviceHelper;->isPad()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private notifyResult(ILcom/miui/internal/vip/VipResponse;)V
    .registers 4

    new-instance v0, Lcom/miui/internal/vip/VipServiceClient$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/internal/vip/VipServiceClient$1;-><init>(Lcom/miui/internal/vip/VipServiceClient;ILcom/miui/internal/vip/VipResponse;)V

    invoke-direct {p0, v0}, Lcom/miui/internal/vip/VipServiceClient;->searchCallback(Lcom/miui/internal/vip/VipServiceClient$Selector;)Ljava/util/List;

    return-void
.end method

.method private notifyResult(Lmiui/vip/QueryCallback;ILcom/miui/internal/vip/VipResponse;)V
    .registers 5

    if-eqz p1, :cond_a

    new-instance v0, Lcom/miui/internal/vip/VipServiceClient$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/miui/internal/vip/VipServiceClient$2;-><init>(Lcom/miui/internal/vip/VipServiceClient;ILcom/miui/internal/vip/VipResponse;Lmiui/vip/QueryCallback;)V

    invoke-static {v0}, Lcom/miui/internal/vip/utils/RunnableHelper;->runInUIThread(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method private queryPortraitInfo()V
    .registers 6

    new-instance v0, Lcom/miui/internal/vip/utils/AuthHttpRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/user/portrait"

    invoke-direct {v0, v2, v1}, Lcom/miui/internal/vip/utils/AuthHttpRequest;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->queryAsString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/miui/internal/vip/protocol/PortraitData;

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/vip/protocol/PortraitData;

    if-eqz v2, :cond_21

    iput-object v2, p0, Lcom/miui/internal/vip/VipServiceClient;->mData:Lcom/miui/internal/vip/protocol/PortraitData;

    iget-object v3, p0, Lcom/miui/internal/vip/VipServiceClient;->mPref:Lcom/miui/internal/vip/utils/VipDataPref;

    const-string v4, "portrait_data"

    invoke-virtual {v3, v4, v1}, Lcom/miui/internal/vip/utils/VipDataPref;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method private removeCallback(Lmiui/vip/QueryCallback;)V
    .registers 4

    if-eqz p1, :cond_d

    new-instance v0, Lcom/miui/internal/vip/VipServiceClient$ListenerSelector;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/vip/VipServiceClient$ListenerSelector;-><init>(Lcom/miui/internal/vip/VipServiceClient;Lmiui/vip/QueryCallback;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/internal/vip/VipServiceClient$ListenerSelector;->isRemoveFoundItem:Z

    invoke-direct {p0, v0}, Lcom/miui/internal/vip/VipServiceClient;->searchCallback(Lcom/miui/internal/vip/VipServiceClient$Selector;)Ljava/util/List;

    :cond_d
    return-void
.end method

.method private searchCallback(Lcom/miui/internal/vip/VipServiceClient$Selector;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/vip/VipServiceClient$Selector;",
            ")",
            "Ljava/util/List<",
            "Lmiui/vip/QueryCallback;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/internal/vip/VipServiceClient;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/vip/QueryCallback;

    const/4 v5, 0x0

    if-nez v4, :cond_23

    const/4 v5, 0x1

    goto :goto_32

    :cond_23
    invoke-virtual {p1, v4}, Lcom/miui/internal/vip/VipServiceClient$Selector;->isFound(Lmiui/vip/QueryCallback;)Z

    move-result v6

    if-eqz v6, :cond_32

    iget-boolean v6, p1, Lcom/miui/internal/vip/VipServiceClient$Selector;->isRemoveFoundItem:Z

    if-eqz v6, :cond_2f

    const/4 v5, 0x1

    goto :goto_32

    :cond_2f
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    :goto_32
    if-eqz v5, :cond_3f

    if-nez v1, :cond_3c

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    :cond_3c
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    goto :goto_c

    :cond_40
    invoke-static {v1}, Lcom/miui/internal/vip/utils/Utils;->hasData(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/miui/internal/vip/VipServiceClient;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_4b
    return-object v0
.end method


# virtual methods
.method public connect(Lmiui/vip/QueryCallback;)V
    .registers 6

    iget-boolean v0, p0, Lcom/miui/internal/vip/VipServiceClient;->mIsServiceAvailable:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "VipService, connect, callback = %s"

    invoke-static {v2, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/miui/internal/vip/VipServiceClient;->addConnectCallback(Lmiui/vip/QueryCallback;)V

    invoke-direct {p0}, Lcom/miui/internal/vip/VipServiceClient;->queryPortraitInfo()V

    const/16 v0, 0x8

    new-instance v2, Lcom/miui/internal/vip/VipResponse;

    invoke-direct {p0}, Lcom/miui/internal/vip/VipServiceClient;->getConnectData()Lcom/miui/internal/vip/VipServiceClient$ConnectData;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/miui/internal/vip/VipResponse;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0, v2}, Lcom/miui/internal/vip/VipServiceClient;->notifyResult(Lmiui/vip/QueryCallback;ILcom/miui/internal/vip/VipResponse;)V

    return-void
.end method

.method public disconnect(Lmiui/vip/QueryCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/internal/vip/VipServiceClient;->removeCallback(Lmiui/vip/QueryCallback;)V

    return-void
.end method

.method public isConnected()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public queryAchievements()V
    .registers 4

    new-instance v0, Lcom/miui/internal/vip/VipResponse;

    iget-object v1, p0, Lcom/miui/internal/vip/VipServiceClient;->mData:Lcom/miui/internal/vip/protocol/PortraitData;

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    const/16 v1, 0x3ee

    :goto_a
    iget-object v2, p0, Lcom/miui/internal/vip/VipServiceClient;->mData:Lcom/miui/internal/vip/protocol/PortraitData;

    if-eqz v2, :cond_15

    iget-object v2, v2, Lcom/miui/internal/vip/protocol/PortraitData;->badgeList:[Lcom/miui/internal/vip/protocol/Achievement;

    invoke-static {v2}, Lcom/miui/internal/vip/protocol/Convertor;->toVipAchievement([Lcom/miui/internal/vip/protocol/Achievement;)Ljava/util/List;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    invoke-direct {v0, v1, v2}, Lcom/miui/internal/vip/VipResponse;-><init>(ILjava/lang/Object;)V

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Lcom/miui/internal/vip/VipServiceClient;->notifyResult(ILcom/miui/internal/vip/VipResponse;)V

    return-void
.end method

.method public queryBanners()V
    .registers 4

    new-instance v0, Lcom/miui/internal/vip/VipResponse;

    iget-object v1, p0, Lcom/miui/internal/vip/VipServiceClient;->mData:Lcom/miui/internal/vip/protocol/PortraitData;

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    const/16 v1, 0x3ee

    :goto_a
    iget-object v2, p0, Lcom/miui/internal/vip/VipServiceClient;->mData:Lcom/miui/internal/vip/protocol/PortraitData;

    if-eqz v2, :cond_15

    iget-object v2, v2, Lcom/miui/internal/vip/protocol/PortraitData;->bannerList:[Lcom/miui/internal/vip/protocol/Banner;

    invoke-static {v2}, Lcom/miui/internal/vip/protocol/Convertor;->toVipBanner([Lcom/miui/internal/vip/protocol/Banner;)Ljava/util/List;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    invoke-direct {v0, v1, v2}, Lcom/miui/internal/vip/VipResponse;-><init>(ILjava/lang/Object;)V

    const/16 v1, 0x40

    invoke-direct {p0, v1, v0}, Lcom/miui/internal/vip/VipServiceClient;->notifyResult(ILcom/miui/internal/vip/VipResponse;)V

    return-void
.end method

.method public queryUserVipInfo()V
    .registers 4

    new-instance v0, Lcom/miui/internal/vip/VipResponse;

    iget-object v1, p0, Lcom/miui/internal/vip/VipServiceClient;->mData:Lcom/miui/internal/vip/protocol/PortraitData;

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    const/16 v1, 0x3ee

    :goto_a
    iget-object v2, p0, Lcom/miui/internal/vip/VipServiceClient;->mData:Lcom/miui/internal/vip/protocol/PortraitData;

    if-eqz v2, :cond_15

    iget v2, v2, Lcom/miui/internal/vip/protocol/PortraitData;->level:I

    invoke-static {v2}, Lcom/miui/internal/vip/protocol/Convertor;->toVipUserInfo(I)Lmiui/vip/VipUserInfo;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    invoke-direct {v0, v1, v2}, Lcom/miui/internal/vip/VipResponse;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/miui/internal/vip/VipServiceClient;->notifyResult(ILcom/miui/internal/vip/VipResponse;)V

    return-void
.end method

.method public sendStatistic(Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/miui/internal/vip/utils/AuthHttpRequest;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "name"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v4, "/tongji/page"

    invoke-direct {v0, v4, v1}, Lcom/miui/internal/vip/utils/AuthHttpRequest;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->queryAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/internal/vip/utils/JsonParser;->isEmptyJson(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v3, "send statistic failed, ret = %s"

    invoke-static {v3, v2}, Lcom/miui/internal/vip/utils/Utils;->logI(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    return-void
.end method
