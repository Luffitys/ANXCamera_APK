.class public Lcom/miui/internal/analytics/XiaomiDispatcher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/analytics/Dispatchable;


# static fields
.field private static final APP_PACKAGE:Ljava/lang/String; = "_app_"

.field private static final DEVICE_ID:Ljava/lang/String; = "_di_"

.field private static final EVENT_ID:Ljava/lang/String; = "_ei_"

.field private static final EVENT_TRACK_TIME:Ljava/lang/String; = "_ett_"

.field private static final EVENT_TYPE:Ljava/lang/String; = "_et_"

.field private static final EVENT_VALUE:Ljava/lang/String; = "_ev_"

.field private static final IMEI:Ljava/lang/String; = "imei"

.field private static final LOGS:Ljava/lang/String; = "_logs_"

.field private static final LOG_EVENT_CLASS:Ljava/lang/String; = "_log_event_class_"

.field private static final LOG_EVENT_MESSAGE:Ljava/lang/String; = "_log_event_message_"

.field public static final MAX_EVENT_NUM:I = 0x2710

.field private static final MIUI_VERSION:Ljava/lang/String; = "_miuiver_"

.field private static final MODEL:Ljava/lang/String; = "_mod_"

.field public static final TAG:Ljava/lang/String; = "xiaomi"


# instance fields
.field private mBase:Ljava/util/Map;

.field private mValues:Ljava/util/List;

.field private mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/internal/analytics/XiaomiServer;->getInstance()Lcom/miui/internal/analytics/XiaomiServer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    return-void
.end method

.method private getValue(Lcom/miui/internal/analytics/Event;)Ljava/util/Map;
    .locals 2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/miui/internal/analytics/Event;->getEventId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ei_"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/internal/analytics/Event;->getTrackTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "_ett_"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private sendEvent()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "_logs_"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    iget-object v1, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/miui/internal/analytics/XiaomiServer;->send(Ljava/util/Map;)Z

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchEvent(Lcom/miui/internal/analytics/TrackEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/XiaomiDispatcher;->getValue(Lcom/miui/internal/analytics/Event;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/internal/analytics/TrackEvent;->getParam()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/internal/analytics/TrackEvent;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "_ev_"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/internal/analytics/XiaomiDispatcher;->sendEvent()V

    :cond_1
    return-void
.end method

.method public dispatchLog(Lcom/miui/internal/analytics/LogEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/XiaomiDispatcher;->getValue(Lcom/miui/internal/analytics/Event;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/internal/analytics/LogEvent;->getErrorClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_log_event_class_"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/internal/analytics/LogEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_log_event_message_"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    invoke-virtual {p0, v0}, Lcom/miui/internal/analytics/XiaomiServer;->send(Ljava/util/Map;)Z

    :cond_0
    return-void
.end method

.method public dispatchPageView(Lcom/miui/internal/analytics/TrackPageViewEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/XiaomiDispatcher;->getValue(Lcom/miui/internal/analytics/Event;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    invoke-virtual {p0, p1}, Lcom/miui/internal/analytics/XiaomiServer;->send(Ljava/util/Map;)Z

    :cond_0
    return-void
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    invoke-virtual {p1}, Lcom/miui/internal/analytics/XiaomiServer;->init()V

    :try_start_0
    invoke-static {}, Lmiui/telephony/TelephonyHelper;->getInstance()Lmiui/telephony/TelephonyHelper;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/telephony/TelephonyHelper;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "null"

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "SHA-1"

    invoke-static {p1, v0}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v0, "MD5"

    invoke-static {p1, v0}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v2, "_di_"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v1, "imei"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v0, "_app_"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string p2, "_et_"

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string p2, "_miuiver_"

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string p1, "_mod_"

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/analytics/XiaomiDispatcher;->sendEvent()V

    iget-object p0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    invoke-virtual {p0}, Lcom/miui/internal/analytics/XiaomiServer;->close()V

    return-void
.end method
