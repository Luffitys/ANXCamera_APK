.class public Lmiui/analytics/Analytics;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_EVENT_VALUE:J = 0x0L

.field private static final EVENT_DEFAULT_PARAM:Ljava/lang/String; = "_event_default_param_"

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;

.field private static final IS_INTERNATIONAL_BUILD:Z

.field private static final KEY_IMEI:Ljava/lang/String; = "imei"

.field private static final TAG:Ljava/lang/String; = "Analytics"

.field private static final TIMED_EVENT:Ljava/lang/String; = "_timed_event_"

.field private static final TIMED_EVENT_ID:Ljava/lang/String; = "_timed_event_id_"


# instance fields
.field private mAllEvents:Ljava/util/List;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mPackageName:Ljava/lang/String;

.field private mTimedEvents:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lmiui/analytics/Analytics;->IS_INTERNATIONAL_BUILD:Z

    new-instance v0, Lmiui/analytics/Analytics$1;

    invoke-direct {v0}, Lmiui/analytics/Analytics$1;-><init>()V

    sput-object v0, Lmiui/analytics/Analytics;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lmiui/analytics/Analytics;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/analytics/Analytics;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lmiui/analytics/Analytics;->mCount:I

    iput-object v0, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/analytics/Analytics$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/analytics/Analytics;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/analytics/Analytics;
    .locals 1

    sget-object v0, Lmiui/analytics/Analytics;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/analytics/Analytics;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 0

    sget-boolean p0, Lmiui/analytics/Analytics;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isTrackedReady()Z
    .locals 1

    iget-object p0, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    if-nez p0, :cond_0

    const-string p0, "Analytics"

    const-string v0, "method: startSession should be called before tracking events"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public declared-synchronized endSession()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lmiui/analytics/Analytics;->isEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lmiui/analytics/Analytics;->mCount:I

    if-lez v0, :cond_2

    iget v0, p0, Lmiui/analytics/Analytics;->mCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/analytics/Analytics;->mCount:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lmiui/analytics/Analytics;->isTrackedReady()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, "Analytics"

    const-string v2, "end session(%s)"

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmiui/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    iget-object v2, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/miui/internal/analytics/Event;

    iget-object v3, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v3, p0, Lmiui/analytics/Analytics;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    iput-object v0, p0, Lmiui/analytics/Analytics;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.miui.core"

    const-class v5, Lcom/miui/internal/analytics/AnalyticsService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Lmiui/analytics/Analytics$2;

    invoke-direct {v4, p0, v2, v3}, Lmiui/analytics/Analytics$2;-><init>(Lmiui/analytics/Analytics;[Lcom/miui/internal/analytics/Event;Landroid/content/Context;)V

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public endTimedEvent(Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0}, Lmiui/analytics/Analytics;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    const-string v1, "Analytics"

    if-nez v0, :cond_1

    const-string p0, "there is no timed event"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/analytics/TrackEvent;

    invoke-virtual {v2}, Lcom/miui/internal/analytics/Event;->getEventId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "_timed_event_id_"

    invoke-interface {v7, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/miui/internal/analytics/Event;->getTrackTime()J

    move-result-wide v8

    sub-long/2addr v5, v8

    const-string v2, "_timed_event_"

    invoke-virtual {p0, v2, v7, v5, v6}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;J)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move p0, v3

    goto :goto_0

    :cond_3
    move p0, v4

    :goto_0
    if-nez p0, :cond_4

    new-array p0, v3, [Ljava/lang/Object;

    aput-object p1, p0, v4

    const-string p1, "the ended event (%s) is not timed"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public onTrackPageView()V
    .locals 2

    invoke-direct {p0}, Lmiui/analytics/Analytics;->isTrackedReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/analytics/TrackPageViewEvent;

    iget-object p0, p0, Lmiui/analytics/Analytics;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/miui/internal/analytics/TrackPageViewEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized startSession(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lmiui/analytics/Analytics;->isEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget v0, p0, Lmiui/analytics/Analytics;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmiui/analytics/Analytics;->mCount:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lmiui/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/analytics/Analytics;->mPackageName:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    const-string p1, "Analytics"

    const-string v0, "start session(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public trackError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lmiui/analytics/Analytics;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lmiui/analytics/Analytics;->isTrackedReady()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_3

    const-string p2, ""

    :cond_3
    iget-object v0, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/analytics/LogEvent;

    iget-object p0, p0, Lmiui/analytics/Analytics;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/internal/analytics/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    :goto_0
    const-string p0, "Analytics"

    const-string p1, "the id or error class of logged event is null or empty"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;J)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lmiui/analytics/Analytics;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "_event_default_param_"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    return-void
.end method

.method public trackTimedEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    return-void
.end method

.method public trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V
    .locals 6

    invoke-direct {p0}, Lmiui/analytics/Analytics;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Analytics"

    const-string p1, "the id of tracked event is null or empty"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lmiui/analytics/Analytics;->isTrackedReady()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_3

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_3
    move-object v3, p2

    new-instance p2, Lcom/miui/internal/analytics/TrackEvent;

    iget-object v1, p0, Lmiui/analytics/Analytics;->mPackageName:Ljava/lang/String;

    move-object v0, p2

    move-object v2, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/analytics/TrackEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    iget-object p1, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_4

    iget-object p0, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public trackTimedEvent(Ljava/lang/String;Z)V
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    return-void
.end method

.method public trackTimedEvent(Ljava/lang/String;ZJ)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    return-void
.end method
