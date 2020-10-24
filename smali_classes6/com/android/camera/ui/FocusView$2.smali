.class Lcom/android/camera/ui/FocusView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FocusView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$800(Lcom/android/camera/ui/FocusView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1400(Lcom/android/camera/ui/FocusView;)I

    move-result v0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1500(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1500(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1500(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa6

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isZoomViewMoving()Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->access$300(Lcom/android/camera/ui/FocusView;)I

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1600(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1600(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr p1, v3

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    invoke-static {v0, v1, p1, v3}, Lcom/android/camera/ui/FocusView;->access$1700(Lcom/android/camera/ui/FocusView;FFF)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p0}, Lcom/android/camera/ui/FocusView;->access$100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->removeTiltShiftMask()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa1

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x5a

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1, v2}, Lcom/android/camera/ui/FocusView;->access$902(Lcom/android/camera/ui/FocusView;Z)Z

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$1800(Lcom/android/camera/ui/FocusView;)V

    iget-object p0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p0}, Lcom/android/camera/ui/FocusView;->access$1900(Lcom/android/camera/ui/FocusView;)V

    :cond_4
    :goto_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xa3 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xa7 -> :sswitch_0
        0xab -> :sswitch_0
        0xad -> :sswitch_0
        0xaf -> :sswitch_0
        0xb1 -> :sswitch_0
        0xb8 -> :sswitch_0
        0xba -> :sswitch_0
        0xbc -> :sswitch_0
        0xcd -> :sswitch_0
    .end sparse-switch
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$900(Lcom/android/camera/ui/FocusView;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$2000(Lcom/android/camera/ui/FocusView;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$2100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->getGestureOrientation()I

    move-result p1

    const/16 p2, 0xc8

    const/16 v1, 0x5a

    if-ne p1, p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2200(Lcom/android/camera/ui/FocusView;)I

    move-result p2

    div-int/2addr p2, v1

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_4

    :cond_3
    const/16 p2, 0x64

    if-ne p1, p2, :cond_f

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$2200(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    div-int/2addr p1, v1

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$2300(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2200(Lcom/android/camera/ui/FocusView;)I

    move-result p2

    if-eqz p2, :cond_8

    if-eq p2, v1, :cond_7

    const/16 v1, 0xb4

    if-eq p2, v1, :cond_6

    const/16 p4, 0x10e

    if-eq p2, p4, :cond_5

    goto :goto_1

    :cond_5
    int-to-float p1, p1

    sub-float/2addr p1, p3

    goto :goto_0

    :cond_6
    int-to-float p1, p1

    add-float/2addr p1, p4

    goto :goto_0

    :cond_7
    int-to-float p1, p1

    add-float/2addr p1, p3

    goto :goto_0

    :cond_8
    int-to-float p1, p1

    sub-float/2addr p1, p4

    :goto_0
    float-to-int p1, p1

    :goto_1
    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    sget p3, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    int-to-float p4, p3

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr p4, v1

    div-float/2addr p2, p4

    int-to-float p4, p1

    div-float/2addr p4, p2

    float-to-int p2, p4

    iget-object p4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    neg-int p3, p3

    div-int/lit8 p3, p3, 0x2

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$2500()I

    move-result v1

    sub-int/2addr p3, v1

    sget v1, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {p2, p3, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p3

    invoke-static {p4, p3}, Lcom/android/camera/ui/FocusView;->access$2402(Lcom/android/camera/ui/FocusView;I)I

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$2400(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    if-ne p2, p3, :cond_9

    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2, p1}, Lcom/android/camera/ui/FocusView;->access$2302(Lcom/android/camera/ui/FocusView;I)I

    :cond_9
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/camera/ui/FocusView;->access$2602(Lcom/android/camera/ui/FocusView;Z)Z

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$2700(Lcom/android/camera/ui/FocusView;)V

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$2800(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object p1

    const/16 p3, 0x8

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, p3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$2900(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$3000(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    if-eq p1, p3, :cond_c

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$300(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    const/4 p4, 0x3

    if-eq p3, p4, :cond_a

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$3000(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    if-ge p1, p3, :cond_a

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$3000(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->access$100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v1

    if-lt p3, v1, :cond_a

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result p3

    if-ge p1, p3, :cond_a

    :goto_2
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$3100(Lcom/android/camera/ui/FocusView;)V

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$3000(Lcom/android/camera/ui/FocusView;)I

    move-result v1

    invoke-static {p3, v1}, Lcom/android/camera/ui/FocusView;->access$3202(Lcom/android/camera/ui/FocusView;I)I

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3, p4}, Lcom/android/camera/ui/FocusView;->access$302(Lcom/android/camera/ui/FocusView;I)I

    goto :goto_3

    :cond_a
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$300(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    const/4 p4, 0x4

    if-eq p3, p4, :cond_b

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$3000(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    if-le p1, p3, :cond_b

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$3000(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->access$100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v1

    if-ge p3, v1, :cond_b

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result p3

    if-lt p1, p3, :cond_b

    goto :goto_2

    :cond_b
    :goto_3
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3, p1, v0}, Lcom/android/camera/ui/FocusView;->access$3300(Lcom/android/camera/ui/FocusView;IZ)V

    :cond_c
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$1300(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$2400(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    int-to-float p3, p3

    iget-object p4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p4}, Lcom/android/camera/ui/FocusView;->access$3400(Lcom/android/camera/ui/FocusView;)F

    move-result p4

    invoke-virtual {p1, p3, p4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvChanged(FF)V

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$300(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$300(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    if-ne p1, p2, :cond_e

    :cond_d
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1, p2}, Lcom/android/camera/ui/FocusView;->access$302(Lcom/android/camera/ui/FocusView;I)I

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$600(Lcom/android/camera/ui/FocusView;)V

    iget-object p0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_e
    return p2

    :cond_f
    :goto_4
    return v0
.end method
