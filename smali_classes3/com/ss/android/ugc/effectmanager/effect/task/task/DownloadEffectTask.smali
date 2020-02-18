.class public Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;
.super Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;
.source "DownloadEffectTask.java"


# instance fields
.field private mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

.field private mCurCnt:I

.field private mDownLoadUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

.field private mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "NETWORK"

    invoke-direct {p0, p4, p3, v0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    invoke-virtual {p2}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p2}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getRetryCount()I

    move-result p1

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->mCurCnt:I

    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->getFileUrl()Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/common/utils/EffectUtils;->getUrl(Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->mDownLoadUrl:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;)Lcom/ss/android/ugc/effectmanager/effect/model/Effect;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->mDownLoadUrl:Ljava/util/List;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v3}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getEffectDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getEffectFetcher()Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcher;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcher;->fetchEffect(Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;)Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;

    move-result-object v0

    new-instance v1, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask$1;

    invoke-direct {v1, p0}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask$1;-><init>(Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->setListener(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener;)V

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->execute()V

    return-void
.end method
