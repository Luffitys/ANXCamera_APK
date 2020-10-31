.class Landroid/hardware/camera2/legacy/CameraDeviceState$3;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/CameraDeviceState;->setRepeatingRequestError(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field final synthetic val$lastFrameNumber:J

.field final synthetic val$repeatingRequestId:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/CameraDeviceState;JI)V
    .registers 5

    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$3;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    iput-wide p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$3;->val$lastFrameNumber:J

    iput p4, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$3;->val$repeatingRequestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$3;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    # getter for: Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->access$000(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$3;->val$lastFrameNumber:J

    iget v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$3;->val$repeatingRequestId:I

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;->onRepeatingRequestError(JI)V

    return-void
.end method
