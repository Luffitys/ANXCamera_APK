.class public Lcom/miui/internal/analytics/DispatcherManager;
.super Ljava/lang/Object;
.source "DispatcherManager.java"


# static fields
.field private static final DEVICE_IMEI:Ljava/lang/String; = "_device_imei_"

.field private static final DEVICE_INFO_EVENT:Ljava/lang/String; = "_device_info_event_"

.field private static final DEVICE_MODEL:Ljava/lang/String; = "_device_model_"

.field private static final TAG:Ljava/lang/String; = "DispatcherManager"


# instance fields
.field private mBuilder:Lcom/miui/internal/analytics/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/analytics/ObjectBuilder<",
            "Lcom/miui/internal/analytics/Dispatchable;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDispatcher:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/miui/internal/analytics/Dispatchable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEventReader:Lcom/miui/internal/analytics/EventReader;

.field private mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

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

    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/XiaomiDispatcher;

    const-string v2, "xiaomi"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    return-void
.end method

.method private dispatchCommonEvent(Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Lcom/miui/internal/analytics/PolicyHelper;->getPolicy(Ljava/lang/String;)Lcom/miui/internal/analytics/Policy;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lmiui/telephony/TelephonyHelper;->getInstance()Lmiui/telephony/TelephonyHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v2, "null"

    move-object v8, v2

    goto :goto_2a

    :cond_1f
    const-string v3, "MD5"

    invoke-static {v2, v3}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    :goto_2a
    const-string v2, "_device_imei_"

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "_device_model_"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/miui/internal/analytics/TrackEvent;

    const-wide/16 v6, 0x0

    const-string v4, "_device_info_event_"

    move-object v2, v9

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/miui/internal/analytics/TrackEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    if-eqz v0, :cond_59

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/miui/internal/analytics/DispatcherManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/internal/analytics/EventUtils;->enableWrite(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-virtual {v0, v2}, Lcom/miui/internal/analytics/Policy;->execute(Lcom/miui/internal/analytics/Event;)V

    :cond_59
    return-void
.end method

.method private dispatchData(Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/internal/analytics/Item;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mEventReader:Lcom/miui/internal/analytics/EventReader;

    iget-object v1, p0, Lcom/miui/internal/analytics/DispatcherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/internal/analytics/EventReader;->open(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mEventReader:Lcom/miui/internal/analytics/EventReader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/analytics/EventReader;->readEvents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/analytics/Event;

    iget-object v4, p0, Lcom/miui/internal/analytics/DispatcherManager;->mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;

    invoke-virtual {v3}, Lcom/miui/internal/analytics/Event;->getPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/internal/analytics/PolicyHelper;->getPolicy(Ljava/lang/String;)Lcom/miui/internal/analytics/Policy;

    move-result-object v4

    if-eqz v4, :cond_59

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v5

    if-eqz v5, :cond_57

    iget-object v5, p0, Lcom/miui/internal/analytics/DispatcherManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/internal/analytics/EventUtils;->enableWrite(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_53

    goto :goto_57

    :cond_53
    invoke-virtual {v4, v3}, Lcom/miui/internal/analytics/Policy;->execute(Lcom/miui/internal/analytics/Event;)V

    goto :goto_59

    :cond_57
    :goto_57
    const/4 v1, 0x0

    goto :goto_5a

    :cond_59
    :goto_59
    goto :goto_28

    :cond_5a
    :goto_5a
    iget-object v2, p0, Lcom/miui/internal/analytics/DispatcherManager;->mEventReader:Lcom/miui/internal/analytics/EventReader;

    invoke-virtual {v2}, Lcom/miui/internal/analytics/EventReader;->close()V

    if-eqz v1, :cond_68

    invoke-static {}, Lcom/miui/internal/analytics/DatabaseHelper;->getInstance()Lcom/miui/internal/analytics/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/analytics/DatabaseHelper;->deleteLastDispatchedEvents()V

    :cond_68
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/internal/analytics/Item;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/Dispatchable;

    iget-object v2, p0, Lcom/miui/internal/analytics/DispatcherManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/miui/internal/analytics/Dispatchable;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    :cond_24
    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;

    invoke-virtual {v0}, Lcom/miui/internal/analytics/PolicyHelper;->clear()V

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/analytics/DispatcherManager;->dispatchData(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;

    invoke-virtual {v0}, Lcom/miui/internal/analytics/PolicyHelper;->end()V

    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/Dispatchable;

    invoke-interface {v1}, Lcom/miui/internal/analytics/Dispatchable;->stop()V

    goto :goto_3b

    :cond_4b
    return-void
.end method

.method public switchDispatcher(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_57

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/analytics/DispatcherManager;->mBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-virtual {v2, v1}, Lcom/miui/internal/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/analytics/Dispatchable;

    if-nez v2, :cond_37

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "server:%s does not exist"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DispatcherManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :cond_37
    iget-object v3, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_42
    goto :goto_f

    :cond_43
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_57

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/miui/internal/analytics/Event;->setDispatcher(Ljava/util/List;)V

    :cond_57
    return-void
.end method
