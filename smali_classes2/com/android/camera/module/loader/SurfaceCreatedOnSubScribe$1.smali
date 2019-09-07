.class Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SurfaceCreatedOnSubScribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->openCamera2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;


# direct methods
.method constructor <init>(Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe$1;->this$0:Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe$1;->this$0:Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;

    invoke-static {p0}, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->access$000(Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;)Lio/reactivex/SingleEmitter;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
