.class public Lcom/android/internal/os/WrapperInit;
.super Ljava/lang/Object;
.source "WrapperInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidRuntime"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "/system/bin/app_process64"

    goto :goto_10

    :cond_e
    const-string v1, "/system/bin/app_process32"

    :goto_10
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -Xcompiler-option --generate-mini-debug-info"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " /system/bin --application"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_31

    const-string v3, " \'--nice-name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    const-string v3, " com.android.internal.os.WrapperInit "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_3d

    invoke-virtual {p4}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0, p5}, Lcom/android/internal/os/Zygote;->appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/WrapperInit;->preserveCapabilities()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/Zygote;->execShell(Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_3a

    :try_start_12
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v3, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_31} :catch_32

    goto :goto_3a

    :catch_32
    move-exception v3

    const-string v4, "AndroidRuntime"

    const-string v5, "Could not write pid of wrapped process to Zygote pipe."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    :goto_3a
    new-instance v3, Landroid/util/TimingsTraceLog;

    const-wide/16 v4, 0x4000

    const-string v6, "WrapperInitTiming"

    invoke-direct {v3, v6, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    array-length v3, p0

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    array-length v5, v3

    invoke-static {p0, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v3}, Lcom/android/internal/os/WrapperInit;->wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static preserveCapabilities()V
    .registers 16

    const-string v0, "AndroidRuntime"

    new-instance v1, Landroid/system/StructCapUserHeader;

    sget v2, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/system/StructCapUserHeader;-><init>(II)V

    :try_start_a
    invoke-static {v1}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object v2
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_e} :catch_90

    nop

    aget-object v4, v2, v3

    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    aget-object v5, v2, v3

    iget v5, v5, Landroid/system/StructCapUserData;->inheritable:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_24

    aget-object v4, v2, v6

    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    aget-object v5, v2, v6

    iget v5, v5, Landroid/system/StructCapUserData;->inheritable:I

    if-eq v4, v5, :cond_4e

    :cond_24
    new-instance v4, Landroid/system/StructCapUserData;

    aget-object v5, v2, v3

    iget v5, v5, Landroid/system/StructCapUserData;->effective:I

    aget-object v7, v2, v3

    iget v7, v7, Landroid/system/StructCapUserData;->permitted:I

    aget-object v8, v2, v3

    iget v8, v8, Landroid/system/StructCapUserData;->permitted:I

    invoke-direct {v4, v5, v7, v8}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v4, v2, v3

    new-instance v3, Landroid/system/StructCapUserData;

    aget-object v4, v2, v6

    iget v4, v4, Landroid/system/StructCapUserData;->effective:I

    aget-object v5, v2, v6

    iget v5, v5, Landroid/system/StructCapUserData;->permitted:I

    aget-object v7, v2, v6

    iget v7, v7, Landroid/system/StructCapUserData;->permitted:I

    invoke-direct {v3, v4, v5, v7}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v3, v2, v6

    :try_start_4a
    invoke-static {v1, v2}, Landroid/system/Os;->capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V
    :try_end_4d
    .catch Landroid/system/ErrnoException; {:try_start_4a .. :try_end_4d} :catch_89

    nop

    :cond_4e
    const/4 v3, 0x0

    :goto_4f
    const/16 v4, 0x40

    if-ge v3, v4, :cond_88

    invoke-static {v3}, Landroid/system/OsConstants;->CAP_TO_INDEX(I)I

    move-result v4

    invoke-static {v3}, Landroid/system/OsConstants;->CAP_TO_MASK(I)I

    move-result v5

    aget-object v6, v2, v4

    iget v6, v6, Landroid/system/StructCapUserData;->inheritable:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_85

    :try_start_62
    sget v7, Landroid/system/OsConstants;->PR_CAP_AMBIENT:I

    sget v6, Landroid/system/OsConstants;->PR_CAP_AMBIENT_RAISE:I

    int-to-long v8, v6

    int-to-long v10, v3

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-static/range {v7 .. v15}, Landroid/system/Os;->prctl(IJJJJ)I
    :try_end_6f
    .catch Landroid/system/ErrnoException; {:try_start_62 .. :try_end_6f} :catch_70

    goto :goto_85

    :catch_70
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RuntimeInit: Failed to raise ambient capability "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_85
    :goto_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_88
    return-void

    :catch_89
    move-exception v3

    const-string v4, "RuntimeInit: Failed capset"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_90
    move-exception v2

    const-string v3, "RuntimeInit: Failed capget"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    array-length v1, p1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2a

    const/4 v1, 0x0

    aget-object v3, p1, v1

    const-string v4, "-cp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v3, p0}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    array-length v3, p1

    sub-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    array-length v4, p1

    sub-int/2addr v4, v2

    invoke-static {p1, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v3

    :cond_2a
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativePreApplicationInit()V

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method
