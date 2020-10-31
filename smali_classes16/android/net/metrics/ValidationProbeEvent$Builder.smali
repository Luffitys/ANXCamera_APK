.class public final Landroid/net/metrics/ValidationProbeEvent$Builder;
.super Ljava/lang/Object;
.source "ValidationProbeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/ValidationProbeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDurationMs:J

.field private mProbeType:I

.field private mReturnCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/net/metrics/ValidationProbeEvent;
    .registers 8

    new-instance v6, Landroid/net/metrics/ValidationProbeEvent;

    iget-wide v1, p0, Landroid/net/metrics/ValidationProbeEvent$Builder;->mDurationMs:J

    iget v3, p0, Landroid/net/metrics/ValidationProbeEvent$Builder;->mProbeType:I

    iget v4, p0, Landroid/net/metrics/ValidationProbeEvent$Builder;->mReturnCode:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/net/metrics/ValidationProbeEvent;-><init>(JIILandroid/net/metrics/ValidationProbeEvent$1;)V

    return-object v6
.end method

.method public setDurationMs(J)Landroid/net/metrics/ValidationProbeEvent$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/net/metrics/ValidationProbeEvent$Builder;->mDurationMs:J

    return-object p0
.end method

.method public setProbeType(IZ)Landroid/net/metrics/ValidationProbeEvent$Builder;
    .registers 4

    # invokes: Landroid/net/metrics/ValidationProbeEvent;->makeProbeType(IZ)I
    invoke-static {p1, p2}, Landroid/net/metrics/ValidationProbeEvent;->access$000(IZ)I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ValidationProbeEvent$Builder;->mProbeType:I

    return-object p0
.end method

.method public setReturnCode(I)Landroid/net/metrics/ValidationProbeEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/net/metrics/ValidationProbeEvent$Builder;->mReturnCode:I

    return-object p0
.end method
