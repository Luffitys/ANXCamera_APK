.class public final Lcom/android/internal/os/ProcStatsUtil;
.super Ljava/lang/Object;
.source "ProcStatsUtil.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final READ_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ProcStatsUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readNullSeparatedFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/android/internal/os/ProcStatsUtil;->readSingleLineProcFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    const-string v1, "\u0000\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_16
    const-string v2, "\u0000"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static readSingleLineProcFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;
    .registers 12

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_72
    .catchall {:try_start_4 .. :try_end_9} :catchall_6d

    const/4 v2, 0x0

    const/16 v3, 0x400

    :try_start_c
    new-array v4, v3, [B

    :goto_e
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_15

    goto :goto_4c

    :cond_15
    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_17
    if-ge v7, v5, :cond_22

    aget-byte v8, v4, v7

    if-ne v8, p1, :cond_1f

    move v6, v7

    goto :goto_22

    :cond_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_22
    :goto_22
    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v6, v7, :cond_28

    const/4 v7, 0x1

    goto :goto_29

    :cond_28
    move v7, v8

    :goto_29
    if-eqz v7, :cond_39

    if-nez v2, :cond_39

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4, v8, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_63

    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_72
    .catchall {:try_start_32 .. :try_end_35} :catchall_6d

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v3

    :cond_39
    if-nez v2, :cond_41

    :try_start_3b
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v2, v9

    :cond_41
    if-eqz v7, :cond_45

    move v9, v6

    goto :goto_46

    :cond_45
    move v9, v5

    :goto_46
    invoke-virtual {v2, v4, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz v7, :cond_62

    nop

    :goto_4c
    if-nez v2, :cond_57

    const-string v3, ""
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_63

    :try_start_50
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_72
    .catchall {:try_start_50 .. :try_end_53} :catchall_6d

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v3

    :cond_57
    :try_start_57
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_63

    :try_start_5b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_72
    .catchall {:try_start_5b .. :try_end_5e} :catchall_6d

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v3

    :cond_62
    goto :goto_e

    :catchall_63
    move-exception v2

    :try_start_64
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_6c

    :catchall_68
    move-exception v3

    :try_start_69
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6c
    throw v2
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6d} :catch_72
    .catchall {:try_start_69 .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    :catch_72
    move-exception v1

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v2
.end method
