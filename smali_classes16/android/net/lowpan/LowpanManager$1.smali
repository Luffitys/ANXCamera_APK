.class Landroid/net/lowpan/LowpanManager$1;
.super Ljava/lang/Object;
.source "LowpanManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanManager;->getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/lowpan/LowpanManager;

.field final synthetic val$ifaceName:Ljava/lang/String;

.field final synthetic val$ifaceService:Landroid/net/lowpan/ILowpanInterface;


# direct methods
.method constructor <init>(Landroid/net/lowpan/LowpanManager;Ljava/lang/String;Landroid/net/lowpan/ILowpanInterface;)V
    .registers 4

    iput-object p1, p0, Landroid/net/lowpan/LowpanManager$1;->this$0:Landroid/net/lowpan/LowpanManager;

    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$1;->val$ifaceName:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/lowpan/LowpanManager$1;->val$ifaceService:Landroid/net/lowpan/ILowpanInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$1;->this$0:Landroid/net/lowpan/LowpanManager;

    # getter for: Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;
    invoke-static {v0}, Landroid/net/lowpan/LowpanManager;->access$000(Landroid/net/lowpan/LowpanManager;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$1;->this$0:Landroid/net/lowpan/LowpanManager;

    # getter for: Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;
    invoke-static {v1}, Landroid/net/lowpan/LowpanManager;->access$000(Landroid/net/lowpan/LowpanManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/net/lowpan/LowpanManager$1;->val$ifaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/lowpan/LowpanInterface;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/net/lowpan/LowpanInterface;->getService()Landroid/net/lowpan/ILowpanInterface;

    move-result-object v2

    iget-object v3, p0, Landroid/net/lowpan/LowpanManager$1;->val$ifaceService:Landroid/net/lowpan/ILowpanInterface;

    if-ne v2, v3, :cond_2a

    iget-object v2, p0, Landroid/net/lowpan/LowpanManager$1;->this$0:Landroid/net/lowpan/LowpanManager;

    # getter for: Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;
    invoke-static {v2}, Landroid/net/lowpan/LowpanManager;->access$000(Landroid/net/lowpan/LowpanManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Landroid/net/lowpan/LowpanManager$1;->val$ifaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2c

    throw v1
.end method
