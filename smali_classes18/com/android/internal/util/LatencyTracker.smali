.class public Lcom/android/internal/util/LatencyTracker;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# static fields
.field public static final ACTION_CHECK_CREDENTIAL:I = 0x3

.field public static final ACTION_CHECK_CREDENTIAL_UNLOCKED:I = 0x4

.field public static final ACTION_EXPAND_PANEL:I = 0x0

.field public static final ACTION_FACE_WAKE_AND_UNLOCK:I = 0x6

.field public static final ACTION_FINGERPRINT_WAKE_AND_UNLOCK:I = 0x2

.field private static final ACTION_RELOAD_PROPERTY:Ljava/lang/String; = "com.android.systemui.RELOAD_LATENCY_TRACKER_PROPERTY"

.field public static final ACTION_ROTATE_SCREEN:I = 0x6

.field public static final ACTION_TOGGLE_RECENTS:I = 0x1

.field public static final ACTION_TURN_ON_SCREEN:I = 0x5

.field private static final NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LatencyTracker"

.field private static sLatencyTracker:Lcom/android/internal/util/LatencyTracker;


# instance fields
.field private mEnabled:Z

.field private final mStartRtc:Landroid/util/SparseLongArray;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "expand panel"

    const-string v1, "toggle recents"

    const-string v2, "fingerprint wake-and-unlock"

    const-string v3, "check credential"

    const-string v4, "check credential unlocked"

    const-string v5, "turn on screen"

    const-string v6, "rotate the screen"

    const-string v7, "face wake-and-unlock"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/LatencyTracker;->NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mStartRtc:Landroid/util/SparseLongArray;

    new-instance v0, Lcom/android/internal/util/LatencyTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/util/LatencyTracker$1;-><init>(Lcom/android/internal/util/LatencyTracker;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.systemui.RELOAD_LATENCY_TRACKER_PROPERTY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/internal/util/LatencyTracker;->reloadProperty()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/util/LatencyTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/util/LatencyTracker;->reloadProperty()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;
    .registers 3

    sget-object v0, Lcom/android/internal/util/LatencyTracker;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    if-nez v0, :cond_f

    new-instance v0, Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/LatencyTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/util/LatencyTracker;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    :cond_f
    sget-object v0, Lcom/android/internal/util/LatencyTracker;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    return-object v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static logAction(II)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " latency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LatencyTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x8ce6

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method private reloadProperty()V
    .registers 3

    const-string v0, "debug.systemui.latency_tracking"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onActionEnd(I)V
    .registers 10

    iget-boolean v0, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mStartRtc:Landroid/util/SparseLongArray;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_16

    return-void

    :cond_16
    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mStartRtc:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->delete(I)V

    const-wide/16 v2, 0x1000

    sget-object v4, Lcom/android/internal/util/LatencyTracker;->NAMES:[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v7, 0x0

    invoke-static {v2, v3, v4, v7}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    sub-long v2, v0, v5

    long-to-int v2, v2

    invoke-static {p1, v2}, Lcom/android/internal/util/LatencyTracker;->logAction(II)V

    return-void
.end method

.method public onActionStart(I)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-wide/16 v0, 0x1000

    sget-object v2, Lcom/android/internal/util/LatencyTracker;->NAMES:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mStartRtc:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method
