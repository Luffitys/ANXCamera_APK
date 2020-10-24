.class public Lcom/android/camera/dualvideo/render/DualVideoTimer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mDuration:J

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/dualvideo/render/DualVideoTimer;->mStartTime:J

    iput-wide p1, p0, Lcom/android/camera/dualvideo/render/DualVideoTimer;->mDuration:J

    return-void
.end method

.method public isValid()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/dualvideo/render/DualVideoTimer;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/camera/dualvideo/render/DualVideoTimer;->mDuration:J

    cmp-long p0, v2, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
