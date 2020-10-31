.class public Landroid/util/NtpTrustedTime$TimeResult;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/NtpTrustedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeResult"
.end annotation


# instance fields
.field private final mCertaintyMillis:J

.field private final mElapsedRealtimeMillis:J

.field private final mTimeMillis:J


# direct methods
.method public constructor <init>(JJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/util/NtpTrustedTime$TimeResult;->mTimeMillis:J

    iput-wide p3, p0, Landroid/util/NtpTrustedTime$TimeResult;->mElapsedRealtimeMillis:J

    iput-wide p5, p0, Landroid/util/NtpTrustedTime$TimeResult;->mCertaintyMillis:J

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 5

    iget-wide v0, p0, Landroid/util/NtpTrustedTime$TimeResult;->mTimeMillis:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getAgeMillis()J
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime$TimeResult;->mElapsedRealtimeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getCertaintyMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/util/NtpTrustedTime$TimeResult;->mCertaintyMillis:J

    return-wide v0
.end method

.method public getElapsedRealtimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/util/NtpTrustedTime$TimeResult;->mElapsedRealtimeMillis:J

    return-wide v0
.end method

.method public getTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/util/NtpTrustedTime$TimeResult;->mTimeMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeResult{mTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/util/NtpTrustedTime$TimeResult;->mTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mElapsedRealtimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/util/NtpTrustedTime$TimeResult;->mElapsedRealtimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCertaintyMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/util/NtpTrustedTime$TimeResult;->mCertaintyMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
