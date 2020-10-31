.class public Lcom/lguplus/Lgu5GNetworkManager;
.super Ljava/lang/Object;
.source "Lgu5GNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lguplus/Lgu5GNetworkManager$Callback;
    }
.end annotation


# static fields
.field public static final INDICATOR_5G:I = 0x1

.field public static final INDICATOR_5G_ADDED:I = 0x0

.field public static final INDICATOR_LTE:I = 0x2

.field public static final INDICATOR_OOS:I = 0x3

.field public static final INDICATOR_UNKNOWN:I = 0x4

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final RESTRICTDCNR_NO_RESTRICT:I = 0x0

.field public static final RESTRICTDCNR_RESTRICT:I = 0x1

.field public static final UPPERLAYERINTICATION_OFF:I = 0x0

.field public static final UPPERLAYERINTICATION_ON:I = 0x1


# instance fields
.field private final mCallback:Lcom/lguplus/IMiuiFiveGServiceStateCallback;

.field protected final mLguCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/lguplus/Lgu5GNetworkManager$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Lgu5GNetworkManager"

    sput-object v0, Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    new-instance v0, Lcom/lguplus/Lgu5GNetworkManager$1;

    invoke-direct {v0, p0}, Lcom/lguplus/Lgu5GNetworkManager$1;-><init>(Lcom/lguplus/Lgu5GNetworkManager;)V

    iput-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager;->mCallback:Lcom/lguplus/IMiuiFiveGServiceStateCallback;

    invoke-virtual {p0, v0}, Lcom/lguplus/Lgu5GNetworkManager;->registerFiveGServiceStateCallback(Lcom/lguplus/IMiuiFiveGServiceStateCallback;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;
    .registers 2

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get5GIndicatorStatus()I
    .registers 6

    const/4 v0, 0x4

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v1

    :try_start_9
    invoke-direct {p0}, Lcom/lguplus/Lgu5GNetworkManager;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v2, v1}, Lmiui/telephony/IMiuiTelephony;->get5GIndicatorStatus(I)I

    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_15

    move v0, v3

    :cond_14
    goto :goto_1d

    :catch_15
    move-exception v2

    sget-object v3, Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "get5GIndicatorStatus exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return v0
.end method

.method public getRestrictDcnrStatus()I
    .registers 6

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    const/4 v1, 0x1

    :try_start_9
    invoke-direct {p0}, Lcom/lguplus/Lgu5GNetworkManager;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v2, v0}, Lmiui/telephony/IMiuiTelephony;->getRestrictDcnrStatus(I)I

    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_15

    move v1, v3

    :cond_14
    goto :goto_1d

    :catch_15
    move-exception v2

    sget-object v3, Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getRestrictDcnrStatus exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return v1
.end method

.method public getUpperlayerStatus()I
    .registers 6

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    const/4 v1, 0x0

    :try_start_9
    invoke-direct {p0}, Lcom/lguplus/Lgu5GNetworkManager;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v2, v0}, Lmiui/telephony/IMiuiTelephony;->getUpperlayerStatus(I)I

    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_15

    move v1, v3

    :cond_14
    goto :goto_1d

    :catch_15
    move-exception v2

    sget-object v3, Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getUpperlayerStatus exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return v1
.end method

.method public isFiveGCapable()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/lguplus/Lgu5GNetworkManager;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isFiveGCapable()Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    :cond_c
    goto :goto_15

    :catch_d
    move-exception v1

    sget-object v2, Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "isFiveGCapable exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return v0
.end method

.method public register5GNetworkCallback(Lcom/lguplus/Lgu5GNetworkManager$Callback;)V
    .registers 4

    iget-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public registerFiveGServiceStateCallback(Lcom/lguplus/IMiuiFiveGServiceStateCallback;)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/lguplus/Lgu5GNetworkManager;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v1

    if-eqz v0, :cond_11

    invoke-interface {v0, p1, v1}, Lmiui/telephony/IMiuiTelephony;->registerFiveGServiceStateCallback(Lcom/lguplus/IMiuiFiveGServiceStateCallback;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    :cond_11
    goto :goto_1a

    :catch_12
    move-exception v0

    sget-object v1, Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "registerCallback exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    return-void
.end method

.method public unregister5GNetworkCallback()V
    .registers 5

    iget-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lguplus/Lgu5GNetworkManager$Callback;

    iget-object v3, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    nop

    goto :goto_9

    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public unregister5GNetworkCallback(Lcom/lguplus/Lgu5GNetworkManager$Callback;)V
    .registers 4

    iget-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
