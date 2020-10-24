.class public Lcom/android/camera/timerburst/TimerBurstBean;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private countdown:Z

.field private intervalTimer:J

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntervalTimer()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/timerburst/TimerBurstBean;->intervalTimer:J

    return-wide v0
.end method

.method public getTotalCount()I
    .locals 0

    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstBean;->totalCount:I

    return p0
.end method

.method public isCountdown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/timerburst/TimerBurstBean;->countdown:Z

    return p0
.end method

.method public setCountdown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/timerburst/TimerBurstBean;->countdown:Z

    return-void
.end method

.method public setIntervalTimer(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/timerburst/TimerBurstBean;->intervalTimer:J

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstBean;->totalCount:I

    return-void
.end method
