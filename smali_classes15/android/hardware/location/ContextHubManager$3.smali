.class Landroid/hardware/location/ContextHubManager$3;
.super Landroid/hardware/location/IContextHubClientCallback$Stub;
.source "ContextHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/location/ContextHubManager;->createClientCallback(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/IContextHubClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/ContextHubManager;

.field final synthetic val$callback:Landroid/hardware/location/ContextHubClientCallback;

.field final synthetic val$client:Landroid/hardware/location/ContextHubClient;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/hardware/location/ContextHubManager;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;)V
    .registers 5

    iput-object p1, p0, Landroid/hardware/location/ContextHubManager$3;->this$0:Landroid/hardware/location/ContextHubManager;

    iput-object p2, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iput-object p4, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubClientCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onHubReset$1(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/location/ContextHubClientCallback;->onHubReset(Landroid/hardware/location/ContextHubClient;)V

    return-void
.end method

.method static synthetic lambda$onMessageFromNanoApp$0(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/hardware/location/ContextHubClientCallback;->onMessageFromNanoApp(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V

    return-void
.end method

.method static synthetic lambda$onNanoAppAborted$2(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;JI)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/location/ContextHubClientCallback;->onNanoAppAborted(Landroid/hardware/location/ContextHubClient;JI)V

    return-void
.end method

.method static synthetic lambda$onNanoAppDisabled$6(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubClientCallback;->onNanoAppDisabled(Landroid/hardware/location/ContextHubClient;J)V

    return-void
.end method

.method static synthetic lambda$onNanoAppEnabled$5(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubClientCallback;->onNanoAppEnabled(Landroid/hardware/location/ContextHubClient;J)V

    return-void
.end method

.method static synthetic lambda$onNanoAppLoaded$3(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubClientCallback;->onNanoAppLoaded(Landroid/hardware/location/ContextHubClient;J)V

    return-void
.end method

.method static synthetic lambda$onNanoAppUnloaded$4(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubClientCallback;->onNanoAppUnloaded(Landroid/hardware/location/ContextHubClient;J)V

    return-void
.end method


# virtual methods
.method public onHubReset()V
    .registers 5

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$kLhhBRChCeue1LKohd5lK_lfKTU;

    invoke-direct {v3, v1, v2}, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$kLhhBRChCeue1LKohd5lK_lfKTU;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$U9x_HK_GdADIEQ3mS5mDWMNWMu8;

    invoke-direct {v3, v1, v2, p1}, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$U9x_HK_GdADIEQ3mS5mDWMNWMu8;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNanoAppAborted(JI)V
    .registers 12

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v3, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v7, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$hASoxw9hzmd9l2NpC91O5tXLzxU;

    move-object v1, v7

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$hASoxw9hzmd9l2NpC91O5tXLzxU;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;JI)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNanoAppDisabled(J)V
    .registers 7

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$On2Q5Obzm4-zLY0UP3Xs4E3P-V0;

    invoke-direct {v3, v1, v2, p1, p2}, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$On2Q5Obzm4-zLY0UP3Xs4E3P-V0;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNanoAppEnabled(J)V
    .registers 7

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$8oeFzBAC_VuH1d32Kod8BVn0Os8;

    invoke-direct {v3, v1, v2, p1, p2}, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$8oeFzBAC_VuH1d32Kod8BVn0Os8;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNanoAppLoaded(J)V
    .registers 7

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$5yx25kUuvL9qy3uBcIzI3sQQoL8;

    invoke-direct {v3, v1, v2, p1, p2}, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$5yx25kUuvL9qy3uBcIzI3sQQoL8;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNanoAppUnloaded(J)V
    .registers 7

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$KgVQePwT_QpjU9EQTp2L3LsHE5Y;

    invoke-direct {v3, v1, v2, p1, p2}, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$KgVQePwT_QpjU9EQTp2L3LsHE5Y;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
