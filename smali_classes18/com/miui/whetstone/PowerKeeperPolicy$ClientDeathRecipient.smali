.class Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

.field final mUid:I

.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/bluetooth/BleScanWrapper;I)V
    .registers 4

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    iput p3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mUid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binder is dead - unregistering client ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")! uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->logdWithLocal(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1300(Lcom/miui/whetstone/PowerKeeperPolicy;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$400(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_2a
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1500(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->stopLeScan()V

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->unlinkToDeath()V

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->clearResource()V

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1500(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_2a .. :try_end_52} :catchall_50

    throw v1
.end method
