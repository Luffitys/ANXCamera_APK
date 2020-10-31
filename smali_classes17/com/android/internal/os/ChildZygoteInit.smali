.class public Lcom/android/internal/os/ChildZygoteInit;
.super Ljava/lang/Object;
.source "ChildZygoteInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChildZygoteInit"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseAbiListFromArgs([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    const-string v3, "--abi-list="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method static parseIntFromArg([Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/4 v0, -0x1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_3a

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :try_start_19
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_1d} :catch_1f

    move v0, v5

    goto :goto_37

    :catch_1f
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid int argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3a
    return v0
.end method

.method static parseSocketNameFromArgs([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    const-string v3, "--zygote-socket="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method static runZygoteServer(Lcom/android/internal/os/ZygoteServer;[Ljava/lang/String;)V
    .registers 13

    invoke-static {p1}, Lcom/android/internal/os/ChildZygoteInit;->parseSocketNameFromArgs([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_93

    invoke-static {p1}, Lcom/android/internal/os/ChildZygoteInit;->parseAbiListFromArgs([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8b

    :try_start_c
    sget v2, Landroid/system/OsConstants;->PR_SET_NO_NEW_PRIVS:I

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v2 .. v10}, Landroid/system/Os;->prctl(IJJJJ)I
    :try_end_19
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_19} :catch_82

    nop

    const-string v2, "--uid-range-start="

    invoke-static {p1, v2}, Lcom/android/internal/os/ChildZygoteInit;->parseIntFromArg([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "--uid-range-end="

    invoke-static {p1, v3}, Lcom/android/internal/os/ChildZygoteInit;->parseIntFromArg([Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7a

    if-eq v3, v4, :cond_7a

    if-gt v2, v3, :cond_72

    const v4, 0x15f90

    if-lt v2, v4, :cond_6a

    invoke-static {v2, v3}, Lcom/android/internal/os/Zygote;->nativeInstallSeccompUidGidFilter(II)V

    :try_start_35
    invoke-virtual {p0, v0}, Lcom/android/internal/os/ZygoteServer;->registerServerSocketAtAbstractName(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ABSTRACT/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v4
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_50} :catch_5c
    .catchall {:try_start_35 .. :try_end_50} :catchall_5a

    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    nop

    if-eqz v4, :cond_59

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_59
    return-void

    :catchall_5a
    move-exception v4

    goto :goto_66

    :catch_5c
    move-exception v4

    :try_start_5d
    const-string v5, "ChildZygoteInit"

    const-string v6, "Fatal exception:"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v4
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_5a

    :goto_66
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    throw v4

    :cond_6a
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Passed in UID range does not map to isolated processes."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_72
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Passed in UID range is invalid, min > max."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7a
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Couldn\'t parse UID range start/end"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_82
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to set PR_SET_NO_NEW_PRIVS"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_8b
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "No abiList specified"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_93
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "No socketName specified"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
