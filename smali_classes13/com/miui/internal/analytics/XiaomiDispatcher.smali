.class public Lcom/miui/internal/analytics/XiaomiDispatcher;
.super Ljava/lang/Object;
.source "XiaomiDispatcher.java"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;


# direct methods
.method public constructor <init>()V
    .registers 2

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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/analytics/Event;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/miui/internal/analytics/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_ei_"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/internal/analytics/Event;->getTrackTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_ett_"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private sendEvent()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    if-eqz v0, :cond_2a

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

    :cond_2a
    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2f
    return-void
.end method


# virtual methods
.method public dispatchEvent(Lcom/miui/internal/analytics/TrackEvent;)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    if-eqz v0, :cond_52

    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/XiaomiDispatcher;->getValue(Lcom/miui/internal/analytics/Event;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/internal/analytics/TrackEvent;->getParam()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_2e
    invoke-virtual {p1}, Lcom/miui/internal/analytics/TrackEvent;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "_ev_"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_52

    invoke-direct {p0}, Lcom/miui/internal/analytics/XiaomiDispatcher;->sendEvent()V

    :cond_52
    return-void
.end method

.method public dispatchLog(Lcom/miui/internal/analytics/LogEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    if-eqz v0, :cond_1f

    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/XiaomiDispatcher;->getValue(Lcom/miui/internal/analytics/Event;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/internal/analytics/LogEvent;->getErrorClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_log_event_class_"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/internal/analytics/LogEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_log_event_message_"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/analytics/XiaomiServer;->send(Ljava/util/Map;)Z

    :cond_1f
    return-void
.end method

.method public dispatchPageView(Lcom/miui/internal/analytics/TrackPageViewEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/XiaomiDispatcher;->getValue(Lcom/miui/internal/analytics/Event;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/analytics/XiaomiServer;->send(Ljava/util/Map;)Z

    :cond_d
    return-void
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    const-string v0, "null"

    iget-object v1, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    invoke-virtual {v1}, Lcom/miui/internal/analytics/XiaomiServer;->init()V

    :try_start_7
    invoke-static {}, Lmiui/telephony/TelephonyHelper;->getInstance()Lmiui/telephony/TelephonyHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object v1, v0

    nop

    goto :goto_36

    :cond_18
    const-string v0, "SHA-1"

    invoke-static {v1, v0}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MD5"

    invoke-static {v1, v2}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    :goto_36
    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v3, "_di_"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v3, "imei"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v3, "_app_"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v3, "_et_"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v3, "_miuiver_"

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v3, "_mod_"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_69} :catch_6b

    nop

    goto :goto_6c

    :catch_6b
    move-exception v0

    :goto_6c
    return-void
.end method

.method public stop()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/analytics/XiaomiDispatcher;->sendEvent()V

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    invoke-virtual {v0}, Lcom/miui/internal/analytics/XiaomiServer;->close()V

    return-void
.end method
