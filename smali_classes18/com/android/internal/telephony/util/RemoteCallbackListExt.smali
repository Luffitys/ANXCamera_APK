.class public Lcom/android/internal/telephony/util/RemoteCallbackListExt;
.super Landroid/os/RemoteCallbackList;
.source "RemoteCallbackListExt.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Landroid/os/RemoteCallbackList<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcastAction(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_16

    :try_start_7
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_11

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catchall_11
    move-exception v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->finishBroadcast()V

    throw v1

    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->finishBroadcast()V

    nop

    return-void
.end method
