.class Lmiui/widget/ScreenView$SliderTouchListener;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method private constructor <init>(Lmiui/widget/ScreenView;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView$SliderTouchListener;-><init>(Lmiui/widget/ScreenView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    nop

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v2}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    int-to-float v3, v2

    mul-float/2addr v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_63

    if-eq v4, v6, :cond_50

    const/4 v7, 0x2

    if-eq v4, v7, :cond_35

    if-eq v4, v5, :cond_50

    goto :goto_7e

    :cond_35
    iget-object v4, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    # invokes: Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V
    invoke-static {v4, v3}, Lmiui/widget/ScreenView;->access$1200(Lmiui/widget/ScreenView;I)V

    iget-object v4, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    iget v5, v4, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v5, v2

    int-to-float v5, v5

    mul-float/2addr v5, v1

    int-to-float v8, v0

    div-float/2addr v5, v8

    iget-object v8, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    iget v8, v8, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v8, v7

    int-to-float v7, v8

    sub-float/2addr v5, v7

    float-to-int v5, v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Lmiui/widget/ScreenView;->scrollTo(II)V

    goto :goto_7e

    :cond_50
    iget-object v4, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v4, v3}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    iget-object v4, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    iget v5, v4, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget-object v7, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    # getter for: Lmiui/widget/ScreenView;->mNextScreen:I
    invoke-static {v7}, Lmiui/widget/ScreenView;->access$1300(Lmiui/widget/ScreenView;)I

    move-result v7

    # invokes: Lmiui/widget/ScreenView;->updateSeekPoints(II)V
    invoke-static {v4, v5, v7}, Lmiui/widget/ScreenView;->access$1400(Lmiui/widget/ScreenView;II)V

    goto :goto_7e

    :cond_63
    iget-object v4, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    # getter for: Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v4}, Lmiui/widget/ScreenView;->access$1000(Lmiui/widget/ScreenView;)Landroid/widget/Scroller;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_78

    iget-object v4, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    # getter for: Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v4}, Lmiui/widget/ScreenView;->access$1000(Lmiui/widget/ScreenView;)Landroid/widget/Scroller;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_78
    iget-object v4, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    # invokes: Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V
    invoke-static {v4, p2, v5}, Lmiui/widget/ScreenView;->access$1100(Lmiui/widget/ScreenView;Landroid/view/MotionEvent;I)V

    nop

    :goto_7e
    return v6
.end method
