.class public final Lcom/android/internal/os/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field private static final ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field public static final API_ENFORCEMENT_POLICY_MASK:I = 0x3000

.field public static final API_ENFORCEMENT_POLICY_SHIFT:I

.field public static final BIND_MOUNT_APP_DATA_DIRS:Ljava/lang/String; = "--bind-mount-data-dirs"

.field public static final BIND_MOUNT_APP_STORAGE_DIRS:Ljava/lang/String; = "--bind-mount-storage-dirs"

.field public static final CHILD_ZYGOTE_ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field public static final CHILD_ZYGOTE_SOCKET_NAME_ARG:Ljava/lang/String; = "--zygote-socket="

.field public static final CHILD_ZYGOTE_UID_RANGE_END:Ljava/lang/String; = "--uid-range-end="

.field public static final CHILD_ZYGOTE_UID_RANGE_START:Ljava/lang/String; = "--uid-range-start="

.field public static final DEBUG_ALWAYS_JIT:I = 0x40

.field public static final DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final DEBUG_ENABLE_JDWP:I = 0x1

.field public static final DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static final DEBUG_GENERATE_DEBUG_INFO:I = 0x20

.field public static final DEBUG_GENERATE_MINI_DEBUG_INFO:I = 0x800

.field public static final DEBUG_IGNORE_APP_SIGNAL_HANDLER:I = 0x20000

.field public static final DEBUG_JAVA_DEBUGGABLE:I = 0x100

.field public static final DEBUG_NATIVE_DEBUGGABLE:I = 0x80

.field public static final DISABLE_TEST_API_ENFORCEMENT_POLICY:I = 0x40000

.field public static final DISABLE_VERIFIER:I = 0x200

.field public static final GWP_ASAN_LEVEL_ALWAYS:I = 0x400000

.field public static final GWP_ASAN_LEVEL_LOTTERY:I = 0x200000

.field public static final GWP_ASAN_LEVEL_MASK:I = 0x600000

.field public static final GWP_ASAN_LEVEL_NEVER:I = 0x0

.field static final INT_ARRAY_2D:[[I

.field public static final MEMORY_TAG_LEVEL_ASYNC:I = 0x100000

.field public static final MEMORY_TAG_LEVEL_MASK:I = 0x180000

.field public static final MEMORY_TAG_LEVEL_SYNC:I = 0x180000

.field public static final MEMORY_TAG_LEVEL_TBI:I = 0x80000

.field public static final MOUNT_EXTERNAL_ANDROID_WRITABLE:I = 0x8

.field public static final MOUNT_EXTERNAL_DEFAULT:I = 0x1

.field public static final MOUNT_EXTERNAL_FULL:I = 0x6

.field public static final MOUNT_EXTERNAL_INSTALLER:I = 0x5

.field public static final MOUNT_EXTERNAL_LEGACY:I = 0x4

.field public static final MOUNT_EXTERNAL_NONE:I = 0x0

.field public static final MOUNT_EXTERNAL_PASS_THROUGH:I = 0x7

.field public static final MOUNT_EXTERNAL_READ:I = 0x2

.field public static final MOUNT_EXTERNAL_WRITE:I = 0x3

.field public static final ONLY_USE_SYSTEM_OAT_FILES:I = 0x400

.field public static final PKG_DATA_INFO_MAP:Ljava/lang/String; = "--pkg-data-info-map"

.field public static final PRIMARY_SOCKET_NAME:Ljava/lang/String; = "zygote"

.field private static final PRIORITY_MAX:I = -0x14

.field public static final PROFILE_FROM_SHELL:I = 0x8000

.field public static final PROFILE_SYSTEM_SERVER:I = 0x4000

.field public static final PROPERTY_CHECK_INTERVAL:J = 0xea60L

.field public static final SECONDARY_SOCKET_NAME:Ljava/lang/String; = "zygote_secondary"

.field public static final SOCKET_BUFFER_SIZE:I = 0x100

.field public static final START_AS_TOP_APP_ARG:Ljava/lang/String; = "--is-top-app"

.field private static final USAP_ERROR_PREFIX:Ljava/lang/String; = "Invalid command to USAP: "

.field static final USAP_MANAGEMENT_MESSAGE_BYTES:I = 0x8

.field public static final USAP_POOL_PRIMARY_SOCKET_NAME:Ljava/lang/String; = "usap_pool_primary"

.field public static final USAP_POOL_SECONDARY_SOCKET_NAME:Ljava/lang/String; = "usap_pool_secondary"

.field public static final USE_APP_IMAGE_STARTUP_CACHE:I = 0x10000

.field public static final WHITELISTED_DATA_INFO_MAP:Ljava/lang/String; = "--whitelisted-data-info-map"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    nop

    const/16 v0, 0x3000

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    sput v0, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/Zygote;->INT_ARRAY_2D:[[I

    return-void

    :array_1a
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allowAppFilesAcrossFork(Landroid/content/pm/ApplicationInfo;)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getAllApkPaths()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method static appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 7

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    const-string v3, " \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    const-string v4, "\'\\\'\'"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    return-void
.end method

.method static applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V
    .registers 2

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    :cond_a
    return-void
.end method

.method static applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    iget v1, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_11

    goto :goto_19

    :cond_11
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v2, "Peer is permitted to specify an explicit invoke-with wrapper command only for debuggable applications."

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    :goto_19
    return-void
.end method

.method static applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    :cond_c
    return-void
.end method

.method static applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_25

    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_25

    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    if-eqz v3, :cond_25

    iget v3, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    if-lt v3, v1, :cond_1d

    goto :goto_25

    :cond_1d
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v2, "System UID may not launch process with UID < 1000"

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    :goto_25
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    if-nez v0, :cond_31

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    :cond_31
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    if-nez v0, :cond_3d

    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    :cond_3d
    return-void
.end method

.method private static blockSigTerm()V
    .registers 0

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeBlockSigTerm()V

    return-void
.end method

.method private static boostUsapPriority()V
    .registers 0

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeBoostUsapPriority()V

    return-void
.end method

.method private static callPostForkChildHooks(IZZLjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ldalvik/system/ZygoteHooks;->postForkChild(IZZLjava/lang/String;)V

    return-void
.end method

.method private static callPostForkSystemServerHooks(I)V
    .registers 1

    invoke-static {p0}, Ldalvik/system/ZygoteHooks;->postForkSystemServer(I)V

    return-void
.end method

.method private static containsInetGid([I)Z
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_f

    aget v1, p0, v0

    const/16 v2, 0xbbb

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    return v1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method static createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_SOCKET_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_11
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_19} :catch_41

    move v1, v2

    nop

    :try_start_1b
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v2, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance v3, Landroid/net/LocalServerSocket;

    invoke-direct {v3, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_28} :catch_29

    return-object v3

    :catch_29
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error building socket from file descriptor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_41
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket unset or invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static emptyUsapPool()V
    .registers 0

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeEmptyUsapPool()V

    return-void
.end method

.method static execShell(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/bin/sh"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "-c"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    :try_start_10
    aget-object v1, v0, v2

    invoke-static {v1, v0}, Landroid/system/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_10 .. :try_end_15} :catch_17

    nop

    return-void

    :catch_17
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)I
    .registers 23

    move-object v0, p2

    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    invoke-static/range {p0 .. p17}, Lcom/android/internal/os/Zygote;->nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)I

    move-result v1

    if-nez v1, :cond_1d

    const-wide/16 v2, 0x40

    const-string v4, "PostFork"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz v0, :cond_1d

    array-length v2, v0

    if-lez v2, :cond_1d

    invoke-static {p2}, Lcom/android/internal/os/Zygote;->containsInetGid([I)Z

    move-result v2

    invoke-static {v2}, Landroid/net/NetworkUtils;->setAllowNetworkingForProcess(Z)V

    :cond_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    return v1
.end method

.method static forkSystemServer(II[II[[IJJ)I
    .registers 12

    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    invoke-static/range {p0 .. p8}, Lcom/android/internal/os/Zygote;->nativeForkSystemServer(II[II[[IJJ)I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    return v0
.end method

.method static forkUsap(Landroid/net/LocalServerSocket;[IZ)Ljava/lang/Runnable;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    sget v1, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v1}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_7} :catch_30

    move-object v0, v1

    nop

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-static {v2, v4, p1, p2}, Lcom/android/internal/os/Zygote;->nativeForkUsap(II[IZ)I

    move-result v2

    if-nez v2, :cond_29

    aget-object v1, v0, v1

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    aget-object v1, v0, v3

    invoke-static {p0, v1}, Lcom/android/internal/os/Zygote;->usapMain(Landroid/net/LocalServerSocket;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1

    :cond_29
    aget-object v1, v0, v3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/4 v1, 0x0

    return-object v1

    :catch_30
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to create USAP pipe."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getConfigurationProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string/jumbo v2, "persist.device_config"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "runtime_native"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string v1, "."

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigurationPropertyBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string/jumbo v2, "persist.device_config"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "runtime_native"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string v1, "."

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getUsapPipeFDs()[I
    .registers 1

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeGetUsapPipeFDs()[I

    move-result-object v0

    return-object v0
.end method

.method static getUsapPoolCount()I
    .registers 1

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeGetUsapPoolCount()I

    move-result v0

    return v0
.end method

.method static getUsapPoolEventFD()Ljava/io/FileDescriptor;
    .registers 2

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeGetUsapPoolEventFD()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    return-object v0
.end method

.method public static getWrapProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2a

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    return-object v1

    :cond_29
    return-object v0

    :cond_2a
    :goto_2a
    return-object v0
.end method

.method static initNativeState(Z)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/os/Zygote;->nativeInitNativeState(Z)V

    return-void
.end method

.method protected static native nativeAllowFileAcrossFork(Ljava/lang/String;)V
.end method

.method private static native nativeBlockSigTerm()V
.end method

.method private static native nativeBoostUsapPriority()V
.end method

.method private static native nativeEmptyUsapPool()V
.end method

.method private static native nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)I
.end method

.method private static native nativeForkSystemServer(II[II[[IJJ)I
.end method

.method private static native nativeForkUsap(II[IZ)I
.end method

.method private static native nativeGetUsapPipeFDs()[I
.end method

.method private static native nativeGetUsapPoolCount()I
.end method

.method private static native nativeGetUsapPoolEventFD()I
.end method

.method protected static native nativeInitNativeState(Z)V
.end method

.method protected static native nativeInstallSeccompUidGidFilter(II)V
.end method

.method public static native nativeParseSigChld([BI[I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static native nativePreApplicationInit()V
.end method

.method private static native nativeRemoveUsapTableEntry(I)Z
.end method

.method private static native nativeSpecializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)V
.end method

.method public static native nativeSupportsTaggedPointers()Z
.end method

.method private static native nativeUnblockSigTerm()V
.end method

.method static readArgumentList(Ljava/io/BufferedReader;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_35

    move v0, v1

    nop

    const/16 v1, 0x400

    if-gt v0, v1, :cond_2d

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_2c

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aget-object v3, v1, v2

    if-eqz v3, :cond_24

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_24
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Truncated request"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2c
    return-object v1

    :cond_2d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Max arg count exceeded"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_35
    move-exception v0

    const-string v1, "Zygote"

    const-string v2, "Invalid Zygote wire format: non-int at argc"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid wire format"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static removeUsapTableEntry(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/internal/os/Zygote;->nativeRemoveUsapTableEntry(I)Z

    move-result v0

    return v0
.end method

.method static setAppProcessName(Lcom/android/internal/os/ZygoteArguments;Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    goto :goto_19

    :cond_a
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    goto :goto_19

    :cond_14
    const-string v0, "Unable to set package name."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void
.end method

.method private static specializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .registers 19

    invoke-static/range {p0 .. p15}, Lcom/android/internal/os/Zygote;->nativeSpecializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    const-wide/16 v0, 0x40

    const-string v2, "PostFork"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    return-void
.end method

.method private static unblockSigTerm()V
    .registers 0

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeUnblockSigTerm()V

    return-void
.end method

.method private static usapMain(Landroid/net/LocalServerSocket;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;
    .registers 31

    const-string v1, "Failed to close USAP pool socket"

    const-string v2, "USAP"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "usap64"

    goto :goto_15

    :cond_12
    const-string/jumbo v0, "usap32"

    :goto_15
    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/internal/os/Zygote;->boostUsapPriority()V

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    :goto_23
    :try_start_23
    invoke-virtual/range {p0 .. p0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_205

    move-object v4, v0

    :try_start_28
    invoke-static {}, Lcom/android/internal/os/Zygote;->blockSigTerm()V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_42} :catch_1ff

    move-object v5, v8

    :try_start_43
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v8
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_47} :catch_1f7

    move-object v6, v8

    :try_start_48
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->readArgumentList(Ljava/io/BufferedReader;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1c8

    new-instance v9, Lcom/android/internal/os/ZygoteArguments;

    invoke-direct {v9, v8}, Lcom/android/internal/os/ZygoteArguments;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    invoke-static {v7}, Lcom/android/internal/os/Zygote;->validateUsapCommand(Lcom/android/internal/os/ZygoteArguments;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_57} :catch_1ed

    nop

    :try_start_58
    invoke-static {v7, v2}, Lcom/android/internal/os/Zygote;->setAppProcessName(Lcom/android/internal/os/ZygoteArguments;Ljava/lang/String;)V

    invoke-static {v7, v6}, Lcom/android/internal/os/Zygote;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V

    invoke-static {v7}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    const/4 v0, 0x0

    iget-object v8, v7, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;
    :try_end_64
    .catchall {:try_start_58 .. :try_end_64} :catchall_1bb

    if-eqz v8, :cond_7f

    :try_start_66
    iget-object v8, v7, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/internal/os/Zygote;->INT_ARRAY_2D:[[I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_74

    move-object v0, v8

    move-object/from16 v24, v0

    goto :goto_81

    :catchall_74
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    goto/16 :goto_1c4

    :cond_7f
    move-object/from16 v24, v0

    :goto_81
    :try_start_81
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_178
    .catchall {:try_start_81 .. :try_end_84} :catchall_16e

    :try_start_84
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_1bb

    :try_start_87
    invoke-virtual/range {p0 .. p0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8e
    .catch Landroid/system/ErrnoException; {:try_start_87 .. :try_end_8e} :catch_15c
    .catchall {:try_start_87 .. :try_end_8e} :catchall_1bb

    nop

    const/4 v1, 0x0

    :try_start_90
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x8

    invoke-direct {v0, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    int-to-long v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    move-object/from16 v15, p1

    invoke-static {v15, v9, v1, v10}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_b0} :catch_123
    .catchall {:try_start_90 .. :try_end_b0} :catchall_119

    :try_start_b0
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    nop

    iget v8, v7, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iget v9, v7, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iget-object v10, v7, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    iget v11, v7, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    iget v13, v7, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    iget-object v14, v7, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    iget-object v0, v7, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget-boolean v1, v7, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    iget-object v2, v7, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;

    iget-object v12, v7, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;
    :try_end_c8
    .catchall {:try_start_b0 .. :try_end_c8} :catchall_1bb

    move-object/from16 v25, v5

    :try_start_ca
    iget-boolean v5, v7, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z
    :try_end_cc
    .catchall {:try_start_ca .. :try_end_cc} :catchall_110

    move-object/from16 v26, v6

    :try_start_ce
    iget-object v6, v7, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;
    :try_end_d0
    .catchall {:try_start_ce .. :try_end_d0} :catchall_109

    move-object/from16 v27, v4

    :try_start_d2
    iget-object v4, v7, Lcom/android/internal/os/ZygoteArguments;->mWhitelistedDataInfoList:[Ljava/lang/String;
    :try_end_d4
    .catchall {:try_start_d2 .. :try_end_d4} :catchall_104

    move/from16 v28, v3

    :try_start_d6
    iget-boolean v3, v7, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z

    move/from16 v22, v3

    iget-boolean v3, v7, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    move-object/from16 v18, v12

    move-object/from16 v12, v24

    move-object v15, v0

    move/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v4

    move/from16 v23, v3

    invoke-static/range {v8 .. v23}, Lcom/android/internal/os/Zygote;->specializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    iget v0, v7, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object v1, v7, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object v2, v7, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_100
    .catchall {:try_start_d6 .. :try_end_100} :catchall_1b9

    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V

    return-object v0

    :catchall_104
    move-exception v0

    move/from16 v28, v3

    goto/16 :goto_1c4

    :catchall_109
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v4

    goto/16 :goto_1c4

    :catchall_110
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v4

    move-object/from16 v26, v6

    goto/16 :goto_1c4

    :catchall_119
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    goto :goto_157

    :catch_123
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    :try_start_12c
    const-string v3, "Failed to write PID (%d) to pipe (%d): %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_156
    .catchall {:try_start_12c .. :try_end_156} :catchall_156

    :catchall_156
    move-exception v0

    :goto_157
    :try_start_157
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    nop

    throw v0

    :catch_15c
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    :goto_16d
    throw v1
    :try_end_16e
    .catchall {:try_start_157 .. :try_end_16e} :catchall_1b9

    :catchall_16e
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    goto :goto_1a2

    :catch_178
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object v3, v0

    move-object v0, v3

    :try_start_183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write response to session socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1a1
    .catchall {:try_start_183 .. :try_end_1a1} :catchall_1a1

    :catchall_1a1
    move-exception v0

    :goto_1a2
    :try_start_1a2
    invoke-static/range {v27 .. v27}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1a5
    .catchall {:try_start_1a2 .. :try_end_1a5} :catchall_1b9

    :try_start_1a5
    invoke-virtual/range {p0 .. p0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1ac
    .catch Landroid/system/ErrnoException; {:try_start_1a5 .. :try_end_1ac} :catch_1af
    .catchall {:try_start_1a5 .. :try_end_1ac} :catchall_1b9

    nop

    nop

    :try_start_1ae
    throw v0

    :catch_1af
    move-exception v0

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    :try_end_1b8
    .catchall {:try_start_1ae .. :try_end_1b8} :catchall_1b9

    goto :goto_16d

    :catchall_1b9
    move-exception v0

    goto :goto_1c4

    :catchall_1bb
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    :goto_1c4
    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V

    throw v0

    :cond_1c8
    move/from16 v28, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    :try_start_1d0
    const-string v3, "Truncated command received."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v27 .. v27}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_1db} :catch_1e5

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v27

    move/from16 v3, v28

    goto/16 :goto_23

    :catch_1e5
    move-exception v0

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v27

    goto :goto_208

    :catch_1ed
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    goto :goto_208

    :catch_1f7
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    goto :goto_208

    :catch_1ff
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v4

    goto :goto_208

    :catch_205
    move-exception v0

    move/from16 v28, v3

    :goto_208
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V

    move/from16 v3, v28

    goto/16 :goto_23
.end method

.method private static validateUsapCommand(Lcom/android/internal/os/ZygoteArguments;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    if-nez v0, :cond_ab

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    if-nez v0, :cond_a3

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackage:Ljava/lang/String;

    if-nez v0, :cond_93

    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-nez v0, :cond_8b

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mApiBlacklistExemptions:[Ljava/lang/String;

    if-nez v0, :cond_7b

    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_73

    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    if-ne v0, v1, :cond_6b

    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v0, :cond_63

    iget-wide v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_38

    iget-wide v0, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_38

    return-void

    :cond_38
    new-instance v0, Lcom/android/internal/os/ZygoteSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client may not specify capabilities: permitted=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effective=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --invoke-with"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --hidden-api-statslog-sampling-rate="

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --hidden-api-log-sampling-rate="

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --set-api-blacklist-exemptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --start-child-zygote"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --preload-app"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --preload-package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --preload-default"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --get-pid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ab
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --query-abi-list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
