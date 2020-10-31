.class public final Landroid/net/metrics/ApfStats$Builder;
.super Ljava/lang/Object;
.source "ApfStats.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/ApfStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDroppedRas:I

.field private mDurationMs:J

.field private mMatchingRas:I

.field private mMaxProgramSize:I

.field private mParseErrors:I

.field private mProgramUpdates:I

.field private mProgramUpdatesAll:I

.field private mProgramUpdatesAllowingMulticast:I

.field private mReceivedRas:I

.field private mZeroLifetimeRas:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/net/metrics/ApfStats;
    .registers 15

    new-instance v13, Landroid/net/metrics/ApfStats;

    iget-wide v1, p0, Landroid/net/metrics/ApfStats$Builder;->mDurationMs:J

    iget v3, p0, Landroid/net/metrics/ApfStats$Builder;->mReceivedRas:I

    iget v4, p0, Landroid/net/metrics/ApfStats$Builder;->mMatchingRas:I

    iget v5, p0, Landroid/net/metrics/ApfStats$Builder;->mDroppedRas:I

    iget v6, p0, Landroid/net/metrics/ApfStats$Builder;->mZeroLifetimeRas:I

    iget v7, p0, Landroid/net/metrics/ApfStats$Builder;->mParseErrors:I

    iget v8, p0, Landroid/net/metrics/ApfStats$Builder;->mProgramUpdates:I

    iget v9, p0, Landroid/net/metrics/ApfStats$Builder;->mProgramUpdatesAll:I

    iget v10, p0, Landroid/net/metrics/ApfStats$Builder;->mProgramUpdatesAllowingMulticast:I

    iget v11, p0, Landroid/net/metrics/ApfStats$Builder;->mMaxProgramSize:I

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/net/metrics/ApfStats;-><init>(JIIIIIIIIILandroid/net/metrics/ApfStats$1;)V

    return-object v13
.end method

.method public setDroppedRas(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2

    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mDroppedRas:I

    return-object p0
.end method

.method public setDurationMs(J)Landroid/net/metrics/ApfStats$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/net/metrics/ApfStats$Builder;->mDurationMs:J

    return-object p0
.end method

.method public setMatchingRas(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2

    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mMatchingRas:I

    return-object p0
.end method

.method public setMaxProgramSize(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2

    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mMaxProgramSize:I

    return-object p0
.end method

.method public setParseErrors(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2

    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mParseErrors:I

    return-object p0
.end method

.method public setProgramUpdates(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2

    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mProgramUpdates:I

    return-object p0
.end method

.method public setProgramUpdatesAll(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2

    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mProgramUpdatesAll:I

    return-object p0
.end method

.method public setProgramUpdatesAllowingMulticast(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2

    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mProgramUpdatesAllowingMulticast:I

    return-object p0
.end method

.method public setReceivedRas(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2

    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mReceivedRas:I

    return-object p0
.end method

.method public setZeroLifetimeRas(I)Landroid/net/metrics/ApfStats$Builder;
    .registers 2

    iput p1, p0, Landroid/net/metrics/ApfStats$Builder;->mZeroLifetimeRas:I

    return-object p0
.end method
