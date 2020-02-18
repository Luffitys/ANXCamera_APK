.class public Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;
.super Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;
.source "DownloadProviderEffectTask.java"


# instance fields
.field private mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

.field private mDownLoadUrl:Ljava/lang/String;

.field private mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

.field private mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

.field private mRemoteIp:Ljava/lang/String;

.field private mRequestedUrl:Ljava/lang/String;

.field private mRetryCount:I


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;Landroid/os/Handler;)V
    .locals 1
    .param p3    # Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NETWORK"

    invoke-direct {p0, p4, p2, v0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getRetryCount()I

    move-result p1

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mRetryCount:I

    invoke-static {p3}, Lcom/ss/android/ugc/effectmanager/common/utils/EffectUtils;->getUrl(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mDownLoadUrl:Ljava/lang/String;

    return-void
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/ss/android/ugc/effectmanager/common/EffectRequest;

    const-string v1, "GET"

    invoke-direct {v0, v1, p1}, Lcom/ss/android/ugc/effectmanager/common/EffectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getEffectNetWorker()Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;->execute(Lcom/ss/android/ugc/effectmanager/common/EffectRequest;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lcom/ss/android/ugc/effectmanager/common/utils/EffectUtils;->convertStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

    return-object p0

    :cond_0
    new-instance p0, Landroid/accounts/NetworkErrorException;

    const-string p1, "Download error"

    invoke-direct {p0, p1}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public execute()V
    .locals 6

    iget v0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mRetryCount:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->isCanceled()Z

    move-result v2

    const/16 v3, 0x13

    if-eqz v2, :cond_0

    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

    new-instance v2, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    const/16 v4, 0x2711

    invoke-direct {v2, v4}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, v3, v0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    goto/16 :goto_2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v5}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getEffectDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

    invoke-virtual {v5}, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".gif"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->setPath(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mDownLoadUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mRequestedUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mRequestedUrl:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mRemoteIp:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_1
    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mDownLoadUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

    invoke-virtual {v4}, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->download(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v4, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, v3, v4}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    invoke-direct {v0, v2}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;-><init>(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mRequestedUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mRemoteIp:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v1, v4, v2}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->setTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;->mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

    invoke-direct {v1, v2, v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, v3, v1}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    return-void
.end method
