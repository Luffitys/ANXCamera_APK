.class Landroid/net/metrics/NetworkMetrics$Metrics;
.super Ljava/lang/Object;
.source "NetworkMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/NetworkMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Metrics"
.end annotation


# instance fields
.field public count:I

.field public max:D

.field public sum:D


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/net/metrics/NetworkMetrics$Metrics;->max:D

    return-void
.end method


# virtual methods
.method average()D
    .registers 5

    iget-wide v0, p0, Landroid/net/metrics/NetworkMetrics$Metrics;->sum:D

    iget v2, p0, Landroid/net/metrics/NetworkMetrics$Metrics;->count:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_e

    const-wide/16 v0, 0x0

    :cond_e
    return-wide v0
.end method

.method count(D)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/metrics/NetworkMetrics$Metrics;->count(DI)V

    return-void
.end method

.method count(DI)V
    .registers 6

    iget v0, p0, Landroid/net/metrics/NetworkMetrics$Metrics;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/net/metrics/NetworkMetrics$Metrics;->count:I

    iget-wide v0, p0, Landroid/net/metrics/NetworkMetrics$Metrics;->sum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/net/metrics/NetworkMetrics$Metrics;->sum:D

    iget-wide v0, p0, Landroid/net/metrics/NetworkMetrics$Metrics;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/NetworkMetrics$Metrics;->max:D

    return-void
.end method

.method merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V
    .registers 6

    iget v0, p0, Landroid/net/metrics/NetworkMetrics$Metrics;->count:I

    iget v1, p1, Landroid/net/metrics/NetworkMetrics$Metrics;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/metrics/NetworkMetrics$Metrics;->count:I

    iget-wide v0, p0, Landroid/net/metrics/NetworkMetrics$Metrics;->sum:D

    iget-wide v2, p1, Landroid/net/metrics/NetworkMetrics$Metrics;->sum:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/NetworkMetrics$Metrics;->sum:D

    iget-wide v0, p0, Landroid/net/metrics/NetworkMetrics$Metrics;->max:D

    iget-wide v2, p1, Landroid/net/metrics/NetworkMetrics$Metrics;->max:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/NetworkMetrics$Metrics;->max:D

    return-void
.end method
