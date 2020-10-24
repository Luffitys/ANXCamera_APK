.class Lcom/android/camera/module/VideoModule$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/autozoom/AutoZoomCaptureResult;
    .locals 0

    new-instance p0, Lcom/android/camera2/autozoom/AutoZoomCaptureResult;

    invoke-direct {p0, p1}, Lcom/android/camera2/autozoom/AutoZoomCaptureResult;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule$3;->apply(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/autozoom/AutoZoomCaptureResult;

    move-result-object p0

    return-object p0
.end method
