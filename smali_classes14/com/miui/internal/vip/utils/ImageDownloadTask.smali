.class public Lcom/miui/internal/vip/utils/ImageDownloadTask;
.super Lmiui/util/async/tasks/HttpTask;
.source "ImageDownloadTask.java"

# interfaces
.implements Lmiui/util/async/Cacheable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/async/tasks/HttpTask<",
        "Ljava/io/File;",
        ">;",
        "Lmiui/util/async/Cacheable;"
    }
.end annotation


# static fields
.field static final CONTENT_LENGTH:Ljava/lang/String; = "content-length"

.field static final DELAY:J

.field static final RETRY_TIMES:I = 0x3


# instance fields
.field final mSavePath:Ljava/lang/String;

.field final mUrl:Ljava/lang/String;

.field mWaitNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->DELAY:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lmiui/util/async/tasks/HttpTask;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mWaitNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mSavePath:Ljava/lang/String;

    return-void
.end method

.method private static checkIfDownloadSuccess(Ljava/io/File;J)Z
    .registers 10

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1c

    cmp-long v1, p1, v3

    if-lez v1, :cond_3b

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-eqz v1, :cond_3b

    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "ImageDownloadTask, file is corrupted, file.length = %d, deleted = %s"

    invoke-static {v5, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_3b
    return v0
.end method


# virtual methods
.method public doLoad()Ljava/io/File;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_90

    const/4 v2, 0x3

    if-ge v0, v2, :cond_90

    if-lez v0, :cond_10

    sget-wide v3, Lcom/miui/internal/vip/utils/ImageDownloadTask;->DELAY:J

    int-to-long v5, v0

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    :cond_10
    iget-object v3, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mWaitNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/net/ConnectivityHelper;->isNetworkConnected()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mWaitNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_90

    :cond_28
    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/ImageDownloadTask;->request()Lmiui/net/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lmiui/net/http/HttpResponse;->getContentLength()J

    move-result-wide v6

    invoke-interface {v3}, Lmiui/net/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v8, "content-length"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mSavePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v9

    invoke-interface {v3}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9, v1}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v9

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mUrl:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v10, v2

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v10, v2

    const/4 v2, 0x5

    aput-object v8, v10, v2

    const-string v2, "ImageDownloadTask, %s, isCopySuccess = %s, file.exists = %s, length = %d, file.length = %d, content-length: %s"

    invoke-static {v2, v10}, Lcom/miui/internal/vip/utils/Utils;->logI(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1, v6, v7}, Lcom/miui/internal/vip/utils/ImageDownloadTask;->checkIfDownloadSuccess(Ljava/io/File;J)Z

    move-result v2

    if-eqz v2, :cond_86

    move-object v2, v1

    goto :goto_87

    :cond_86
    const/4 v2, 0x0

    :goto_87
    move-object v1, v2

    invoke-interface {v3}, Lmiui/net/http/HttpResponse;->release()V

    nop

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_90
    :goto_90
    return-object v1
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/ImageDownloadTask;->doLoad()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method public isWaitNetwork()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mWaitNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public sizeOf(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mSavePath:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
