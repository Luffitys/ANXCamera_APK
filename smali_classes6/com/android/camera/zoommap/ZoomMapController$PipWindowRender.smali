.class Lcom/android/camera/zoommap/ZoomMapController$PipWindowRender;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private mZoomMapControllerRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/camera/zoommap/ZoomMapController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController$PipWindowRender;->mZoomMapControllerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController$PipWindowRender;->mZoomMapControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/zoommap/ZoomMapController;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/camera/zoommap/ZoomMapController;->access$400(Lcom/android/camera/zoommap/ZoomMapController;)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method
