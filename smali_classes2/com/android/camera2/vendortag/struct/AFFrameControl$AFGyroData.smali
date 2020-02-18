.class public Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;
.super Ljava/lang/Object;
.source "AFFrameControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/AFFrameControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AFGyroData"
.end annotation


# instance fields
.field enabled:Z

.field pAngularVelocityX:[F

.field pAngularVelocityY:[F

.field pAngularVelocityZ:[F

.field sampleCount:I

.field timeStamp:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->pAngularVelocityX:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->pAngularVelocityY:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->pAngularVelocityZ:[F

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->timeStamp:[J

    return-void
.end method


# virtual methods
.method public getSampleCount()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->sampleCount:I

    return p0
.end method

.method public getTimeStamp()[J
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->timeStamp:[J

    return-object p0
.end method

.method public getpAngularVelocityX()[F
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->pAngularVelocityX:[F

    return-object p0
.end method

.method public getpAngularVelocityY()[F
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->pAngularVelocityY:[F

    return-object p0
.end method

.method public getpAngularVelocityZ()[F
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->pAngularVelocityZ:[F

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->enabled:Z

    return p0
.end method
