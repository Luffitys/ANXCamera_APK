.class public final Lmiui/maml/NotifierManager;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/NotifierManager$MultiBroadcastNotifier;,
        Lmiui/maml/NotifierManager$DarkModeNotifier;,
        Lmiui/maml/NotifierManager$ContentChangeNotifier;,
        Lmiui/maml/NotifierManager$MobileDataNotifier;,
        Lmiui/maml/NotifierManager$BroadcastNotifier;,
        Lmiui/maml/NotifierManager$BaseNotifier;,
        Lmiui/maml/NotifierManager$OnNotifyListener;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "NotifierManager"

.field public static TYPE_DARK_MODE:Ljava/lang/String;

.field public static TYPE_MOBILE_DATA:Ljava/lang/String;

.field public static TYPE_TIME_CHANGED:Ljava/lang/String;

.field public static TYPE_WIFI_STATE:Ljava/lang/String;

.field private static sInstance:Lmiui/maml/NotifierManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/maml/NotifierManager$BaseNotifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "DarkMode"

    sput-object v0, Lmiui/maml/NotifierManager;->TYPE_DARK_MODE:Ljava/lang/String;

    const-string v0, "MobileData"

    sput-object v0, Lmiui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    const-string v0, "WifiState"

    sput-object v0, Lmiui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    const-string v0, "TimeChanged"

    sput-object v0, Lmiui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lmiui/maml/NotifierManager;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    iput-object p1, p0, Lmiui/maml/NotifierManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lmiui/maml/NotifierManager;->DBG:Z

    return v0
.end method

.method private static createNotifier(Ljava/lang/String;Landroid/content/Context;)Lmiui/maml/NotifierManager$BaseNotifier;
    .registers 6

    sget-boolean v0, Lmiui/maml/NotifierManager;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createNotifier:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifierManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Lmiui/maml/NotifierManager$MobileDataNotifier;

    invoke-direct {v0, p1}, Lmiui/maml/NotifierManager$MobileDataNotifier;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_28
    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    const-string v3, "android.net.wifi.STATE_CHANGE"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-object v0

    :cond_40
    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v0, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    const-string v2, "android.intent.action.TIME_SET"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-object v0

    :cond_56
    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_DARK_MODE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    new-instance v0, Lmiui/maml/NotifierManager$DarkModeNotifier;

    invoke-direct {v0, p1}, Lmiui/maml/NotifierManager$DarkModeNotifier;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_64
    new-instance v0, Lmiui/maml/NotifierManager$BroadcastNotifier;

    invoke-direct {v0, p1, p0}, Lmiui/maml/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lmiui/maml/NotifierManager;
    .registers 3

    const-class v0, Lmiui/maml/NotifierManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lmiui/maml/NotifierManager;->sInstance:Lmiui/maml/NotifierManager;

    if-nez v1, :cond_e

    new-instance v1, Lmiui/maml/NotifierManager;

    invoke-direct {v1, p0}, Lmiui/maml/NotifierManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmiui/maml/NotifierManager;->sInstance:Lmiui/maml/NotifierManager;

    :cond_e
    sget-object v1, Lmiui/maml/NotifierManager;->sInstance:Lmiui/maml/NotifierManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private safeGet(Ljava/lang/String;)Lmiui/maml/NotifierManager$BaseNotifier;
    .registers 4

    iget-object v0, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/NotifierManager$BaseNotifier;

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method


# virtual methods
.method public acquireNotifier(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .registers 6

    sget-boolean v0, Lmiui/maml/NotifierManager;->DBG:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquireNotifier:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifierManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_2a
    iget-object v2, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/NotifierManager$BaseNotifier;

    move-object v0, v2

    if-nez v0, :cond_48

    iget-object v2, p0, Lmiui/maml/NotifierManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lmiui/maml/NotifierManager;->createNotifier(Ljava/lang/String;Landroid/content/Context;)Lmiui/maml/NotifierManager$BaseNotifier;

    move-result-object v2

    move-object v0, v2

    if-nez v0, :cond_40

    monitor-exit v1

    return-void

    :cond_40
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->init()V

    iget-object v2, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_2a .. :try_end_49} :catchall_4d

    invoke-virtual {v0, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->addListener(Lmiui/maml/NotifierManager$OnNotifyListener;)V

    return-void

    :catchall_4d
    move-exception v2

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v2
.end method

.method public pause(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .registers 5

    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager;->safeGet(Ljava/lang/String;)Lmiui/maml/NotifierManager$BaseNotifier;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->pauseListener(Lmiui/maml/NotifierManager$OnNotifyListener;)I

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->pause()V

    :cond_10
    return-void
.end method

.method public releaseNotifier(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .registers 6

    sget-boolean v0, Lmiui/maml/NotifierManager;->DBG:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseNotifier:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifierManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v0, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_29
    iget-object v1, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/NotifierManager$BaseNotifier;

    if-nez v1, :cond_35

    monitor-exit v0

    return-void

    :cond_35
    invoke-virtual {v1, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->removeListener(Lmiui/maml/NotifierManager$OnNotifyListener;)V

    invoke-virtual {v1}, Lmiui/maml/NotifierManager$BaseNotifier;->getRef()I

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {v1}, Lmiui/maml/NotifierManager$BaseNotifier;->finish()V

    iget-object v2, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public declared-synchronized resume(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager;->safeGet(Ljava/lang/String;)Lmiui/maml/NotifierManager$BaseNotifier;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_15

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    invoke-virtual {v0, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->resumeListener(Lmiui/maml/NotifierManager$OnNotifyListener;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->resume()V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method
