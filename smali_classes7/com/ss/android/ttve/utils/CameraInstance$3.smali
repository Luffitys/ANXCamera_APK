.class Lcom/ss/android/ttve/utils/CameraInstance$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/utils/CameraInstance;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/utils/CameraInstance;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance$3;->this$0:Lcom/ss/android/ttve/utils/CameraInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    const-string p0, "CameraInstance"

    if-eqz p1, :cond_0

    const-string p1, "Camera Focus Succeed!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Camera Focus Failed!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    const-string p1, "auto"

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
