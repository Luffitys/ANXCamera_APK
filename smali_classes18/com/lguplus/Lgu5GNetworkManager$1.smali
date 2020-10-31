.class Lcom/lguplus/Lgu5GNetworkManager$1;
.super Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub;
.source "Lgu5GNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lguplus/Lgu5GNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lguplus/Lgu5GNetworkManager;


# direct methods
.method constructor <init>(Lcom/lguplus/Lgu5GNetworkManager;)V
    .registers 2

    iput-object p1, p0, Lcom/lguplus/Lgu5GNetworkManager$1;->this$0:Lcom/lguplus/Lgu5GNetworkManager;

    invoke-direct {p0}, Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public on5GAvailable(I)V
    .registers 4

    iget-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager$1;->this$0:Lcom/lguplus/Lgu5GNetworkManager;

    iget-object v0, v0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lguplus/Lgu5GNetworkManager$Callback;

    invoke-virtual {v1}, Lcom/lguplus/Lgu5GNetworkManager$Callback;->on5GAvailable()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public on5GBearerAdded(I)V
    .registers 4

    iget-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager$1;->this$0:Lcom/lguplus/Lgu5GNetworkManager;

    iget-object v0, v0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lguplus/Lgu5GNetworkManager$Callback;

    invoke-virtual {v1}, Lcom/lguplus/Lgu5GNetworkManager$Callback;->on5GBearerAdded()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public on5GBearerDeleted(I)V
    .registers 4

    iget-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager$1;->this$0:Lcom/lguplus/Lgu5GNetworkManager;

    iget-object v0, v0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lguplus/Lgu5GNetworkManager$Callback;

    invoke-virtual {v1}, Lcom/lguplus/Lgu5GNetworkManager$Callback;->on5GBearerDeleted()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public on5GUnavailable(I)V
    .registers 4

    iget-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager$1;->this$0:Lcom/lguplus/Lgu5GNetworkManager;

    iget-object v0, v0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lguplus/Lgu5GNetworkManager$Callback;

    invoke-virtual {v1}, Lcom/lguplus/Lgu5GNetworkManager$Callback;->on5GUnavailable()V

    goto :goto_8

    :cond_18
    return-void
.end method
