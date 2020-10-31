.class public Lmiui/mqsas/fdmonitor/FdInfoManager;
.super Ljava/lang/Object;
.source "FdInfoManager.java"


# static fields
.field public static final FILE_FDINFO_SUFFIX:Ljava/lang/String; = ".fds"

.field public static final FILE_MAPS_SUFFIX:Ljava/lang/String; = ".maps"

.field private static INTERESTED_CLASS:[Ljava/lang/String;

.field private static INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

.field private static OPEN_FILE_HIGH_WATER_MARK:I

.field private static TAG:Ljava/lang/String;

.field private static sDumpSystem:Z

.field private static sGetTagMethod:Ljava/lang/reflect/Method;

.field private static sGetTagTypeMethod:Ljava/lang/reflect/Method;

.field private static sGetTagValueMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "FdInfoManager"

    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    const-string v0, "java.lang.OutOfMemoryError"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_CLASS:[Ljava/lang/String;

    const-string v1, "Could not allocate JNI Env"

    const-string v2, "Could not allocate dup blob fd"

    const-string v3, "Could not read input channel file descriptors from parcel"

    const-string v4, "pthread_create"

    const-string v5, "InputChannel is not initialized"

    const-string v6, "Could not open input channel pair"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->sDumpSystem:Z

    const/16 v0, 0x7918

    sput v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->OPEN_FILE_HIGH_WATER_MARK:I

    :try_start_25
    sget v0, Landroid/system/OsConstants;->RLIMIT_NOFILE:I

    invoke-static {v0}, Landroid/system/Os;->getrlimit(I)Landroid/system/StructRlimit;

    move-result-object v0

    iget-wide v1, v0, Landroid/system/StructRlimit;->rlim_cur:J

    const-wide/16 v3, 0x7d0

    sub-long/2addr v1, v3

    long-to-int v1, v1

    sput v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->OPEN_FILE_HIGH_WATER_MARK:I
    :try_end_33
    .catch Landroid/system/ErrnoException; {:try_start_25 .. :try_end_33} :catch_34

    goto :goto_3c

    :catch_34
    move-exception v0

    sget-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    const-string v2, "Error thrown from getrlimit(RLIMIT_NOFILE)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3c
    const/4 v0, 0x0

    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagTypeMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagValueMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTooManyOpenFiles(I)Z
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x18

    if-gt v0, v1, :cond_28

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/self/fd/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    return v1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_28
    const/4 v1, 0x0

    return v1
.end method

.method private static copyFileInternal(Ljava/io/File;Ljava/io/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-wide/16 v2, 0x0

    :cond_c
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/32 v7, 0x7d8f0

    invoke-static {v4, v5, v6, v7, v8}, Landroid/system/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    move-result-wide v4
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_1c} :catch_26
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    move-wide v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_c

    goto :goto_2b

    :catchall_24
    move-exception v2

    goto :goto_33

    :catch_26
    move-exception v2

    :try_start_27
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    nop

    :goto_2b
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :goto_33
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static dumpHeapProfile(Ljava/lang/String;I)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/anr/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_fdleak_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd_MM_HH_mm_ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".hprof"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "failed to dump heap profile: "

    if-eqz v2, :cond_5d

    sget-object v2, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already exists"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5d
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_81

    sget-object v2, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not writable"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_81
    :try_start_81
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    sget-object v2, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "heap profile saved to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_9a} :catch_9b

    goto :goto_9f

    :catch_9b
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_9f
    return-void
.end method

.method public static declared-synchronized dumpIfNeeded(Lmiui/mqsas/sdk/event/JavaExceptionEvent;I)V
    .registers 8

    const-class v0, Lmiui/mqsas/fdmonitor/FdInfoManager;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->sDumpSystem:Z

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->isSystem()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f1

    if-eqz v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->isSystem()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    invoke-static {}, Lmiui/mqsas/fdmonitor/FdInfoManager;->isMtbfTest()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmiui/mqsas/fdmonitor/FdInfoManager;->isInterestedFdLeakEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_25

    move v1, v2

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_87

    if-eqz v1, :cond_5a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/anr/system_server_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "dd_MM_HH_mm_ss.SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".fds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_74

    :cond_5a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/mqsas/hprof/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".fds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_74
    nop

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPid()I

    move-result v4

    invoke-static {v4, v3}, Lmiui/mqsas/fdmonitor/FdInfoManager;->dumpOpenFds(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getJeCategroy()I

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setJeCategroy(I)V

    :cond_87
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_e9

    if-eqz v1, :cond_bb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/anr/system_server_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd_MM_HH_mm_ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".maps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_d5

    :cond_bb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/mqsas/hprof/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".maps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_d5
    nop

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPid()I

    move-result v3

    invoke-static {v3, v2}, Lmiui/mqsas/fdmonitor/FdInfoManager;->dumpProcessMaps(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e9

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getJeCategroy()I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setJeCategroy(I)V

    :cond_e9
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->isSystem()Z

    move-result v2

    sput-boolean v2, Lmiui/mqsas/fdmonitor/FdInfoManager;->sDumpSystem:Z
    :try_end_ef
    .catchall {:try_start_f .. :try_end_ef} :catchall_f1

    monitor-exit v0

    return-void

    :catchall_f1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static dumpOpenFds(ILjava/lang/String;)Z
    .registers 12

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    sget-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to read fds!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1a
    const/4 v1, 0x0

    :try_start_1b
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", size of open file descriptors: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmiui/mqsas/fdmonitor/FdInfoManager;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V

    array-length v3, v0

    move v4, v2

    :goto_45
    if-ge v4, v3, :cond_76

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_4d} :catch_84
    .catchall {:try_start_1b .. :try_end_4d} :catchall_82

    :try_start_4d
    invoke-static {v6}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_51
    .catch Landroid/system/ErrnoException; {:try_start_4d .. :try_end_51} :catch_71
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_51} :catch_84
    .catchall {:try_start_4d .. :try_end_51} :catchall_82

    nop

    :try_start_52
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ----> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lmiui/mqsas/fdmonitor/FdInfoManager;->getFdOwner(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lmiui/mqsas/fdmonitor/FdInfoManager;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_73

    :catch_71
    move-exception v7

    nop

    :goto_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :cond_76
    const/16 v3, 0x1b4

    const/4 v4, -0x1

    invoke-static {p1, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_7c} :catch_84
    .catchall {:try_start_52 .. :try_end_7c} :catchall_82

    nop

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v2, 0x1

    return v2

    :catchall_82
    move-exception v2

    goto :goto_8d

    :catch_84
    move-exception v3

    :try_start_85
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_82

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return v2

    :goto_8d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static dumpProcessMaps(ILjava/lang/String;)Z
    .registers 7

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/maps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lmiui/mqsas/fdmonitor/FdInfoManager;->copyFileInternal(Ljava/io/File;Ljava/io/File;)V

    const/16 v2, 0x1b4

    const/4 v3, -0x1

    invoke-static {p1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    sget-object v2, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Complete dump process maps for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_33} :catch_35

    const/4 v2, 0x1

    return v2

    :catch_35
    move-exception v0

    sget-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to collect maps file"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static getFdOwner(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    const-string v0, "getFdOwner: "

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, ""

    const/16 v3, 0x1d

    if-ge v1, v3, :cond_b

    return-object v2

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_51

    nop

    :try_start_18
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v3, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lmiui/mqsas/fdmonitor/FdInfoManager;->getFdOwnerImpl(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3a} :catch_3b

    return-object v0

    :catch_3b
    move-exception v3

    sget-object v4, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_51
    move-exception v1

    sget-object v3, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not a valid fd path"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private static getFdOwnerImpl(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Llibcore/io/Os;->getDefault()Llibcore/io/Os;

    move-result-object v0

    sget-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3a

    const-class v1, Llibcore/io/Os;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/io/FileDescriptor;

    aput-object v5, v4, v2

    const-string v5, "android_fdsan_get_owner_tag"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagMethod:Ljava/lang/reflect/Method;

    const-class v1, Llibcore/io/Os;

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    const-string v5, "android_fdsan_get_tag_type"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagTypeMethod:Ljava/lang/reflect/Method;

    const-class v1, Llibcore/io/Os;

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    const-string v5, "android_fdsan_get_tag_value"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagValueMethod:Ljava/lang/reflect/Method;

    :cond_3a
    sget-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagMethod:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_53

    const-string v1, "unowned"

    return-object v1

    :cond_53
    sget-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagTypeMethod:Ljava/lang/reflect/Method;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v6, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagValueMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-virtual {v6, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "owned by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static isInterestedFdLeakEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/Throwable;)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    :cond_c
    if-eqz p1, :cond_7d

    new-instance v1, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    iget-object v2, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_1a
    sget-object v3, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_CLASS:[Ljava/lang/String;

    array-length v4, v3

    move v5, v0

    :goto_1e
    const/4 v6, 0x1

    if-ge v5, v4, :cond_43

    aget-object v7, v3, v5

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    sget-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUI_FD Interested Fd leak events, exceptionClass : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_43
    sget-object v3, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

    array-length v4, v3

    move v5, v0

    :goto_47
    if-ge v5, v4, :cond_6d

    aget-object v7, v3, v5

    if-eqz v2, :cond_6a

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6a

    sget-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUI_FD Interested Fd leak events, exceptionMsg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_6a
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_6d
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_7c

    const/16 v3, 0x7530

    invoke-static {v3}, Lmiui/mqsas/fdmonitor/FdInfoManager;->checkTooManyOpenFiles(I)Z

    move-result v3

    if-eqz v3, :cond_7c

    return v6

    :cond_7c
    return v0

    :cond_7d
    sget-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    const-string v2, "MIUI_FD Interested Fd leak events, wrong params"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isMtbfTest()Z
    .registers 2

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "ro.miui.mtbftest"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    nop

    :goto_14
    return v1
.end method

.method private static println(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    sget-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
