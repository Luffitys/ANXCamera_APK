.class public final Landroid/net/metrics/ApfProgramEvent$Builder;
.super Ljava/lang/Object;
.source "ApfProgramEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/ApfProgramEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActualLifetime:J

.field private mCurrentRas:I

.field private mFilteredRas:I

.field private mFlags:I

.field private mLifetime:J

.field private mProgramLength:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/net/metrics/ApfProgramEvent;
    .registers 12

    new-instance v10, Landroid/net/metrics/ApfProgramEvent;

    iget-wide v1, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mLifetime:J

    iget-wide v3, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mActualLifetime:J

    iget v5, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mFilteredRas:I

    iget v6, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mCurrentRas:I

    iget v7, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mProgramLength:I

    iget v8, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mFlags:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/net/metrics/ApfProgramEvent;-><init>(JJIIIILandroid/net/metrics/ApfProgramEvent$1;)V

    return-object v10
.end method

.method public setActualLifetime(J)Landroid/net/metrics/ApfProgramEvent$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mActualLifetime:J

    return-object p0
.end method

.method public setCurrentRas(I)Landroid/net/metrics/ApfProgramEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mCurrentRas:I

    return-object p0
.end method

.method public setFilteredRas(I)Landroid/net/metrics/ApfProgramEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mFilteredRas:I

    return-object p0
.end method

.method public setFlags(ZZ)Landroid/net/metrics/ApfProgramEvent$Builder;
    .registers 4

    invoke-static {p1, p2}, Landroid/net/metrics/ApfProgramEvent;->flagsFor(ZZ)I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mFlags:I

    return-object p0
.end method

.method public setLifetime(J)Landroid/net/metrics/ApfProgramEvent$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mLifetime:J

    return-object p0
.end method

.method public setProgramLength(I)Landroid/net/metrics/ApfProgramEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mProgramLength:I

    return-object p0
.end method
