.class public Lcom/miui/internal/analytics/DispatcherManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEVICE_IMEI:Ljava/lang/String; = "_device_imei_"

.field private static final DEVICE_INFO_EVENT:Ljava/lang/String; = "_device_info_event_"

.field private static final DEVICE_MODEL:Ljava/lang/String; = "_device_model_"

.field private static final TAG:Ljava/lang/String; = "DispatcherManager"


# instance fields
.field private mBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

.field private mContext:Landroid/content/Context;

.field private mDispatcher:Ljava/util/Map;

.field private mEventReader:Lcom/miui/internal/analytics/EventReader;

.field private mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    new-instance v0, Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-direct {v0}, Lcom/miui/internal/analytics/ObjectBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    new-instance v0, Lcom/miui/internal/analytics/EventReader;

    invoke-direct {v0}, Lcom/miui/internal/analytics/EventReader;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mEventReader:Lcom/miui/internal/analytics/EventReader;

    new-instance v0, Lcom/miui/internal/analytics/PolicyHelper;

    invoke-direct {v0}, Lcom/miui/internal/analytics/PolicyHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;

    iput-object p1, p0, Lcom/miui/internal/analytics/DispatcherManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class p1, Lcom/miui/internal/analytics/XiaomiDispatcher;

    const-string v0, "xiaomi"

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    return-void
.end method

.method private dispatchCommonEvent(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Lcom/miui/internal/analytics/PolicyHelper;->getPolicy(Ljava/lang/String;)Lcom/miui/internal/analytics/Policy;

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lmiui/telephony/TelephonyHelper;->getInstance()Lmiui/telephony/TelephonyHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v2, "MD5"

    invoke-static {v1, v2}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "_device_imei_"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "_device_model_"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/miui/internal/analytics/TrackEvent;

    const-wide/16 v5, 0x0

    const-string v3, "_device_info_event_"

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/internal/analytics/TrackEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    if-eqz v0, :cond_1

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/internal/analytics/EventUtils;->enableWrite(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, v7}, Lcom/miui/internal/analytics/Policy;->execute(Lcom/miui/internal/analytics/Event;)V

    :cond_1
    return-void
.end method

.method private dispatchData(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mEventReader:Lcom/miui/internal/analytics/EventReader;

    iget-object v1, p0, Lcom/miui/internal/analytics/DispatcherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/internal/analytics/EventReader;->open(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mEventReader:Lcom/miui/internal/analytics/EventReader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/analytics/EventReader;->readEvents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/internal/analytics/Event;

    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;

    invoke-virtual {p2}, Lcom/miui/internal/analytics/Event;->getPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/analytics/PolicyHelper;->getPolicy(Ljava/lang/String;)Lcom/miui/internal/analytics/Policy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/analytics/DispatcherManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/internal/analytics/EventUtils;->enableWrite(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p2}, Lcom/miui/internal/analytics/Policy;->execute(Lcom/miui/internal/analytics/Event;)V

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    :goto_2
    iget-object p0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mEventReader:Lcom/miui/internal/analytics/EventReader;

    invoke-virtual {p0}, Lcom/miui/internal/analytics/EventReader;->close()V

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/miui/internal/analytics/DatabaseHelper;->getInstance()Lcom/miui/internal/analytics/DatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/analytics/DatabaseHelper;->deleteLastDispatchedEvents()V

    :cond_4
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/Dispatchable;

    iget-object v2, p0, Lcom/miui/internal/analytics/DispatcherManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/miui/internal/analytics/Dispatchable;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;

    invoke-virtual {v0}, Lcom/miui/internal/analytics/PolicyHelper;->clear()V

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/analytics/DispatcherManager;->dispatchData(Ljava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/internal/analytics/DispatcherManager;->mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;

    invoke-virtual {p1}, Lcom/miui/internal/analytics/PolicyHelper;->end()V

    iget-object p0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/analytics/Dispatchable;

    invoke-interface {p1}, Lcom/miui/internal/analytics/Dispatchable;->stop()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public switchDispatcher(Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/analytics/DispatcherManager;->mBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-virtual {v2, v1}, Lcom/miui/internal/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/analytics/Dispatchable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "server:%s does not exist"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DispatcherManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lcom/miui/internal/analytics/Event;->setDispatcher(Ljava/util/List;)V

    :cond_2
    return-void
.end method
