.class Lmiui/cameraanimation/CameraAnimationManager$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lmiui/cameraanimation/CameraAnimationManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lmiui/cameraanimation/CameraAnimationManager$2;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager$2;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    # getter for: Lmiui/cameraanimation/CameraAnimationManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/cameraanimation/CameraAnimationManager;->access$500(Lmiui/cameraanimation/CameraAnimationManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "force_black_v2"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_17

    const/4 v3, 0x1

    :cond_17
    # setter for: Lmiui/cameraanimation/CameraAnimationManager;->mHideNotch:Z
    invoke-static {v0, v3}, Lmiui/cameraanimation/CameraAnimationManager;->access$402(Lmiui/cameraanimation/CameraAnimationManager;Z)Z

    return-void
.end method
