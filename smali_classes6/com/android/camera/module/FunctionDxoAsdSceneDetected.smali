.class Lcom/android/camera/module/FunctionDxoAsdSceneDetected;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private mCurrentAsdScene:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

.field private mModuleCallback:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/FunctionDxoAsdSceneDetected$IDxoAsdSceneDetected;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/FunctionDxoAsdSceneDetected;->mModuleCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/FunctionDxoAsdSceneDetected;->mModuleCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/FunctionDxoAsdSceneDetected;->mModuleCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/FunctionDxoAsdSceneDetected$IDxoAsdSceneDetected;

    instance-of v1, v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/android/camera/module/Camera2Module;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v1, p1}, Lcom/android/camera2/CaptureResultParser;->getDxoAsdScene(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/FunctionDxoAsdSceneDetected;->mCurrentAsdScene:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    invoke-virtual {v1, v2}, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    :cond_1
    iput-object v1, p0, Lcom/android/camera/module/FunctionDxoAsdSceneDetected;->mCurrentAsdScene:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    invoke-interface {v0, v1}, Lcom/android/camera/module/FunctionDxoAsdSceneDetected$IDxoAsdSceneDetected;->updateDxoAsdScene(Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;)V

    :cond_2
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/FunctionDxoAsdSceneDetected;->apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0
.end method
