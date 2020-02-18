.class public Lcom/android/camera/aftersales/strategies/SimpleTrimStrategy;
.super Ljava/lang/Object;
.source "SimpleTrimStrategy.java"

# interfaces
.implements Lcom/android/camera/aftersales/interfaces/ITrimStrategy;


# static fields
.field public static final DEBUG:Z = false

.field public static final LINE_SIZE:I = 0x24

.field public static final MAX_ALLOW_LINES:I = 0x1c71c

.field public static final MAX_SIZE:I = 0x400000


# instance fields
.field private mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/aftersales/strategies/SimpleTrimStrategy;->mFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doTrim()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object p0, p0, Lcom/android/camera/aftersales/strategies/SimpleTrimStrategy;->mFilePath:Ljava/lang/String;

    const-string v2, "rw"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const v4, 0x97b4

    if-ge v0, v4, :cond_1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_2
    const/4 v6, -0x1

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v7

    if-eq v6, v7, :cond_2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v0, p0, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v6, v7

    add-long/2addr v4, v6

    add-long/2addr v2, v6

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->close(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_7

    :catch_2
    move-exception p0

    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception p0

    :goto_4
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->close(Ljava/io/Closeable;)V

    :goto_6
    return-void

    :goto_7
    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->close(Ljava/io/Closeable;)V

    throw p0
.end method

.method public exceedLimit()Z
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/camera/aftersales/strategies/SimpleTrimStrategy;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x400000

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
