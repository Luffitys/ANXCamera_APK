.class public Lmiui/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# static fields
.field private static final DEFAULT_EVENT_VALUE:J = 0x0L

.field private static final EVENT_DEFAULT_PARAM:Ljava/lang/String; = "_event_default_param_"

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/analytics/Analytics;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_INTERNATIONAL_BUILD:Z

.field private static final KEY_IMEI:Ljava/lang/String; = "imei"

.field private static final TAG:Ljava/lang/String; = "Analytics"

.field private static final TIMED_EVENT:Ljava/lang/String; = "_timed_event_"

.field private static final TIMED_EVENT_ID:Ljava/lang/String; = "_timed_event_id_"


# instance fields
.field private mAllEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/internal/analytics/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mPackageName:Ljava/lang/String;

.field private mTimedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/internal/analytics/TrackEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    nop

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
    .registers 3

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
    .registers 2

    invoke-direct {p0}, Lmiui/analytics/Analytics;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/analytics/Analytics;
    .registers 1

    sget-object v0, Lmiui/analytics/Analytics;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/analytics/Analytics;

    return-object v0
.end method

.method private isEnabled()Z
    .registers 2

    sget-boolean v0, Lmiui/analytics/Analytics;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isTrackedReady()Z
    .registers 3

    iget-object v0, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    if-nez v0, :cond_d

    const-string v0, "Analytics"

    const-string v1, "method: startSession should be called before tracking events"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_d
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized endSession()V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lmiui/analytics/Analytics;->isEnabled()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_68

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget v0, p0, Lmiui/analytics/Analytics;->mCount:I

    if-lez v0, :cond_66

    iget v0, p0, Lmiui/analytics/Analytics;->mCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/analytics/Analytics;->mCount:I

    if-nez v0, :cond_66

    invoke-direct {p0}, Lmiui/analytics/Analytics;->isTrackedReady()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_68

    if-nez v0, :cond_1d

    monitor-exit p0

    return-void

    :cond_1d
    :try_start_1d
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
    :try_end_66
    .catchall {:try_start_1d .. :try_end_66} :catchall_68

    :cond_66
    monitor-exit p0

    return-void

    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public endTimedEvent(Ljava/lang/String;)V
    .registers 12

    invoke-direct {p0}, Lmiui/analytics/Analytics;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    const-string v1, "Analytics"

    if-nez v0, :cond_13

    const-string v0, "there is no timed event"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/analytics/TrackEvent;

    invoke-virtual {v3}, Lcom/miui/internal/analytics/TrackEvent;->getEventId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "_timed_event_id_"

    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/miui/internal/analytics/TrackEvent;->getTrackTime()J

    move-result-wide v7

    sub-long v7, v4, v7

    const-string v9, "_timed_event_"

    invoke-virtual {p0, v9, v6, v7, v8}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;J)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4d

    :cond_4c
    goto :goto_18

    :cond_4d
    :goto_4d
    if-nez v2, :cond_5e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const-string v3, "the ended event (%s) is not timed"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    return-void
.end method

.method public onTrackPageView()V
    .registers 4

    invoke-direct {p0}, Lmiui/analytics/Analytics;->isTrackedReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/analytics/TrackPageViewEvent;

    iget-object v2, p0, Lmiui/analytics/Analytics;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/miui/internal/analytics/TrackPageViewEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized startSession(Landroid/content/Context;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lmiui/analytics/Analytics;->isEnabled()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_4e

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    if-eqz p1, :cond_4c

    :try_start_b
    iget v0, p0, Lmiui/analytics/Analytics;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmiui/analytics/Analytics;->mCount:I

    if-nez v0, :cond_4c

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/Analytics;->mPackageName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    const-string v0, "Analytics"

    const-string v1, "start session(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_b .. :try_end_4c} :catchall_4e

    :cond_4c
    monitor-exit p0

    return-void

    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public trackError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lmiui/analytics/Analytics;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_2c

    :cond_14
    invoke-direct {p0}, Lmiui/analytics/Analytics;->isTrackedReady()Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    if-nez p2, :cond_1f

    const-string p2, ""

    :cond_1f
    iget-object v0, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/analytics/LogEvent;

    iget-object v2, p0, Lmiui/analytics/Analytics;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/miui/internal/analytics/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2c
    :goto_2c
    const-string v0, "Analytics"

    const-string v1, "the id or error class of logged event is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;J)V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Lmiui/analytics/Analytics;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_event_default_param_"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    return-void
.end method

.method public trackTimedEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    return-void
.end method

.method public trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    invoke-direct {p0}, Lmiui/analytics/Analytics;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "Analytics"

    const-string v1, "the id of tracked event is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    invoke-direct {p0}, Lmiui/analytics/Analytics;->isTrackedReady()Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    if-nez p2, :cond_24

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p2, v0

    :cond_24
    new-instance v6, Lcom/miui/internal/analytics/TrackEvent;

    iget-object v1, p0, Lmiui/analytics/Analytics;->mPackageName:Ljava/lang/String;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/analytics/TrackEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    iget-object v1, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_3b

    iget-object v1, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    return-void
.end method

.method public trackTimedEvent(Ljava/lang/String;Z)V
    .registers 9

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    return-void
.end method

.method public trackTimedEvent(Ljava/lang/String;ZJ)V
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    return-void
.end method
