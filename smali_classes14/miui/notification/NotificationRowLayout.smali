.class public Lmiui/notification/NotificationRowLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationRowLayout.java"

# interfaces
.implements Lmiui/notification/SwipeHelper$Callback;


# static fields
.field private static final APPEAR_ANIM_LEN:I = 0xfa

.field private static final DEBUG:Z = false

.field private static final DISAPPEAR_ANIM_LEN:I = 0xfa

.field private static final SLOW_ANIMATIONS:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationRowLayout"


# instance fields
.field mAnimateBounds:Z

.field mAppearingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mDisappearingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mRealLayoutTransition:Landroid/animation/LayoutTransition;

.field mRemoveViews:Z

.field private mSwipeHelper:Lmiui/notification/SwipeHelper;

.field mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/notification/NotificationRowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/notification/NotificationRowLayout;->mAnimateBounds:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/notification/NotificationRowLayout;->mTmpRect:Landroid/graphics/Rect;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/notification/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/notification/NotificationRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    iput-boolean v0, p0, Lmiui/notification/NotificationRowLayout;->mRemoveViews:Z

    iput-object p1, p0, Lmiui/notification/NotificationRowLayout;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v1, p0, Lmiui/notification/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v0}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationRowLayout;->setOrientation(I)V

    invoke-virtual {p0}, Lmiui/notification/NotificationRowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lmiui/notification/NotificationRowLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    int-to-float v1, v1

    new-instance v2, Lmiui/notification/SwipeHelper;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0, v1}, Lmiui/notification/SwipeHelper;-><init>(ILmiui/notification/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    return-void
.end method

.method private logLayoutTransition()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/notification/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "is "

    goto :goto_17

    :cond_15
    const-string v1, "is not "

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "in transition and animations "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/notification/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "are "

    goto :goto_2c

    :cond_2a
    const-string v1, "are not "

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "running."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationRowLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .registers 5

    sget v0, Lcom/miui/system/internal/R$id;->veto:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public dismissRowAnimated(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/notification/NotificationRowLayout;->dismissRowAnimated(Landroid/view/View;I)V

    return-void
.end method

.method public dismissRowAnimated(Landroid/view/View;I)V
    .registers 5

    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Lmiui/notification/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    return-void
.end method

.method public getChildAtPosition(FF)Landroid/view/View;
    .registers 9

    invoke-virtual {p0}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_28

    invoke-virtual {p0, v2}, Lmiui/notification/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_15

    goto :goto_25

    :cond_15
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_25

    int-to-float v4, v1

    cmpg-float v4, p2, v4

    if-gez v4, :cond_25

    return-object v3

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_28
    const/4 v3, 0x0

    return-object v3
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/notification/NotificationRowLayout;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildAtRawPosition(FF)Landroid/view/View;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationRowLayout;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-virtual {p0, v1, v2}, Lmiui/notification/NotificationRowLayout;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .registers 2

    return-object p1
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationRowLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .registers 5

    sget v0, Lcom/miui/system/internal/R$id;->veto:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_17

    iget-boolean v1, p0, Lmiui/notification/NotificationRowLayout;->mRemoveViews:Z

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_17
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lmiui/notification/NotificationRowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    invoke-virtual {v1, v0}, Lmiui/notification/SwipeHelper;->setDensityScale(F)V

    iget-object v1, p0, Lmiui/notification/NotificationRowLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    invoke-virtual {v2, v1}, Lmiui/notification/SwipeHelper;->setPagingTouchSlop(F)V

    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    invoke-virtual {v0, p1}, Lmiui/notification/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    invoke-virtual {v0, p1}, Lmiui/notification/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_a

    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    invoke-virtual {v0}, Lmiui/notification/SwipeHelper;->removeLongPressCallback()V

    :cond_a
    return-void
.end method

.method public setAnimateBounds(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/notification/NotificationRowLayout;->mAnimateBounds:Z

    return-void
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationRowLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1e

    :cond_8
    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationRowLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :goto_1e
    return-void
.end method

.method public setLongPressListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/notification/NotificationRowLayout;->mSwipeHelper:Lmiui/notification/SwipeHelper;

    invoke-virtual {v0, p1}, Lmiui/notification/SwipeHelper;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setViewRemoval(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/notification/NotificationRowLayout;->mRemoveViews:Z

    return-void
.end method
