.class public Landroid/net/metrics/NetworkMetrics;
.super Ljava/lang/Object;
.source "NetworkMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/NetworkMetrics$Metrics;,
        Landroid/net/metrics/NetworkMetrics$Summary;
    }
.end annotation


# static fields
.field private static final CONNECT_LATENCY_MAXIMUM_RECORDS:I = 0x4e20

.field private static final INITIAL_DNS_BATCH_SIZE:I = 0x64


# instance fields
.field public final connectMetrics:Landroid/net/metrics/ConnectStats;

.field public final dnsMetrics:Landroid/net/metrics/DnsEvent;

.field public final netId:I

.field public pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

.field public final summary:Landroid/net/metrics/NetworkMetrics$Summary;

.field public final transports:J


# direct methods
.method public constructor <init>(IJLcom/android/internal/util/TokenBucket;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/metrics/NetworkMetrics;->netId:I

    iput-wide p2, p0, Landroid/net/metrics/NetworkMetrics;->transports:J

    new-instance v6, Landroid/net/metrics/ConnectStats;

    const/16 v5, 0x4e20

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/metrics/ConnectStats;-><init>(IJLcom/android/internal/util/TokenBucket;I)V

    iput-object v6, p0, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    new-instance v0, Landroid/net/metrics/DnsEvent;

    const/16 v1, 0x64

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/net/metrics/DnsEvent;-><init>(IJI)V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    new-instance v0, Landroid/net/metrics/NetworkMetrics$Summary;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/metrics/NetworkMetrics$Summary;-><init>(IJ)V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics;->summary:Landroid/net/metrics/NetworkMetrics$Summary;

    return-void
.end method


# virtual methods
.method public addConnectResult(IILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    if-nez v0, :cond_f

    new-instance v0, Landroid/net/metrics/NetworkMetrics$Summary;

    iget v1, p0, Landroid/net/metrics/NetworkMetrics;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/NetworkMetrics;->transports:J

    invoke-direct {v0, v1, v2, v3}, Landroid/net/metrics/NetworkMetrics$Summary;-><init>(IJ)V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    :cond_f
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/metrics/ConnectStats;->addEvent(IILjava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    iget-object v1, v1, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    if-eqz v0, :cond_1e

    const-wide/16 v2, 0x0

    goto :goto_20

    :cond_1e
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_20
    invoke-virtual {v1, v2, v3}, Landroid/net/metrics/NetworkMetrics$Metrics;->count(D)V

    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    iget-object v1, v1, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    int-to-double v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/net/metrics/NetworkMetrics$Metrics;->count(D)V

    :cond_31
    return-void
.end method

.method public addDnsResult(III)V
    .registers 8

    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    if-nez v0, :cond_f

    new-instance v0, Landroid/net/metrics/NetworkMetrics$Summary;

    iget v1, p0, Landroid/net/metrics/NetworkMetrics;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/NetworkMetrics;->transports:J

    invoke-direct {v0, v1, v2, v3}, Landroid/net/metrics/NetworkMetrics$Summary;-><init>(IJ)V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    :cond_f
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    int-to-byte v1, p1

    int-to-byte v2, p2

    invoke-virtual {v0, v1, v2, p3}, Landroid/net/metrics/DnsEvent;->addResult(BBI)Z

    move-result v0

    iget-object v1, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    iget-object v1, v1, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    int-to-double v2, p3

    invoke-virtual {v1, v2, v3}, Landroid/net/metrics/NetworkMetrics$Metrics;->count(D)V

    iget-object v1, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    iget-object v1, v1, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    if-eqz v0, :cond_28

    const-wide/16 v2, 0x0

    goto :goto_2a

    :cond_28
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_2a
    invoke-virtual {v1, v2, v3}, Landroid/net/metrics/NetworkMetrics$Metrics;->count(D)V

    return-void
.end method

.method public addTcpStatsResult(IIII)V
    .registers 9

    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    if-nez v0, :cond_f

    new-instance v0, Landroid/net/metrics/NetworkMetrics$Summary;

    iget v1, p0, Landroid/net/metrics/NetworkMetrics;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/NetworkMetrics;->transports:J

    invoke-direct {v0, v1, v2, v3}, Landroid/net/metrics/NetworkMetrics$Summary;-><init>(IJ)V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    :cond_f
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    iget-object v0, v0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    int-to-double v1, p2

    invoke-virtual {v0, v1, v2, p1}, Landroid/net/metrics/NetworkMetrics$Metrics;->count(DI)V

    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    iget-object v0, v0, Landroid/net/metrics/NetworkMetrics$Summary;->roundTripTimeUs:Landroid/net/metrics/NetworkMetrics$Metrics;

    int-to-double v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/metrics/NetworkMetrics$Metrics;->count(D)V

    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    iget-object v0, v0, Landroid/net/metrics/NetworkMetrics$Summary;->sentAckTimeDiffenceMs:Landroid/net/metrics/NetworkMetrics$Metrics;

    int-to-double v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/net/metrics/NetworkMetrics$Metrics;->count(D)V

    return-void
.end method

.method public getPendingStats()Landroid/net/metrics/NetworkMetrics$Summary;
    .registers 3

    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/metrics/NetworkMetrics;->pendingSummary:Landroid/net/metrics/NetworkMetrics$Summary;

    if-eqz v0, :cond_c

    iget-object v1, p0, Landroid/net/metrics/NetworkMetrics;->summary:Landroid/net/metrics/NetworkMetrics$Summary;

    invoke-virtual {v1, v0}, Landroid/net/metrics/NetworkMetrics$Summary;->merge(Landroid/net/metrics/NetworkMetrics$Summary;)V

    :cond_c
    return-object v0
.end method
