.class public Lcom/android/camera/module/impl/component/TimeSpeedModel;
.super Ljava/lang/Object;
.source "TimeSpeedModel.java"


# instance fields
.field duration:J

.field speed:D


# direct methods
.method public constructor <init>(JD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/camera/module/impl/component/TimeSpeedModel;->duration:J

    iput-wide p3, p0, Lcom/android/camera/module/impl/component/TimeSpeedModel;->speed:D

    return-void
.end method

.method public static calculateRealTime(ID)I
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    div-double/2addr v0, p1

    double-to-int p0, v0

    return p0
.end method

.method public static calculateRealTime(JD)J
    .locals 2

    long-to-double p0, p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p0, v0

    div-double/2addr p0, p2

    double-to-long p0, p0

    return-wide p0
.end method

.method public static calculateRealTime(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/TimeSpeedModel;",
            ">;)J"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/impl/component/TimeSpeedModel;

    int-to-long v2, v0

    iget-wide v4, v1, Lcom/android/camera/module/impl/component/TimeSpeedModel;->duration:J

    iget-wide v0, v1, Lcom/android/camera/module/impl/component/TimeSpeedModel;->speed:D

    invoke-static {v4, v5, v0, v1}, Lcom/android/camera/module/impl/component/TimeSpeedModel;->calculateRealTime(JD)J

    move-result-wide v0

    add-long/2addr v2, v0

    long-to-int v0, v2

    goto :goto_0

    :cond_1
    int-to-long v0, v0

    return-wide v0

    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/impl/component/TimeSpeedModel;->duration:J

    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/impl/component/TimeSpeedModel;->speed:D

    return-wide v0
.end method

.method public setDuration(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/TimeSpeedModel;->duration:J

    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/TimeSpeedModel;->speed:D

    return-void
.end method
