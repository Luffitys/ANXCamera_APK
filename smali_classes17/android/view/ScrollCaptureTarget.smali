.class public final Landroid/view/ScrollCaptureTarget;
.super Ljava/lang/Object;
.source "ScrollCaptureTarget.java"


# instance fields
.field private final mCallback:Landroid/view/ScrollCaptureCallback;

.field private final mContainingView:Landroid/view/View;

.field private final mHint:I

.field private final mLocalVisibleRect:Landroid/graphics/Rect;

.field private final mMatrixViewLocalToWindow:Landroid/graphics/Matrix;

.field private final mPositionInWindow:Landroid/graphics/Point;

.field private mScrollBounds:Landroid/graphics/Rect;

.field private final mTmpFloatArr:[F

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/ScrollCaptureCallback;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/ScrollCaptureTarget;->mTmpFloatArr:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureTarget;->mMatrixViewLocalToWindow:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureTarget;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/view/ScrollCaptureTarget;->mContainingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScrollCaptureHint()I

    move-result v0

    iput v0, p0, Landroid/view/ScrollCaptureTarget;->mHint:I

    iput-object p4, p0, Landroid/view/ScrollCaptureTarget;->mCallback:Landroid/view/ScrollCaptureCallback;

    iput-object p2, p0, Landroid/view/ScrollCaptureTarget;->mLocalVisibleRect:Landroid/graphics/Rect;

    iput-object p3, p0, Landroid/view/ScrollCaptureTarget;->mPositionInWindow:Landroid/graphics/Point;

    return-void
.end method

.method private static roundIntoPoint(Landroid/graphics/Point;[F)V
    .registers 3

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    const/4 v0, 0x1

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private static zero([F)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    const/4 v0, 0x1

    aput v1, p0, v0

    return-void
.end method


# virtual methods
.method public getCallback()Landroid/view/ScrollCaptureCallback;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mCallback:Landroid/view/ScrollCaptureCallback;

    return-object v0
.end method

.method public getContainingView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mContainingView:Landroid/view/View;

    return-object v0
.end method

.method public getHint()I
    .registers 2

    iget v0, p0, Landroid/view/ScrollCaptureTarget;->mHint:I

    return v0
.end method

.method public getLocalVisibleRect()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mLocalVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPositionInWindow()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mPositionInWindow:Landroid/graphics/Point;

    return-object v0
.end method

.method public getScrollBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mScrollBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setScrollBounds(Landroid/graphics/Rect;)V
    .registers 6

    invoke-static {p1}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ScrollCaptureTarget;->mScrollBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mContainingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/view/ScrollCaptureTarget;->mContainingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mScrollBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_21
    return-void
.end method

.method public updatePositionInWindow()V
    .registers 3

    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mMatrixViewLocalToWindow:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mContainingView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mMatrixViewLocalToWindow:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mTmpFloatArr:[F

    invoke-static {v0}, Landroid/view/ScrollCaptureTarget;->zero([F)V

    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mMatrixViewLocalToWindow:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mTmpFloatArr:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mPositionInWindow:Landroid/graphics/Point;

    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mTmpFloatArr:[F

    invoke-static {v0, v1}, Landroid/view/ScrollCaptureTarget;->roundIntoPoint(Landroid/graphics/Point;[F)V

    return-void
.end method
