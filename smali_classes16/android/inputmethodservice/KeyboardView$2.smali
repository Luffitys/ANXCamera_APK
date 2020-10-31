.class Landroid/inputmethodservice/KeyboardView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/KeyboardView;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z
    invoke-static {v1}, Landroid/inputmethodservice/KeyboardView;->access$500(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    :cond_c
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v6}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v7}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    invoke-static {v8}, Landroid/inputmethodservice/KeyboardView;->access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(I)V

    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    invoke-static {v8}, Landroid/inputmethodservice/KeyboardView;->access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    move-result-object v8

    invoke-virtual {v8}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->getXVelocity()F

    move-result v8

    iget-object v9, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    invoke-static {v9}, Landroid/inputmethodservice/KeyboardView;->access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    move-result-object v9

    invoke-virtual {v9}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->getYVelocity()F

    move-result v9

    const/4 v10, 0x0

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I
    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, p3, v11

    const/high16 v12, 0x40800000    # 4.0f

    const/4 v13, 0x1

    if-lez v11, :cond_84

    cmpg-float v11, v3, v1

    if-gez v11, :cond_84

    int-to-float v11, v6

    cmpl-float v11, v4, v11

    if-lez v11, :cond_84

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_7e

    div-float v11, p3, v12

    cmpg-float v11, v8, v11

    if-gez v11, :cond_7e

    const/4 v10, 0x1

    goto/16 :goto_10a

    :cond_7e
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeRight()V

    return v13

    :cond_84
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I
    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    cmpg-float v11, p3, v11

    if-gez v11, :cond_b0

    cmpg-float v11, v3, v1

    if-gez v11, :cond_b0

    neg-int v11, v6

    int-to-float v11, v11

    cmpg-float v11, v4, v11

    if-gez v11, :cond_b0

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_aa

    div-float v11, p3, v12

    cmpl-float v11, v8, v11

    if-lez v11, :cond_aa

    const/4 v10, 0x1

    goto :goto_10a

    :cond_aa
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeLeft()V

    return v13

    :cond_b0
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I
    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    cmpg-float v11, p4, v11

    if-gez v11, :cond_dc

    cmpg-float v11, v1, v3

    if-gez v11, :cond_dc

    neg-int v11, v7

    int-to-float v11, v11

    cmpg-float v11, v5, v11

    if-gez v11, :cond_dc

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_d6

    div-float v11, p4, v12

    cmpl-float v11, v9, v11

    if-lez v11, :cond_d6

    const/4 v10, 0x1

    goto :goto_10a

    :cond_d6
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeUp()V

    return v13

    :cond_dc
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I
    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, p4, v11

    if-lez v11, :cond_10a

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v3, v11

    cmpg-float v11, v1, v11

    if-gez v11, :cond_10a

    int-to-float v11, v7

    cmpl-float v11, v5, v11

    if-lez v11, :cond_10a

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_104

    div-float v11, p4, v12

    cmpg-float v11, v9, v11

    if-gez v11, :cond_104

    const/4 v10, 0x1

    goto :goto_10a

    :cond_104
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeDown()V

    return v13

    :cond_10a
    :goto_10a
    if-eqz v10, :cond_125

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mDownKey:I
    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$900(Landroid/inputmethodservice/KeyboardView;)I

    move-result v12

    iget-object v13, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mStartX:I
    invoke-static {v13}, Landroid/inputmethodservice/KeyboardView;->access$1000(Landroid/inputmethodservice/KeyboardView;)I

    move-result v13

    iget-object v14, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mStartY:I
    invoke-static {v14}, Landroid/inputmethodservice/KeyboardView;->access$1100(Landroid/inputmethodservice/KeyboardView;)I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v15

    # invokes: Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V
    invoke-static/range {v11 .. v16}, Landroid/inputmethodservice/KeyboardView;->access$1200(Landroid/inputmethodservice/KeyboardView;IIIJ)V

    :cond_125
    return v2
.end method
