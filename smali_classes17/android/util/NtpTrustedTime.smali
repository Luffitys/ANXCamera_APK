.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/NtpTrustedTime$NtpConnectionInfo;,
        Landroid/util/NtpTrustedTime$TimeResult;
    }
.end annotation


# static fields
.field private static final BACKUP_SERVER:Ljava/lang/String; = "persist.backup.ntpServer"

.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static mBackupServer:Ljava/lang/String;

.field private static mNtpRetries:I

.field private static mNtpRetriesMax:I

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mBackupmode:Z

.field private final mConnectivityManagerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private volatile mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/NtpTrustedTime$1;

    invoke-direct {v0, p0}, Landroid/util/NtpTrustedTime$1;-><init>(Landroid/util/NtpTrustedTime;)V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mConnectivityManagerSupplier:Ljava/util/function/Supplier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/util/NtpTrustedTime;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private countInBackupmode()V
    .registers 4

    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->isBackupSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    sget v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    sget v2, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    if-lt v0, v2, :cond_16

    const/4 v0, 0x0

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    invoke-virtual {p0, v1}, Landroid/util/NtpTrustedTime;->setBackupmode(Z)V

    :cond_16
    const-string v0, "NtpTrustedTime"

    const-string v1, "countInBackupmode() func"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getBackupmode()Z
    .registers 2

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .registers 12

    const-class v0, Landroid/util/NtpTrustedTime;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v1, :cond_53

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/util/NtpTrustedTime;

    invoke-direct {v4, v3}, Landroid/util/NtpTrustedTime;-><init>(Landroid/content/Context;)V

    sput-object v4, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    const-string/jumbo v4, "ntp_server_2"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2b

    move-object v5, v4

    goto :goto_2e

    :cond_2b
    const-string/jumbo v5, "persist.backup.ntpServer"

    :goto_2e
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_53

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_53

    const v7, 0x10e009c

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-lez v7, :cond_53

    sput v7, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\""

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    :cond_53
    sget-object v1, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_57

    monitor-exit v0

    return-object v1

    :catchall_57
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getNtpConnectionInfo()Landroid/util/NtpTrustedTime$NtpConnectionInfo;
    .registers 9

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104024e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x10e009d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const-string/jumbo v4, "ntp_server"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ntp_timeout"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v4, :cond_2c

    move-object v6, v4

    goto :goto_2d

    :cond_2c
    move-object v6, v2

    :goto_2d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_35

    const/4 v7, 0x0

    goto :goto_3a

    :cond_35
    new-instance v7, Landroid/util/NtpTrustedTime$NtpConnectionInfo;

    invoke-direct {v7, v6, v5}, Landroid/util/NtpTrustedTime$NtpConnectionInfo;-><init>(Ljava/lang/String;I)V

    :goto_3a
    return-object v7
.end method

.method private isBackupSupported()Z
    .registers 2

    sget v0, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    if-lez v0, :cond_10

    sget-object v0, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-eqz v0, :cond_10

    const-string v1, "NtpTrustedTime"

    const-string v2, "currentTimeMillis() cache hit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->currentTimeMillis()J

    move-result-wide v1

    return-wide v1

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing authoritative time source"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public forceRefresh()Z
    .registers 2

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->forceSync()Z

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public forceSync()Z
    .registers 21

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/util/NtpTrustedTime;->getNtpConnectionInfo()Landroid/util/NtpTrustedTime$NtpConnectionInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_13

    const-string v3, "NtpTrustedTime"

    const-string v4, "forceRefresh: invalid server config"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v2

    :cond_13
    iget-object v3, v1, Landroid/util/NtpTrustedTime;->mConnectivityManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    if-nez v3, :cond_26

    const-string v4, "NtpTrustedTime"

    const-string v5, "forceRefresh: no ConnectivityManager"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v2

    :cond_26
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_93

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_37

    goto :goto_93

    :cond_37
    const-string v6, "NtpTrustedTime"

    const-string v7, "forceRefresh() from cache miss"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/net/SntpClient;

    invoke-direct {v6}, Landroid/net/SntpClient;-><init>()V

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->getServer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->getTimeoutMillis()I

    move-result v8

    invoke-direct/range {p0 .. p0}, Landroid/util/NtpTrustedTime;->getBackupmode()Z

    move-result v9

    if-eqz v9, :cond_57

    invoke-virtual {v1, v2}, Landroid/util/NtpTrustedTime;->setBackupmode(Z)V

    sget-object v9, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    move-object v7, v9

    :cond_57
    const-string v9, "NtpTrustedTime"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ntp Server to access at:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v7, v8, v4}, Landroid/util/NtpTrustedTimeInjector;->requestTime(Landroid/net/SntpClient;Ljava/lang/String;ILandroid/net/Network;)Z

    move-result v9

    if-eqz v9, :cond_8e

    invoke-virtual {v6}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v9

    const-wide/16 v11, 0x2

    div-long v18, v9, v11

    new-instance v2, Landroid/util/NtpTrustedTime$TimeResult;

    invoke-virtual {v6}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v14

    invoke-virtual {v6}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v16

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Landroid/util/NtpTrustedTime$TimeResult;-><init>(JJJ)V

    iput-object v2, v1, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    const/4 v2, 0x1

    monitor-exit p0

    return v2

    :cond_8e
    invoke-direct/range {p0 .. p0}, Landroid/util/NtpTrustedTime;->countInBackupmode()V

    monitor-exit p0

    return v2

    :cond_93
    :goto_93
    const-string v6, "NtpTrustedTime"

    const-string v7, "forceRefresh: no connectivity"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v2

    :catchall_9c
    move-exception v0

    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_3 .. :try_end_9e} :catchall_9c

    throw v0
.end method

.method public getCacheAge()J
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1

    :cond_e
    const-wide v1, 0x7fffffffffffffffL

    return-wide v1
.end method

.method public getCachedNtpTime()J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "NtpTrustedTime"

    const-string v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-nez v0, :cond_e

    const-wide/16 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v1

    :goto_12
    return-wide v1
.end method

.method public getCachedNtpTimeReference()J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-nez v0, :cond_7

    const-wide/16 v1, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v1

    :goto_b
    return-wide v1
.end method

.method public getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;
    .registers 2

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    return-object v0
.end method

.method public hasCache()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setBackupmode(Z)V
    .registers 4

    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->isBackupSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean p1, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBackupmode() set the backup mode to be:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NtpTrustedTime"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
