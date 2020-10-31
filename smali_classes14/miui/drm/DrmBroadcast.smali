.class public Lmiui/drm/DrmBroadcast;
.super Ljava/lang/Object;
.source "DrmBroadcast.java"


# static fields
.field public static final ACTION_CHECK_TIME_UP:Ljava/lang/String; = "miui.intent.action.CHECK_TIME_UP"

.field private static final FIRST_DELAY_AFTER_BOOT:J = 0x1b7740L

.field private static final INTERVAL:J = 0x6ddd00L

.field private static final REQUEST_CODE:I = 0x1

.field private static volatile sInstance:Lmiui/drm/DrmBroadcast;

.field private static final sMutex:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/drm/DrmBroadcast;->sMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/drm/DrmBroadcast;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.CHECK_TIME_UP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/drm/DrmBroadcast;->mContext:Landroid/content/Context;

    new-instance v2, Lmiui/drm/ThemeReceiver;

    invoke-direct {v2}, Lmiui/drm/ThemeReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lmiui/drm/DrmBroadcast;
    .registers 3

    sget-object v0, Lmiui/drm/DrmBroadcast;->sInstance:Lmiui/drm/DrmBroadcast;

    if-nez v0, :cond_17

    sget-object v0, Lmiui/drm/DrmBroadcast;->sMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/drm/DrmBroadcast;->sInstance:Lmiui/drm/DrmBroadcast;

    if-nez v1, :cond_12

    new-instance v1, Lmiui/drm/DrmBroadcast;

    invoke-direct {v1, p0}, Lmiui/drm/DrmBroadcast;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmiui/drm/DrmBroadcast;->sInstance:Lmiui/drm/DrmBroadcast;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lmiui/drm/DrmBroadcast;->sInstance:Lmiui/drm/DrmBroadcast;

    return-object v0
.end method


# virtual methods
.method public broadcast()V
    .registers 11

    iget-object v0, p0, Lmiui/drm/DrmBroadcast;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.CHECK_TIME_UP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/drm/DrmBroadcast;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const/4 v2, 0x3

    const-wide/32 v3, 0x1b7740

    const-wide/32 v5, 0x6ddd00

    move-object v1, v0

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method
