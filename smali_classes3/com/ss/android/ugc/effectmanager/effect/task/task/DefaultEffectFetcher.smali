.class public Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher;
.super Ljava/lang/Object;
.source "DefaultEffectFetcher.java"

# interfaces
.implements Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcher;


# instance fields
.field private mNetworker:Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher;->mNetworker:Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher;)Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher;->mNetworker:Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;

    return-object p0
.end method


# virtual methods
.method public fetchEffect(Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;)Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;",
            ")",
            "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask<",
            "Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher$1;-><init>(Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher;Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;)V

    return-object v0
.end method
