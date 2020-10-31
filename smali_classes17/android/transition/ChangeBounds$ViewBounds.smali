.class Landroid/transition/ChangeBounds$ViewBounds;
.super Ljava/lang/Object;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewBounds"
.end annotation


# instance fields
.field private mBottom:I

.field private mBottomRightCalls:I

.field private mLeft:I

.field private mRight:I

.field private mTop:I

.field private mTopLeftCalls:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    return-void
.end method

.method private setLeftTopRightBottom()V
    .registers 6

    iget-object v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/ChangeBounds$ViewBounds;->mLeft:I

    iget v2, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTop:I

    iget v3, p0, Landroid/transition/ChangeBounds$ViewBounds;->mRight:I

    iget v4, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    return-void
.end method


# virtual methods
.method public setBottomRight(Landroid/graphics/PointF;)V
    .registers 4

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mRight:I

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottom:I

    iget v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    iget v1, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    if-ne v1, v0, :cond_1d

    invoke-direct {p0}, Landroid/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    :cond_1d
    return-void
.end method

.method public setTopLeft(Landroid/graphics/PointF;)V
    .registers 4

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mLeft:I

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTop:I

    iget v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iget v1, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    if-ne v0, v1, :cond_1d

    invoke-direct {p0}, Landroid/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    :cond_1d
    return-void
.end method
