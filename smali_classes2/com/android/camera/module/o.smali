.class public final synthetic Lcom/android/camera/module/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ub:Lcom/android/camera/module/Camera2Module;

.field private final synthetic vb:[Lcom/android/camera2/CameraHardwareFace;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;[Lcom/android/camera2/CameraHardwareFace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/o;->ub:Lcom/android/camera/module/Camera2Module;

    iput-object p2, p0, Lcom/android/camera/module/o;->vb:[Lcom/android/camera2/CameraHardwareFace;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/o;->ub:Lcom/android/camera/module/Camera2Module;

    iget-object p0, p0, Lcom/android/camera/module/o;->vb:[Lcom/android/camera2/CameraHardwareFace;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/Camera2Module;->a([Lcom/android/camera2/CameraHardwareFace;)V

    return-void
.end method
