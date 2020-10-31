.class Lmiui/slide/SlideCameraMonitor$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "SlideCameraMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideCameraMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideCameraMonitor;


# direct methods
.method constructor <init>(Lmiui/slide/SlideCameraMonitor;)V
    .registers 2

    iput-object p1, p0, Lmiui/slide/SlideCameraMonitor$1;->this$0:Lmiui/slide/SlideCameraMonitor;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_10

    return-void

    :cond_10
    # getter for: Lmiui/slide/SlideCameraMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/slide/SlideCameraMonitor;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/slide/SlideCameraMonitor$1;->this$0:Lmiui/slide/SlideCameraMonitor;

    # getter for: Lmiui/slide/SlideCameraMonitor;->mOpeningCameraID:Ljava/util/Set;
    invoke-static {v1}, Lmiui/slide/SlideCameraMonitor;->access$100(Lmiui/slide/SlideCameraMonitor;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/slide/SlideCameraMonitor$1;->this$0:Lmiui/slide/SlideCameraMonitor;

    # getter for: Lmiui/slide/SlideCameraMonitor;->mCameraOpenListener:Lmiui/slide/SlideCameraMonitor$CameraOpenListener;
    invoke-static {v1}, Lmiui/slide/SlideCameraMonitor;->access$200(Lmiui/slide/SlideCameraMonitor;)Lmiui/slide/SlideCameraMonitor$CameraOpenListener;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lmiui/slide/SlideCameraMonitor$1;->this$0:Lmiui/slide/SlideCameraMonitor;

    # getter for: Lmiui/slide/SlideCameraMonitor;->mCameraOpenListener:Lmiui/slide/SlideCameraMonitor$CameraOpenListener;
    invoke-static {v1}, Lmiui/slide/SlideCameraMonitor;->access$200(Lmiui/slide/SlideCameraMonitor;)Lmiui/slide/SlideCameraMonitor$CameraOpenListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lmiui/slide/SlideCameraMonitor$CameraOpenListener;->onCameraClose(I)V

    :cond_46
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_10

    return-void

    :cond_10
    # getter for: Lmiui/slide/SlideCameraMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/slide/SlideCameraMonitor;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraUnavailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/slide/SlideCameraMonitor$1;->this$0:Lmiui/slide/SlideCameraMonitor;

    # getter for: Lmiui/slide/SlideCameraMonitor;->mOpeningCameraID:Ljava/util/Set;
    invoke-static {v1}, Lmiui/slide/SlideCameraMonitor;->access$100(Lmiui/slide/SlideCameraMonitor;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/slide/SlideCameraMonitor$1;->this$0:Lmiui/slide/SlideCameraMonitor;

    # getter for: Lmiui/slide/SlideCameraMonitor;->mCameraOpenListener:Lmiui/slide/SlideCameraMonitor$CameraOpenListener;
    invoke-static {v1}, Lmiui/slide/SlideCameraMonitor;->access$200(Lmiui/slide/SlideCameraMonitor;)Lmiui/slide/SlideCameraMonitor$CameraOpenListener;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lmiui/slide/SlideCameraMonitor$1;->this$0:Lmiui/slide/SlideCameraMonitor;

    # getter for: Lmiui/slide/SlideCameraMonitor;->mCameraOpenListener:Lmiui/slide/SlideCameraMonitor$CameraOpenListener;
    invoke-static {v1}, Lmiui/slide/SlideCameraMonitor;->access$200(Lmiui/slide/SlideCameraMonitor;)Lmiui/slide/SlideCameraMonitor$CameraOpenListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lmiui/slide/SlideCameraMonitor$CameraOpenListener;->onCameraOpen(I)V

    :cond_46
    return-void
.end method
