.class final Landroid/net/NetworkRecommendationProvider$ServiceWrapper;
.super Landroid/net/INetworkRecommendationProvider$Stub;
.source "NetworkRecommendationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkRecommendationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceWrapper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/NetworkRecommendationProvider;


# direct methods
.method constructor <init>(Landroid/net/NetworkRecommendationProvider;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 4

    iput-object p1, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->this$0:Landroid/net/NetworkRecommendationProvider;

    invoke-direct {p0}, Landroid/net/INetworkRecommendationProvider$Stub;-><init>()V

    iput-object p2, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private enforceCallingPermission()V
    .registers 4

    iget-object v0, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    const-string v2, "Permission denied."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_d

    :cond_8
    iget-object v0, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_d
    return-void
.end method


# virtual methods
.method public requestScores([Landroid/net/NetworkKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->enforceCallingPermission()V

    if-eqz p1, :cond_10

    array-length v0, p1

    if-lez v0, :cond_10

    new-instance v0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;

    invoke-direct {v0, p0, p1}, Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;-><init>(Landroid/net/NetworkRecommendationProvider$ServiceWrapper;[Landroid/net/NetworkKey;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method
