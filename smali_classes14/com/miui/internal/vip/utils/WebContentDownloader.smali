.class public Lcom/miui/internal/vip/utils/WebContentDownloader;
.super Ljava/io/InputStream;
.source "WebContentDownloader.java"


# static fields
.field static final EXT_IMAGES:[Ljava/lang/String;

.field static final INTERVAL:J

.field static final MAX_RETRY_TIMES:I = 0x3

.field static final QUESTION_MARK:Ljava/lang/String; = "?"

.field static final TAG:Ljava/lang/String; = "WebContentDownloader"

.field public static final TIMEOUT_CONNECTION:I

.field public static final TIMEOUT_SOCKET:I

.field static final WAIT_TIME:J


# instance fields
.field mConn:Ljava/net/HttpURLConnection;

.field mFailed:Z

.field mIs:Ljava/io/InputStream;

.field mReadBytes:J

.field mRetryTimes:I

.field mUrl:Ljava/lang/String;

.field mWriter:Lcom/miui/internal/vip/utils/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-string v0, ".jpg"

    const-string v1, ".jpeg"

    const-string v2, ".png"

    const-string v3, ".webp"

    const-string v4, ".bmp"

    const-string v5, ".mng"

    const-string v6, ".gif"

    const-string v7, ".apng"

    const-string v8, ".ico"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/vip/utils/WebContentDownloader;->EXT_IMAGES:[Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miui/internal/vip/utils/WebContentDownloader;->INTERVAL:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miui/internal/vip/utils/WebContentDownloader;->WAIT_TIME:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/miui/internal/vip/utils/WebContentDownloader;->TIMEOUT_CONNECTION:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/miui/internal/vip/utils/WebContentDownloader;->TIMEOUT_SOCKET:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mFailed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mReadBytes:J

    iput-object p1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Lcom/miui/internal/vip/utils/FileWriter;

    invoke-direct {v0, p2}, Lcom/miui/internal/vip/utils/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    :cond_19
    return-void
.end method

.method private disconnect()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    :cond_a
    return-void
.end method

.method static getExtName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_28

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_27

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_27
    return-object v1

    :cond_28
    const-string v0, ""

    return-object v0
.end method

.method static isImageFile(Ljava/lang/String;)Z
    .registers 9

    invoke-static {p0}, Lcom/miui/internal/vip/utils/FileServerUtil;->isFileOnMarketServer(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {p0}, Lcom/miui/internal/vip/utils/WebContentDownloader;->getExtName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_25

    sget-object v2, Lcom/miui/internal/vip/utils/WebContentDownloader;->EXT_IMAGES:[Ljava/lang/String;

    array-length v4, v2

    move v5, v3

    :goto_17
    if-ge v5, v4, :cond_25

    aget-object v6, v2, v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    return v1

    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_25
    return v3
.end method

.method private openConnection()V
    .registers 8

    const-string v0, "gzip"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x3

    if-ge v1, v3, :cond_77

    const/4 v3, 0x0

    :try_start_8
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    iput-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    const-string v6, "Accept-Encoding"

    invoke-virtual {v5, v6, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    sget v6, Lcom/miui/internal/vip/utils/WebContentDownloader;->TIMEOUT_CONNECTION:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    sget v6, Lcom/miui/internal/vip/utils/WebContentDownloader;->TIMEOUT_SOCKET:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    iget-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    const-string v6, "Content-Encoding"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4c

    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    goto :goto_53

    :cond_4c
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_53} :catch_54

    :goto_53
    return-void

    :catch_54
    move-exception v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mUrl:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v3, "WebContentDownloaderopenConnection failed, %s, %s"

    invoke-static {v3, v5}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iget-object v3, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/miui/internal/vip/utils/WebContentDownloader;->disconnect()V

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_77
    return-void
.end method

.method private openIfNeed()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/miui/internal/vip/utils/WebContentDownloader;->openConnection()V

    iget-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mFailed:Z

    :cond_10
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0}, Lcom/miui/internal/vip/utils/WebContentDownloader;->disconnect()V

    iget-object v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v1, v1, Lcom/miui/internal/vip/utils/FileWriter;->mFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mFailed:Z

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    invoke-virtual {v1}, Lcom/miui/internal/vip/utils/FileWriter;->close()V

    :cond_19
    iput-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    iget-boolean v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mFailed:Z

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/internal/vip/utils/WebContentDownloader;->isImageFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "WebContentDownloaderInputStreamProxy.close, failed, image, mRetryTiems = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mRetryTimes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_41

    :cond_38
    iget-object v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    nop

    return-void

    :catchall_41
    move-exception v1

    iget-object v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    throw v1
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/internal/vip/utils/WebContentDownloader;->openIfNeed()V

    iget-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    goto :goto_29

    :cond_9
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_18

    iget-object v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    invoke-virtual {v2, v0}, Lcom/miui/internal/vip/utils/FileWriter;->writeToFile(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_19

    :cond_18
    return v0

    :catch_19
    move-exception v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v0, v2, v1

    const-string v3, "WebContentDownloader, InputStreamProxy.read failed, url = %s, %s"

    invoke-static {v3, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_29
    iput-boolean v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mFailed:Z

    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/internal/vip/utils/WebContentDownloader;->openIfNeed()V

    iget-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    goto :goto_34

    :cond_9
    :try_start_9
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_18

    iget-object v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    invoke-virtual {v2, p1, p2, v0}, Lcom/miui/internal/vip/utils/FileWriter;->writeToFile([BII)V

    :cond_18
    if-ltz v0, :cond_1f

    iget-wide v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mReadBytes:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    goto :goto_21

    :cond_1f
    iget-wide v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mReadBytes:J

    :goto_21
    iput-wide v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mReadBytes:J
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_24

    return v0

    :catch_24
    move-exception v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v0, v2, v1

    const-string v3, "WebContentDownloader, InputStreamProxy.read buffer failed, url = %s, %s"

    invoke-static {v3, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_34
    iput-boolean v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mFailed:Z

    const/4 v0, -0x1

    return v0
.end method
