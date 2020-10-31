.class Landroid/view/ScaleGestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor <init>(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    # setter for: Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F
    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->access$002(Landroid/view/ScaleGestureDetector;F)F

    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    # setter for: Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F
    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->access$102(Landroid/view/ScaleGestureDetector;F)F

    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    const/4 v1, 0x1

    # setter for: Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I
    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->access$202(Landroid/view/ScaleGestureDetector;I)I

    return v1
.end method
