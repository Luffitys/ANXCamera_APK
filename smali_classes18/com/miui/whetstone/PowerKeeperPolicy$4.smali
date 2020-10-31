.class Lcom/miui/whetstone/PowerKeeperPolicy$4;
.super Landroid/location/ILocationPolicyListener$Stub;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$4;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Landroid/location/ILocationPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestrictBackgroundChanged(Z)V
    .registers 2

    return-void
.end method

.method public onUidRulesChanged(II)V
    .registers 9

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$4;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$400(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p2, :cond_f

    if-ne p2, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v2, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v2, 0x1

    :goto_10
    :try_start_10
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$4;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$900(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-ne v3, v2, :cond_1e

    monitor-exit v0

    return-void

    :cond_1e
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$4;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;
    invoke-static {v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$900(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$4;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z
    invoke-static {v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1000(Lcom/miui/whetstone/PowerKeeperPolicy;)Z

    move-result v4

    if-nez v4, :cond_31

    monitor-exit v0

    return-void

    :cond_31
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$4;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1100(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x3e8

    if-eqz v2, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    invoke-virtual {v4, v5, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_10 .. :try_end_48} :catchall_46

    throw v1
.end method
