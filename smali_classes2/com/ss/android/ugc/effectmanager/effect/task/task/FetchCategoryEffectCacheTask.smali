.class public Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;
.super Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;
.source "FetchCategoryEffectCacheTask.java"


# instance fields
.field private category:Ljava/lang/String;

.field private count:I

.field private cursor:I

.field private mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

.field private mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

.field private mFileCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

.field private mJsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

.field private panel:Ljava/lang/String;

.field private sortingPosition:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "NETWORK"

    invoke-direct {p0, p9, p3, v0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->panel:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->category:Ljava/lang/String;

    iput p5, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->count:I

    iput p6, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->cursor:I

    iput p7, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->sortingPosition:I

    iput-object p8, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->version:Ljava/lang/String;

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getCache()Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->mFileCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getJsonConverter()Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->mJsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->mFileCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->panel:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->category:Ljava/lang/String;

    iget v3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->count:I

    iget v4, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->cursor:I

    iget v5, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->sortingPosition:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/ss/android/ugc/effectmanager/common/utils/EffectCacheKeyGenerator;->generateCategoryEffectKey(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/ugc/effectmanager/common/listener/ICache;->queryToStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x2714

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;

    new-instance v4, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    invoke-direct {v4, v1}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;-><init>(I)V

    invoke-direct {v0, v2, v4}, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, v3, v0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;->mJsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

    const-class v5, Lcom/ss/android/ugc/effectmanager/effect/model/net/CategoryEffectListResponse;

    invoke-interface {v4, v0, v5}, Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;->convertJsonToObj(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/effectmanager/effect/model/net/CategoryEffectListResponse;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/net/CategoryEffectListResponse;->checkValue()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/net/CategoryEffectListResponse;->getData()Lcom/ss/android/ugc/effectmanager/effect/model/CategoryPageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryPageModel;->getCategoryEffects()Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;

    move-result-object v0

    new-instance v1, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;

    invoke-direct {v1, v0, v2}, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, v3, v1}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;

    new-instance v4, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    invoke-direct {v4, v1}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;-><init>(I)V

    invoke-direct {v0, v2, v4}, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, v3, v0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    :goto_1
    return-void
.end method
