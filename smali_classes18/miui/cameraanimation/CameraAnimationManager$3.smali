.class Lmiui/cameraanimation/CameraAnimationManager$3;
.super Lmiui/process/IForegroundInfoListener$Stub;
.source "CameraAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cameraanimation/CameraAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/cameraanimation/CameraAnimationManager;


# direct methods
.method constructor <init>(Lmiui/cameraanimation/CameraAnimationManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/cameraanimation/CameraAnimationManager$3;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-direct {p0}, Lmiui/process/IForegroundInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundInfoChanged(Lmiui/process/ForegroundInfo;)V
    .registers 4

    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager$3;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    iget-object v1, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    # setter for: Lmiui/cameraanimation/CameraAnimationManager;->mForegroundPackage:Ljava/lang/String;
    invoke-static {v0, v1}, Lmiui/cameraanimation/CameraAnimationManager;->access$602(Lmiui/cameraanimation/CameraAnimationManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager$3;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    const/4 v1, -0x1

    # setter for: Lmiui/cameraanimation/CameraAnimationManager;->mLastUnavailableCameraId:I
    invoke-static {v0, v1}, Lmiui/cameraanimation/CameraAnimationManager;->access$202(Lmiui/cameraanimation/CameraAnimationManager;I)I

    return-void
.end method
