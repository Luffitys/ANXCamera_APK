.class public final synthetic Landroid/hardware/location/-$$Lambda$ContextHubManager$3$KgVQePwT_QpjU9EQTp2L3LsHE5Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/location/ContextHubClientCallback;

.field public final synthetic f$1:Landroid/hardware/location/ContextHubClient;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$KgVQePwT_QpjU9EQTp2L3LsHE5Y;->f$0:Landroid/hardware/location/ContextHubClientCallback;

    iput-object p2, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$KgVQePwT_QpjU9EQTp2L3LsHE5Y;->f$1:Landroid/hardware/location/ContextHubClient;

    iput-wide p3, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$KgVQePwT_QpjU9EQTp2L3LsHE5Y;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$KgVQePwT_QpjU9EQTp2L3LsHE5Y;->f$0:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v1, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$KgVQePwT_QpjU9EQTp2L3LsHE5Y;->f$1:Landroid/hardware/location/ContextHubClient;

    iget-wide v2, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$KgVQePwT_QpjU9EQTp2L3LsHE5Y;->f$2:J

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/location/ContextHubManager$3;->lambda$onNanoAppUnloaded$4(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V

    return-void
.end method
