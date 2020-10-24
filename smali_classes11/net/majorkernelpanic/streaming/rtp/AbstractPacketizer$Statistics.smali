.class public Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "Statistics"


# instance fields
.field private c:I

.field private count:I

.field private duration:J

.field private elapsed:J

.field private initoffset:Z

.field private m:F

.field private period:J

.field private q:F

.field private start:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2bc

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->count:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->c:I

    const/4 v1, 0x0

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->m:F

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->q:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->elapsed:J

    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->start:J

    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->duration:J

    const-wide v1, 0x2540be400L

    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->period:J

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->initoffset:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2bc

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->count:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->c:I

    const/4 v1, 0x0

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->m:F

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->q:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->elapsed:J

    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->start:J

    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->duration:J

    const-wide v1, 0x2540be400L

    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->period:J

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->initoffset:Z

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->count:I

    int-to-long p1, p2

    iput-wide p1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->period:J

    return-void
.end method


# virtual methods
.method public average()J
    .locals 4

    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->m:F

    float-to-long v0, v0

    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->duration:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->duration:J

    return-wide v0
.end method

.method public push(J)V
    .locals 8

    iget-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->elapsed:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->elapsed:J

    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->period:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_2

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->elapsed:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->initoffset:Z

    if-eqz v0, :cond_0

    iget-wide v6, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->start:J

    sub-long v6, v4, v6

    cmp-long v0, v6, v2

    if-gez v0, :cond_1

    :cond_0
    iput-wide v4, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->start:J

    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->duration:J

    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->initoffset:Z

    :cond_1
    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->start:J

    sub-long/2addr v4, v2

    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->duration:J

    sub-long/2addr v4, v2

    add-long/2addr p1, v4

    :cond_2
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->c:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    add-int/2addr v0, v1

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->c:I

    long-to-float p1, p1

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->m:F

    goto :goto_0

    :cond_3
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->m:F

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->q:F

    mul-float/2addr v0, v1

    long-to-float p1, p1

    add-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float p2, v1, p1

    div-float/2addr v0, p2

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->m:F

    iget p2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->count:I

    int-to-float p2, p2

    cmpg-float p2, v1, p2

    if-gez p2, :cond_4

    add-float/2addr v1, p1

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->q:F

    :cond_4
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->initoffset:Z

    const/4 v1, 0x0

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->q:F

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->m:F

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->elapsed:J

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->start:J

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->duration:J

    return-void
.end method
