.class Lcom/android/camera/ui/V6GestureRecognizer$1;
.super Lcom/android/camera/ui/zoom/ScaleGestureDetector;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6GestureRecognizer;-><init>(Lcom/android/camera/ActivityBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6GestureRecognizer;

.field final synthetic val$camera:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;Landroid/content/Context;Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;Lcom/android/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$1;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    iput-object p4, p0, Lcom/android/camera/ui/V6GestureRecognizer$1;->val$camera:Lcom/android/camera/Camera;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;)V

    return-void
.end method


# virtual methods
.method public getScaledMinimumScalingSpan()I
    .locals 2

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_4_OR_MORE_SAT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$1;->val$camera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v0

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$1;->val$camera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v0

    const/16 v1, 0xa5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-super {p0}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->getScaledMinimumScalingSpan()I

    move-result p0

    return p0
.end method
