.class public final Landroid/net/DnsResolver;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DnsResolver$DnsAddressAnswer;,
        Landroid/net/DnsResolver$DnsResponse;,
        Landroid/net/DnsResolver$InetAddressAnswerAccumulator;,
        Landroid/net/DnsResolver$DnsException;,
        Landroid/net/DnsResolver$Callback;,
        Landroid/net/DnsResolver$DnsError;,
        Landroid/net/DnsResolver$QueryFlag;,
        Landroid/net/DnsResolver$QueryType;,
        Landroid/net/DnsResolver$QueryClass;
    }
.end annotation


# static fields
.field public static final CLASS_IN:I = 0x1

.field public static final ERROR_PARSE:I = 0x0

.field public static final ERROR_SYSTEM:I = 0x1

.field private static final FD_EVENTS:I = 0x5

.field public static final FLAG_EMPTY:I = 0x0

.field public static final FLAG_NO_CACHE_LOOKUP:I = 0x4

.field public static final FLAG_NO_CACHE_STORE:I = 0x2

.field public static final FLAG_NO_RETRY:I = 0x1

.field private static final MAXPACKET:I = 0x2000

.field private static final NETID_UNSET:I = 0x0

.field private static final SLEEP_TIME_MS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DnsResolver"

.field public static final TYPE_A:I = 0x1

.field public static final TYPE_AAAA:I = 0x1c

.field private static final sInstance:Landroid/net/DnsResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/DnsResolver;

    invoke-direct {v0}, Landroid/net/DnsResolver;-><init>()V

    sput-object v0, Landroid/net/DnsResolver;->sInstance:Landroid/net/DnsResolver;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addCancellationSignal(Landroid/os/CancellationSignal;Ljava/io/FileDescriptor;Ljava/lang/Object;)V
    .registers 5

    new-instance v0, Landroid/net/-$$Lambda$DnsResolver$05nTktlCCI7FQsULCMbgIrjmrGc;

    invoke-direct {v0, p0, p3, p2}, Landroid/net/-$$Lambda$DnsResolver$05nTktlCCI7FQsULCMbgIrjmrGc;-><init>(Landroid/net/DnsResolver;Ljava/lang/Object;Ljava/io/FileDescriptor;)V

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method

.method private cancelQuery(Ljava/io/FileDescriptor;)V
    .registers 3

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    invoke-static {p1}, Landroid/net/NetworkUtils;->resNetworkCancel(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static getInstance()Landroid/net/DnsResolver;
    .registers 1

    sget-object v0, Landroid/net/DnsResolver;->sInstance:Landroid/net/DnsResolver;

    return-object v0
.end method

.method static synthetic lambda$query$2(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V
    .registers 4

    new-instance v0, Landroid/net/DnsResolver$DnsException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method static synthetic lambda$query$3(Landroid/net/DnsResolver$Callback;)V
    .registers 5

    new-instance v0, Landroid/net/DnsResolver$DnsException;

    new-instance v1, Landroid/system/ErrnoException;

    sget v2, Landroid/system/OsConstants;->ENONET:I

    const-string/jumbo v3, "resNetworkQuery"

    invoke-direct {v1, v3, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method static synthetic lambda$query$4(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V
    .registers 4

    new-instance v0, Landroid/net/DnsResolver$DnsException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method static synthetic lambda$query$5(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V
    .registers 4

    new-instance v0, Landroid/net/DnsResolver$DnsException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method static synthetic lambda$query$7(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V
    .registers 4

    new-instance v0, Landroid/net/DnsResolver$DnsException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method static synthetic lambda$rawQuery$0(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V
    .registers 4

    new-instance v0, Landroid/net/DnsResolver$DnsException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method static synthetic lambda$rawQuery$1(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V
    .registers 4

    new-instance v0, Landroid/net/DnsResolver$DnsException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method static synthetic lambda$registerFDListener$8(Ljava/lang/Object;Landroid/os/CancellationSignal;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_d

    :try_start_5
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_d

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_13

    return-void

    :cond_d
    :try_start_d
    invoke-static {p2}, Landroid/net/NetworkUtils;->resNetworkResult(Ljava/io/FileDescriptor;)Landroid/net/DnsResolver$DnsResponse;

    move-result-object v2
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_11} :catch_15
    .catchall {:try_start_d .. :try_end_11} :catchall_13

    move-object v0, v2

    goto :goto_32

    :catchall_13
    move-exception v2

    goto :goto_47

    :catch_15
    move-exception v2

    :try_start_16
    const-string v3, "DnsResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resNetworkResult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/system/ErrnoException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :goto_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_13

    if-eqz v1, :cond_3f

    new-instance v2, Landroid/net/DnsResolver$DnsException;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p3, v2}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void

    :cond_3f
    iget-object v2, v0, Landroid/net/DnsResolver$DnsResponse;->answerbuf:[B

    iget v3, v0, Landroid/net/DnsResolver$DnsResponse;->rcode:I

    invoke-interface {p3, v2, v3}, Landroid/net/DnsResolver$Callback;->onAnswer(Ljava/lang/Object;I)V

    return-void

    :goto_47
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_13

    throw v2
.end method

.method static synthetic lambda$registerFDListener$9(Landroid/os/MessageQueue;Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;Ljava/io/FileDescriptor;I)I
    .registers 8

    invoke-virtual {p0, p5}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    new-instance v0, Landroid/net/-$$Lambda$DnsResolver$hIO7FFv0AXN6Nj0Dzka-LD8S870;

    invoke-direct {v0, p2, p3, p5, p4}, Landroid/net/-$$Lambda$DnsResolver$hIO7FFv0AXN6Nj0Dzka-LD8S870;-><init>(Ljava/lang/Object;Landroid/os/CancellationSignal;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private registerFDListener(Ljava/util/concurrent/Executor;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;Landroid/os/CancellationSignal;Ljava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/io/FileDescriptor;",
            "Landroid/net/DnsResolver$Callback<",
            "-[B>;",
            "Landroid/os/CancellationSignal;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v7, Landroid/net/-$$Lambda$DnsResolver$kxKi6qjPYeR_SIipxW4tYpxyM50;

    move-object v1, v7

    move-object v2, v0

    move-object v3, p1

    move-object v4, p5

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/net/-$$Lambda$DnsResolver$kxKi6qjPYeR_SIipxW4tYpxyM50;-><init>(Landroid/os/MessageQueue;Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    const/4 v1, 0x5

    invoke-virtual {v0, p2, v1, v7}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$addCancellationSignal$10$DnsResolver(Ljava/lang/Object;Ljava/io/FileDescriptor;)V
    .registers 4

    monitor-enter p1

    :try_start_1
    invoke-direct {p0, p2}, Landroid/net/DnsResolver;->cancelQuery(Ljava/io/FileDescriptor;)V

    monitor-exit p1

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public synthetic lambda$query$6$DnsResolver(Ljava/lang/Object;ZLjava/io/FileDescriptor;ZLjava/io/FileDescriptor;)V
    .registers 7

    monitor-enter p1

    if-eqz p2, :cond_9

    :try_start_3
    invoke-direct {p0, p3}, Landroid/net/DnsResolver;->cancelQuery(Ljava/io/FileDescriptor;)V

    goto :goto_9

    :catchall_7
    move-exception v0

    goto :goto_10

    :cond_9
    :goto_9
    if-eqz p4, :cond_e

    invoke-direct {p0, p5}, Landroid/net/DnsResolver;->cancelQuery(Ljava/io/FileDescriptor;)V

    :cond_e
    monitor-exit p1

    return-void

    :goto_10
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_7

    throw v0
.end method

.method public query(Landroid/net/Network;Ljava/lang/String;IILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/CancellationSignal;",
            "Landroid/net/DnsResolver$Callback<",
            "-",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    if-eqz v8, :cond_f

    invoke-virtual/range {p6 .. p6}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v10, v0

    if-eqz p1, :cond_1a

    move-object/from16 v0, p1

    goto :goto_1e

    :cond_1a
    :try_start_1a
    invoke-static {}, Landroid/net/NetworkUtils;->getDnsNetwork()Landroid/net/Network;

    move-result-object v0

    :goto_1e
    move-object v11, v0

    invoke-virtual {v11}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v0
    :try_end_23
    .catch Landroid/system/ErrnoException; {:try_start_1a .. :try_end_23} :catch_4f

    const/4 v1, 0x1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    :try_start_2a
    invoke-static {v0, v12, v1, v13, v14}, Landroid/net/NetworkUtils;->resNetworkQuery(ILjava/lang/String;III)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_2e
    .catch Landroid/system/ErrnoException; {:try_start_2a .. :try_end_2e} :catch_4d

    move-object v15, v0

    nop

    new-instance v4, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;

    invoke-direct {v4, v7, v11, v1, v9}, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;-><init>(Landroid/net/DnsResolver;Landroid/net/Network;ILandroid/net/DnsResolver$Callback;)V

    monitor-enter v10

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object v3, v15

    move-object/from16 v5, p6

    move-object v6, v10

    :try_start_3e
    invoke-direct/range {v1 .. v6}, Landroid/net/DnsResolver;->registerFDListener(Ljava/util/concurrent/Executor;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;Landroid/os/CancellationSignal;Ljava/lang/Object;)V

    if-nez v8, :cond_45

    monitor-exit v10

    return-void

    :cond_45
    invoke-direct {v7, v8, v15, v10}, Landroid/net/DnsResolver;->addCancellationSignal(Landroid/os/CancellationSignal;Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    monitor-exit v10

    return-void

    :catchall_4a
    move-exception v0

    monitor-exit v10
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_4a

    throw v0

    :catch_4d
    move-exception v0

    goto :goto_56

    :catch_4f
    move-exception v0

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    :goto_56
    new-instance v1, Landroid/net/-$$Lambda$DnsResolver$wc3_cnx2aezlAHvMEbQVFaTPAcE;

    invoke-direct {v1, v9, v0}, Landroid/net/-$$Lambda$DnsResolver$wc3_cnx2aezlAHvMEbQVFaTPAcE;-><init>(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V

    move-object/from16 v2, p5

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public query(Landroid/net/Network;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/CancellationSignal;",
            "Landroid/net/DnsResolver$Callback<",
            "-",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    if-eqz v14, :cond_13

    invoke-virtual/range {p5 .. p5}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v23, v0

    if-eqz p1, :cond_1f

    move-object/from16 v0, p1

    goto :goto_23

    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/net/NetworkUtils;->getDnsNetwork()Landroid/net/Network;

    move-result-object v0
    :try_end_23
    .catch Landroid/system/ErrnoException; {:try_start_1f .. :try_end_23} :catch_e0

    :goto_23
    move-object v12, v0

    nop

    invoke-static {v12}, Landroid/net/util/DnsUtils;->haveIpv6(Landroid/net/Network;)Z

    move-result v24

    invoke-static {v12}, Landroid/net/util/DnsUtils;->haveIpv4(Landroid/net/Network;)Z

    move-result v25

    if-nez v24, :cond_3a

    if-nez v25, :cond_3a

    new-instance v0, Landroid/net/-$$Lambda$DnsResolver$kjq9c3feWPGKUPV3AzJBFi1GUvw;

    invoke-direct {v0, v15}, Landroid/net/-$$Lambda$DnsResolver$kjq9c3feWPGKUPV3AzJBFi1GUvw;-><init>(Landroid/net/DnsResolver$Callback;)V

    invoke-interface {v13, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3a
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v24, :cond_58

    :try_start_3e
    invoke-virtual {v12}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v0

    const/16 v5, 0x1c

    invoke-static {v0, v1, v4, v5, v2}, Landroid/net/NetworkUtils;->resNetworkQuery(ILjava/lang/String;III)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_48
    .catch Landroid/system/ErrnoException; {:try_start_3e .. :try_end_48} :catch_4e

    nop

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v26, v0

    goto :goto_5b

    :catch_4e
    move-exception v0

    new-instance v4, Landroid/net/-$$Lambda$DnsResolver$uxb9gSgrd6Qyj9SLhCAtOvpxa3I;

    invoke-direct {v4, v15, v0}, Landroid/net/-$$Lambda$DnsResolver$uxb9gSgrd6Qyj9SLhCAtOvpxa3I;-><init>(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V

    invoke-interface {v13, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_58
    const/4 v0, 0x0

    move-object/from16 v26, v0

    :goto_5b
    const-wide/16 v5, 0x2

    :try_start_5d
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_6b

    :catch_61
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :goto_6b
    if-eqz v25, :cond_8b

    :try_start_6d
    invoke-virtual {v12}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v0

    invoke-static {v0, v1, v4, v4, v2}, Landroid/net/NetworkUtils;->resNetworkQuery(ILjava/lang/String;III)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_75
    .catch Landroid/system/ErrnoException; {:try_start_6d .. :try_end_75} :catch_7c

    nop

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v27, v0

    move v11, v3

    goto :goto_8f

    :catch_7c
    move-exception v0

    if-eqz v24, :cond_82

    invoke-static/range {v26 .. v26}, Landroid/net/NetworkUtils;->resNetworkCancel(Ljava/io/FileDescriptor;)V

    :cond_82
    new-instance v4, Landroid/net/-$$Lambda$DnsResolver$t5xp-fS_zTQ564hG-PIaWJdBP8c;

    invoke-direct {v4, v15, v0}, Landroid/net/-$$Lambda$DnsResolver$t5xp-fS_zTQ564hG-PIaWJdBP8c;-><init>(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V

    invoke-interface {v13, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_8b
    const/4 v0, 0x0

    move-object/from16 v27, v0

    move v11, v3

    :goto_8f
    new-instance v6, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;

    move-object/from16 v10, p0

    invoke-direct {v6, v10, v12, v11, v15}, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;-><init>(Landroid/net/DnsResolver;Landroid/net/Network;ILandroid/net/DnsResolver$Callback;)V

    monitor-enter v23

    if-eqz v24, :cond_ab

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-object/from16 v5, v26

    move-object/from16 v7, p5

    move-object/from16 v8, v23

    :try_start_a3
    invoke-direct/range {v3 .. v8}, Landroid/net/DnsResolver;->registerFDListener(Ljava/util/concurrent/Executor;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;Landroid/os/CancellationSignal;Ljava/lang/Object;)V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_ab

    :catchall_a7
    move-exception v0

    move v3, v11

    move-object v4, v12

    goto :goto_de

    :cond_ab
    :goto_ab
    if-eqz v25, :cond_c0

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    move-object/from16 v9, v27

    move-object v10, v6

    move v3, v11

    move-object/from16 v11, p5

    move-object v4, v12

    move-object/from16 v12, v23

    :try_start_ba
    invoke-direct/range {v7 .. v12}, Landroid/net/DnsResolver;->registerFDListener(Ljava/util/concurrent/Executor;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;Landroid/os/CancellationSignal;Ljava/lang/Object;)V

    goto :goto_c2

    :catchall_be
    move-exception v0

    goto :goto_de

    :cond_c0
    move v3, v11

    move-object v4, v12

    :goto_c2
    if-nez v14, :cond_c6

    monitor-exit v23

    return-void

    :cond_c6
    new-instance v0, Landroid/net/-$$Lambda$DnsResolver$DW9jYL2ZOH6BjebIVPhZIrrhoD8;

    move-object/from16 v16, v0

    move-object/from16 v17, p0

    move-object/from16 v18, v23

    move/from16 v19, v25

    move-object/from16 v20, v27

    move/from16 v21, v24

    move-object/from16 v22, v26

    invoke-direct/range {v16 .. v22}, Landroid/net/-$$Lambda$DnsResolver$DW9jYL2ZOH6BjebIVPhZIrrhoD8;-><init>(Landroid/net/DnsResolver;Ljava/lang/Object;ZLjava/io/FileDescriptor;ZLjava/io/FileDescriptor;)V

    invoke-virtual {v14, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    monitor-exit v23

    return-void

    :goto_de
    monitor-exit v23
    :try_end_df
    .catchall {:try_start_ba .. :try_end_df} :catchall_be

    throw v0

    :catch_e0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    new-instance v3, Landroid/net/-$$Lambda$DnsResolver$vvKhya16sREGcN1Gxnqgw-LBoV4;

    invoke-direct {v3, v15, v0}, Landroid/net/-$$Lambda$DnsResolver$vvKhya16sREGcN1Gxnqgw-LBoV4;-><init>(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V

    invoke-interface {v13, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public rawQuery(Landroid/net/Network;Ljava/lang/String;IIILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/CancellationSignal;",
            "Landroid/net/DnsResolver$Callback<",
            "-[B>;)V"
        }
    .end annotation

    move-object/from16 v7, p7

    if-eqz v7, :cond_b

    invoke-virtual/range {p7 .. p7}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v8, v0

    if-eqz p1, :cond_23

    :try_start_13
    invoke-virtual {p1}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v0
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_13 .. :try_end_17} :catch_18

    goto :goto_24

    :catch_18
    move-exception v0

    move-object v1, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    goto :goto_51

    :cond_23
    const/4 v0, 0x0

    :goto_24
    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    :try_start_2c
    invoke-static {v0, v9, v10, v11, v12}, Landroid/net/NetworkUtils;->resNetworkQuery(ILjava/lang/String;III)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_30
    .catch Landroid/system/ErrnoException; {:try_start_2c .. :try_end_30} :catch_4f

    move-object v13, v0

    nop

    monitor-enter v8

    move-object v1, p0

    move-object/from16 v2, p6

    move-object v3, v13

    move-object/from16 v4, p8

    move-object/from16 v5, p7

    move-object v6, v8

    :try_start_3c
    invoke-direct/range {v1 .. v6}, Landroid/net/DnsResolver;->registerFDListener(Ljava/util/concurrent/Executor;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;Landroid/os/CancellationSignal;Ljava/lang/Object;)V

    if-nez v7, :cond_43

    monitor-exit v8
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_49

    return-void

    :cond_43
    move-object v1, p0

    :try_start_44
    invoke-direct {p0, v7, v13, v8}, Landroid/net/DnsResolver;->addCancellationSignal(Landroid/os/CancellationSignal;Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    monitor-exit v8

    return-void

    :catchall_49
    move-exception v0

    move-object v1, p0

    :goto_4b
    monitor-exit v8
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4d

    throw v0

    :catchall_4d
    move-exception v0

    goto :goto_4b

    :catch_4f
    move-exception v0

    move-object v1, p0

    :goto_51
    new-instance v2, Landroid/net/-$$Lambda$DnsResolver$GTAgQiExADAzbCx0WiV_97W72-g;

    move-object/from16 v3, p8

    invoke-direct {v2, v3, v0}, Landroid/net/-$$Lambda$DnsResolver$GTAgQiExADAzbCx0WiV_97W72-g;-><init>(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V

    move-object/from16 v4, p6

    invoke-interface {v4, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public rawQuery(Landroid/net/Network;[BILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "[BI",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/CancellationSignal;",
            "Landroid/net/DnsResolver$Callback<",
            "-[B>;)V"
        }
    .end annotation

    if-eqz p5, :cond_9

    invoke-virtual {p5}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_17

    :try_start_10
    invoke-virtual {p1}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v1

    goto :goto_18

    :catch_15
    move-exception v1

    goto :goto_35

    :cond_17
    const/4 v1, 0x0

    :goto_18
    array-length v2, p2

    invoke-static {v1, p2, v2, p3}, Landroid/net/NetworkUtils;->resNetworkSend(I[BII)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_10 .. :try_end_1d} :catch_15

    move-object v7, v1

    nop

    monitor-enter v0

    move-object v1, p0

    move-object v2, p4

    move-object v3, v7

    move-object v4, p6

    move-object v5, p5

    move-object v6, v0

    :try_start_26
    invoke-direct/range {v1 .. v6}, Landroid/net/DnsResolver;->registerFDListener(Ljava/util/concurrent/Executor;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;Landroid/os/CancellationSignal;Ljava/lang/Object;)V

    if-nez p5, :cond_2d

    monitor-exit v0

    return-void

    :cond_2d
    invoke-direct {p0, p5, v7, v0}, Landroid/net/DnsResolver;->addCancellationSignal(Landroid/os/CancellationSignal;Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_32

    throw v1

    :goto_35
    new-instance v2, Landroid/net/-$$Lambda$DnsResolver$h2SsAzA5_rVr-mzxppK8PJLQe98;

    invoke-direct {v2, p6, v1}, Landroid/net/-$$Lambda$DnsResolver$h2SsAzA5_rVr-mzxppK8PJLQe98;-><init>(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V

    invoke-interface {p4, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
