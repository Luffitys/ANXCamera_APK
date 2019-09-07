.class Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$3;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "CameraSnapPaintItemBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->initLongPressReboundSystem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$3;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 4

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$3;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mUpSpring:Lcom/facebook/rebound/Spring;

    sget-object p1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCameraUpConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {p0, p1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    :cond_0
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 0

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    return-void
.end method
