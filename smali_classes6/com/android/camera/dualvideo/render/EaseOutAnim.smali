.class public Lcom/android/camera/dualvideo/render/EaseOutAnim;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mDuration:I

.field private final mStartTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/EaseOutAnim;->mStartTime:Ljava/lang/Long;

    iput p1, p0, Lcom/android/camera/dualvideo/render/EaseOutAnim;->mDuration:I

    return-void
.end method

.method private transEaseOut(F)F
    .locals 6

    float-to-double p0, p1

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3fe51b71758e2196L    # 0.6596

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x400351eb851eb852L    # 2.415

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide v2, 0x4005f7ced916872bL    # 2.746

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    const-wide p0, 0x3f7950331e3a7daaL    # 0.00618

    add-double/2addr v0, p0

    double-to-float p0, v0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    move p0, p1

    :cond_0
    const/4 p1, 0x0

    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p0, p1

    :cond_1
    return p0
.end method


# virtual methods
.method public getRatio()F
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/EaseOutAnim;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    long-to-float v0, v0

    iget v1, p0, Lcom/android/camera/dualvideo/render/EaseOutAnim;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->transEaseOut(F)F

    move-result p0

    return p0
.end method

.method public isFinished()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/EaseOutAnim;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget p0, p0, Lcom/android/camera/dualvideo/render/EaseOutAnim;->mDuration:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
