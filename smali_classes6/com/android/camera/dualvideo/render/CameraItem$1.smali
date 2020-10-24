.class Lcom/android/camera/dualvideo/render/CameraItem$1;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/render/CameraItem;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/render/CameraItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$1;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$1;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    int-to-float p2, p3

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p2, p4

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->access$002(Lcom/android/camera/dualvideo/render/CameraItem;F)F

    if-eqz p5, :cond_1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem$1;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    const/16 p1, 0x3e8

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->access$102(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z

    :cond_1
    return-void
.end method
