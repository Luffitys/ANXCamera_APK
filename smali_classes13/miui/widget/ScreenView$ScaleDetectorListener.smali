.class Lmiui/widget/ScreenView$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# static fields
.field private static final VALID_PINCH_IN_RATIO:F = 0.8f

.field private static final VALID_PINCH_OUT_RATIO:F = 1.2f

.field private static final VALID_PINCH_RATIO:F = 0.95f

.field private static final VALID_PINCH_TIME:F = 200.0f


# instance fields
.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method private constructor <init>(Lmiui/widget/ScreenView;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView$ScaleDetectorListener;-><init>(Lmiui/widget/ScreenView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget-object v1, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    # getter for: Lmiui/widget/ScreenView;->mTouchState:I
    invoke-static {v1}, Lmiui/widget/ScreenView;->access$1500(Lmiui/widget/ScreenView;)I

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_25

    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_25

    const v1, 0x3f86bca2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2c

    :cond_25
    iget-object v1, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    const/4 v2, 0x0

    const/4 v3, 0x4

    # invokes: Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V
    invoke-static {v1, v2, v3}, Lmiui/widget/ScreenView;->access$1100(Lmiui/widget/ScreenView;Landroid/view/MotionEvent;I)V

    :cond_2c
    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v1, v0, v1

    const/4 v2, 0x1

    if-gez v1, :cond_3a

    iget-object v1, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v1, p1}, Lmiui/widget/ScreenView;->onPinchIn(Landroid/view/ScaleGestureDetector;)V

    return v2

    :cond_3a
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_47

    iget-object v1, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v1, p1}, Lmiui/widget/ScreenView;->onPinchOut(Landroid/view/ScaleGestureDetector;)V

    return v2

    :cond_47
    const/4 v1, 0x0

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    iget-object v0, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    # getter for: Lmiui/widget/ScreenView;->mTouchState:I
    invoke-static {v0}, Lmiui/widget/ScreenView;->access$1500(Lmiui/widget/ScreenView;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v0}, Lmiui/widget/ScreenView;->finishCurrentGesture()V

    return-void
.end method
