.class public Landroid/hardware/camera2/CaptureFailure;
.super Ljava/lang/Object;
.source "CaptureFailure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CaptureFailure$FailureReason;
    }
.end annotation


# static fields
.field public static final REASON_ERROR:I = 0x0

.field public static final REASON_FLUSHED:I = 0x1


# instance fields
.field private final mDropped:Z

.field private final mErrorPhysicalCameraId:Ljava/lang/String;

.field private final mFrameNumber:J

.field private final mReason:I

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mSequenceId:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest;IZIJLjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iput p2, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    iput-boolean p3, p0, Landroid/hardware/camera2/CaptureFailure;->mDropped:Z

    iput p4, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    iput-wide p5, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:J

    iput-object p7, p0, Landroid/hardware/camera2/CaptureFailure;->mErrorPhysicalCameraId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFrameNumber()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:J

    return-wide v0
.end method

.method public getPhysicalCameraId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/CaptureFailure;->mErrorPhysicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    return v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public getSequenceId()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    return v0
.end method

.method public wasImageCaptured()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureFailure;->mDropped:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
