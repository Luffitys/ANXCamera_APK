.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

.field final synthetic val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$packageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    iput-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iput-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$id:Ljava/lang/String;

    iput-object p4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$packageId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$id:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$packageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
