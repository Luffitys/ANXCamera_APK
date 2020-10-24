.class public Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final RESOLUTION:J = 0xc8L


# instance fields
.field private mCount:I

.field private mDelta:J

.field private mElapsed:[J

.field private mIndex:I

.field private mNow:J

.field private mOldNow:J

.field private mSize:I

.field private mSum:[J

.field private mTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSize:I

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->reset()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    div-int/lit16 p1, p1, 0xc8

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSize:I

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->reset()V

    return-void
.end method


# virtual methods
.method public average()I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move-wide v5, v3

    :goto_0
    iget v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSize:I

    if-ge v2, v7, :cond_0

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSum:[J

    aget-wide v7, v7, v2

    add-long/2addr v5, v7

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mElapsed:[J

    aget-wide v7, v7, v2

    add-long/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmp-long p0, v3, v0

    if-lez p0, :cond_1

    const-wide/16 v0, 0x1f40

    mul-long/2addr v5, v0

    div-long v0, v5, v3

    :cond_1
    long-to-int p0, v0

    return p0
.end method

.method public push(I)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mNow:J

    iget v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mCount:I

    if-lez v2, :cond_0

    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mDelta:J

    iget-wide v4, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mOldNow:J

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mDelta:J

    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mTotal:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mTotal:I

    const-wide/16 v4, 0xc8

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSum:[J

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mIndex:I

    int-to-long v4, v0

    aput-wide v4, p1, v1

    const/4 p1, 0x0

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mTotal:I

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mElapsed:[J

    aput-wide v2, v0, v1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mDelta:J

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mIndex:I

    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSize:I

    if-lt v1, v0, :cond_0

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mIndex:I

    :cond_0
    iget-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mNow:J

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mOldNow:J

    iget p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mCount:I

    return-void
.end method

.method public reset()V
    .locals 3

    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSize:I

    new-array v1, v0, [J

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSum:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mElapsed:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mNow:J

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mOldNow:J

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mDelta:J

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mTotal:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mIndex:I

    return-void
.end method
