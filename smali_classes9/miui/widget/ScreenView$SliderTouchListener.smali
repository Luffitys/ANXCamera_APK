.class Lmiui/widget/ScreenView$SliderTouchListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method private constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView$SliderTouchListener;-><init>(Lmiui/widget/ScreenView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v1}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v2, v1

    mul-float/2addr v2, v0

    int-to-float p1, p1

    div-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    const/4 p2, 0x2

    if-eq v3, p2, :cond_0

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    invoke-static {v3, v2}, Lmiui/widget/ScreenView;->access$1200(Lmiui/widget/ScreenView;I)V

    iget-object p0, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    div-float/2addr v1, p1

    div-int/2addr v2, p2

    int-to-float p1, v2

    sub-float/2addr v1, p1

    float-to-int p1, v1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiui/widget/ScreenView;->scrollTo(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {p1, v2}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    iget-object p0, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-static {p0}, Lmiui/widget/ScreenView;->access$1300(Lmiui/widget/ScreenView;)I

    move-result p2

    invoke-static {p0, p1, p2}, Lmiui/widget/ScreenView;->access$1400(Lmiui/widget/ScreenView;II)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    invoke-static {p1}, Lmiui/widget/ScreenView;->access$1000(Lmiui/widget/ScreenView;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    invoke-static {p1}, Lmiui/widget/ScreenView;->access$1000(Lmiui/widget/ScreenView;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    iget-object p0, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    invoke-static {p0, p2, v4}, Lmiui/widget/ScreenView;->access$1100(Lmiui/widget/ScreenView;Landroid/view/MotionEvent;I)V

    :goto_0
    return v5
.end method
