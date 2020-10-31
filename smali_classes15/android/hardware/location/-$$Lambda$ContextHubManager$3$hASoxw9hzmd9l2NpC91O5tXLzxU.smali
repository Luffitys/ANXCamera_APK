.class public final synthetic Landroid/hardware/location/-$$Lambda$ContextHubManager$3$hASoxw9hzmd9l2NpC91O5tXLzxU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/location/ContextHubClientCallback;

.field public final synthetic f$1:Landroid/hardware/location/ContextHubClient;

.field public final synthetic f$2:J

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;JI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$hASoxw9hzmd9l2NpC91O5tXLzxU;->f$0:Landroid/hardware/location/ContextHubClientCallback;

    iput-object p2, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$hASoxw9hzmd9l2NpC91O5tXLzxU;->f$1:Landroid/hardware/location/ContextHubClient;

    iput-wide p3, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$hASoxw9hzmd9l2NpC91O5tXLzxU;->f$2:J

    iput p5, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$hASoxw9hzmd9l2NpC91O5tXLzxU;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$hASoxw9hzmd9l2NpC91O5tXLzxU;->f$0:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v1, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$hASoxw9hzmd9l2NpC91O5tXLzxU;->f$1:Landroid/hardware/location/ContextHubClient;

    iget-wide v2, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$hASoxw9hzmd9l2NpC91O5tXLzxU;->f$2:J

    iget v4, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$hASoxw9hzmd9l2NpC91O5tXLzxU;->f$3:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/location/ContextHubManager$3;->lambda$onNanoAppAborted$2(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;JI)V

    return-void
.end method
