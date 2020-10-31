.class Landroid/app/usage/NetworkStatsManager$CallbackHandler;
.super Landroid/os/Handler;
.source "NetworkStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/NetworkStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackHandler"
.end annotation


# instance fields
.field private mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

.field private final mNetworkType:I

.field private final mSubscriberId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Looper;ILjava/lang/String;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput p2, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mNetworkType:I

    iput-object p3, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mSubscriberId:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    return-void
.end method

.method private static getObject(Landroid/os/Message;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    nop

    const-string v0, "DataUsageRequest"

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DataUsageRequest;

    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_15

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    goto :goto_38

    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    goto :goto_38

    :cond_15
    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    if-eqz v1, :cond_21

    iget v2, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mNetworkType:I

    iget-object v3, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->onThresholdReached(ILjava/lang/String;)V

    goto :goto_38

    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit reached with released callback for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkStatsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_38
    return-void
.end method
