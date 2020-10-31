.class public final synthetic Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$VuYVXvwmJMkbTnKaOD-h-DOjJpE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field public final synthetic f$2:Landroid/hardware/camera2/CaptureRequest;

.field public final synthetic f$3:Landroid/view/Surface;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$VuYVXvwmJMkbTnKaOD-h-DOjJpE;->f$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

    iput-object p2, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$VuYVXvwmJMkbTnKaOD-h-DOjJpE;->f$1:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p3, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$VuYVXvwmJMkbTnKaOD-h-DOjJpE;->f$2:Landroid/hardware/camera2/CaptureRequest;

    iput-object p4, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$VuYVXvwmJMkbTnKaOD-h-DOjJpE;->f$3:Landroid/view/Surface;

    iput-wide p5, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$VuYVXvwmJMkbTnKaOD-h-DOjJpE;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$VuYVXvwmJMkbTnKaOD-h-DOjJpE;->f$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

    iget-object v1, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$VuYVXvwmJMkbTnKaOD-h-DOjJpE;->f$1:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v2, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$VuYVXvwmJMkbTnKaOD-h-DOjJpE;->f$2:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$VuYVXvwmJMkbTnKaOD-h-DOjJpE;->f$3:Landroid/view/Surface;

    iget-wide v4, p0, Landroid/hardware/camera2/impl/-$$Lambda$CameraCaptureSessionImpl$1$VuYVXvwmJMkbTnKaOD-h-DOjJpE;->f$4:J

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureBufferLost$7$CameraCaptureSessionImpl$1(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void
.end method
