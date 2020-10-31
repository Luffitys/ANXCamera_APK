.class public Landroid/view/CutoutSpecification$Parser;
.super Ljava/lang/Object;
.source "CutoutSpecification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/CutoutSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private mBindBottomCutout:Z

.field private mBindLeftCutout:Z

.field private mBindRightCutout:Z

.field private mBottomBound:Landroid/graphics/Rect;

.field private final mDensity:F

.field private final mDisplayHeight:I

.field private final mDisplayWidth:I

.field private mInDp:Z

.field private mInsets:Landroid/graphics/Insets;

.field private mIsCloserToStartSide:Z

.field private final mIsShortEdgeOnTop:Z

.field private mIsTouchShortEdgeEnd:Z

.field private mIsTouchShortEdgeStart:Z

.field private mLeftBound:Landroid/graphics/Rect;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mPath:Landroid/graphics/Path;

.field private mPositionFromBottom:Z

.field private mPositionFromCenterVertical:Z

.field private mPositionFromLeft:Z

.field private mPositionFromRight:Z

.field private mRightBound:Landroid/graphics/Rect;

.field private mSafeInsetBottom:I

.field private mSafeInsetLeft:I

.field private mSafeInsetRight:I

.field private mSafeInsetTop:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field private mTopBound:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(FII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    iput p1, p0, Landroid/view/CutoutSpecification$Parser;->mDensity:F

    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayWidth:I

    iput p3, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayHeight:I

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayWidth:I

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayHeight:I

    if-ge v1, v2, :cond_34

    const/4 v0, 0x1

    :cond_34
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    return-void
.end method

.method static synthetic access$000(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Path;
    .registers 2

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Insets;
    .registers 2

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method private computeBoundsRectAndAddToRegion(Landroid/graphics/Path;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private computeSafeInsets(ILandroid/graphics/Rect;)I
    .registers 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_10

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayWidth:I

    if-ge v0, v1, :cond_10

    iget v0, p2, Landroid/graphics/Rect;->right:I

    return v0

    :cond_10
    const/16 v0, 0x30

    if-ne p1, v0, :cond_21

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_21

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayHeight:I

    if-ge v0, v1, :cond_21

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    return v0

    :cond_21
    const/4 v0, 0x5

    if-ne p1, v0, :cond_32

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_32

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayWidth:I

    if-ge v0, v1, :cond_32

    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    return v1

    :cond_32
    const/16 v0, 0x50

    if-ne p1, v0, :cond_44

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_44

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayHeight:I

    if-ge v0, v1, :cond_44

    iget v0, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1

    :cond_44
    const/4 v0, 0x0

    return v0
.end method

.method private getSafeInset(I)I
    .registers 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetLeft:I

    return v0

    :cond_6
    const/16 v0, 0x30

    if-ne p1, v0, :cond_d

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetTop:I

    return v0

    :cond_d
    const/4 v0, 0x5

    if-ne p1, v0, :cond_13

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetRight:I

    return v0

    :cond_13
    const/16 v0, 0x50

    if-ne p1, v0, :cond_1a

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetBottom:I

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 8

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    # invokes: Landroid/view/CutoutSpecification;->decideWhichEdge(ZZZ)I
    invoke-static {v1, v0, p1}, Landroid/view/CutoutSpecification;->access$600(ZZZ)I

    move-result v0

    goto :goto_32

    :cond_a
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    if-eqz v1, :cond_1a

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    const/4 v1, 0x0

    # invokes: Landroid/view/CutoutSpecification;->decideWhichEdge(ZZZ)I
    invoke-static {v0, v1, p1}, Landroid/view/CutoutSpecification;->access$600(ZZZ)I

    move-result v0

    goto :goto_32

    :cond_1a
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    if-nez v1, :cond_2a

    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    if-eqz v1, :cond_23

    goto :goto_2a

    :cond_23
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    # invokes: Landroid/view/CutoutSpecification;->decideWhichEdge(ZZZ)I
    invoke-static {v0, p2, p1}, Landroid/view/CutoutSpecification;->access$600(ZZZ)I

    move-result v0

    goto :goto_32

    :cond_2a
    :goto_2a
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    iget-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mIsCloserToStartSide:Z

    # invokes: Landroid/view/CutoutSpecification;->decideWhichEdge(ZZZ)I
    invoke-static {v1, v0, v2}, Landroid/view/CutoutSpecification;->access$600(ZZZ)I

    move-result v0

    :goto_32
    invoke-direct {p0, v0}, Landroid/view/CutoutSpecification$Parser;->getSafeInset(I)I

    move-result v1

    invoke-direct {p0, v0, p3}, Landroid/view/CutoutSpecification$Parser;->computeSafeInsets(ILandroid/graphics/Rect;)I

    move-result v2

    if-ge v1, v2, :cond_3f

    invoke-direct {p0, v0, v2}, Landroid/view/CutoutSpecification$Parser;->setSafeInset(II)V

    :cond_3f
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v3
.end method

.method private parseSpecWithoutDp(Ljava/lang/String;)V
    .registers 10

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    const/16 v4, 0x40

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move v2, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c7

    if-nez v1, :cond_1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    :cond_1d
    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v4, "@left"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_36

    iget-boolean v5, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    if-nez v5, :cond_2f

    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    :cond_2f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_c4

    :cond_36
    const-string v4, "@right"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4b

    iget-boolean v5, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    if-nez v5, :cond_44

    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    :cond_44
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_c4

    :cond_4b
    const-string v4, "@bottom"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0, v1}, Landroid/view/CutoutSpecification$Parser;->resetStatus(Ljava/lang/StringBuilder;)V

    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    goto :goto_c4

    :cond_67
    const-string v4, "@center_vertical"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0, v1}, Landroid/view/CutoutSpecification$Parser;->resetStatus(Ljava/lang/StringBuilder;)V

    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    goto :goto_c4

    :cond_81
    const-string v4, "@cutout"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0, v1}, Landroid/view/CutoutSpecification$Parser;->resetStatus(Ljava/lang/StringBuilder;)V

    goto :goto_c4

    :cond_99
    const-string v4, "@bind_left_cutout"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_ae

    iput-boolean v7, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    iput-boolean v7, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_c4

    :cond_ae
    const-string v4, "@bind_right_cutout"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c2

    iput-boolean v7, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    iput-boolean v7, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_c4

    :cond_c2
    add-int/lit8 v2, v2, 0x1

    :goto_c4
    move v3, v2

    goto/16 :goto_7

    :cond_c7
    if-nez v1, :cond_cd

    invoke-direct {p0, v0, p1}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    goto :goto_db

    :cond_cd
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, p1, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    :goto_db
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return-void
.end method

.method private parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V
    .registers 8

    invoke-static {p2}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    # getter for: Landroid/view/CutoutSpecification;->MINIMAL_ACCEPTABLE_PATH_LENGTH:I
    invoke-static {}, Landroid/view/CutoutSpecification;->access$700()I

    move-result v1

    if-ge v0, v1, :cond_12

    const-string v0, "CutoutSpecification"

    const-string v1, "According to SVG definition, it shouldn\'t happen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    invoke-direct {p0}, Landroid/view/CutoutSpecification$Parser;->translateMatrix()V

    invoke-static {p2}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/CutoutSpecification$Parser;->computeBoundsRectAndAddToRegion(Landroid/graphics/Path;Landroid/graphics/Region;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    return-void

    :cond_2f
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5e

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_3d

    move v1, v2

    goto :goto_3e

    :cond_3d
    move v1, v3

    :goto_3e
    iput-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayHeight:I

    if-lt v1, v4, :cond_4a

    move v1, v2

    goto :goto_4b

    :cond_4a
    move v1, v3

    :goto_4b
    iput-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayHeight:I

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_5a

    goto :goto_5b

    :cond_5a
    move v2, v3

    :goto_5b
    iput-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mIsCloserToStartSide:Z

    goto :goto_86

    :cond_5e
    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_66

    move v1, v2

    goto :goto_67

    :cond_66
    move v1, v3

    :goto_67
    iput-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayWidth:I

    if-lt v1, v4, :cond_73

    move v1, v2

    goto :goto_74

    :cond_73
    move v1, v3

    :goto_74
    iput-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayWidth:I

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_83

    goto :goto_84

    :cond_83
    move v2, v3

    :goto_84
    iput-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mIsCloserToStartSide:Z

    :goto_86
    invoke-direct {p0, v0}, Landroid/view/CutoutSpecification$Parser;->setEdgeCutout(Landroid/graphics/Path;)V

    return-void
.end method

.method private resetStatus(Ljava/lang/StringBuilder;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    return-void
.end method

.method private setEdgeCutout(Landroid/graphics/Path;)V
    .registers 5

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;

    if-nez v0, :cond_16

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    xor-int/2addr v0, v2

    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, v2}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;

    goto :goto_57

    :cond_16
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    xor-int/2addr v0, v2

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0, v1}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;

    goto :goto_57

    :cond_2a
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, v2}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;

    goto :goto_57

    :cond_3d
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    if-nez v0, :cond_62

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    if-nez v0, :cond_62

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    if-nez v0, :cond_62

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;

    if-nez v0, :cond_62

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0, v1}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;

    :goto_57
    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_5f

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_61

    :cond_5f
    iput-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    :goto_61
    return-void

    :cond_62
    return-void
.end method

.method private setSafeInset(II)V
    .registers 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetLeft:I

    goto :goto_19

    :cond_6
    const/16 v0, 0x30

    if-ne p1, v0, :cond_d

    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetTop:I

    goto :goto_19

    :cond_d
    const/4 v0, 0x5

    if-ne p1, v0, :cond_13

    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetRight:I

    goto :goto_19

    :cond_13
    const/16 v0, 0x50

    if-ne p1, v0, :cond_19

    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetBottom:I

    :cond_19
    :goto_19
    return-void
.end method

.method private translateMatrix()V
    .registers 5

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayWidth:I

    int-to-float v0, v0

    goto :goto_14

    :cond_a
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_14

    :cond_10
    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    :goto_14
    iget-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    if-eqz v2, :cond_1c

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayHeight:I

    int-to-float v1, v1

    goto :goto_27

    :cond_1c
    iget-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    if-eqz v2, :cond_26

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mDisplayHeight:I

    int-to-float v2, v2

    div-float v1, v2, v1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mInDp:Z

    if-eqz v2, :cond_37

    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Landroid/view/CutoutSpecification$Parser;->mDensity:F

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_37
    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Landroid/view/CutoutSpecification;
    .registers 8

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "@dp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_f

    const/4 v4, 0x1

    goto :goto_10

    :cond_f
    move v4, v2

    :goto_10
    iput-boolean v4, p0, Landroid/view/CutoutSpecification$Parser;->mInDp:Z

    if-eq v1, v3, :cond_31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_31
    move-object v0, p1

    :goto_32
    invoke-direct {p0, v0}, Landroid/view/CutoutSpecification$Parser;->parseSpecWithoutDp(Ljava/lang/String;)V

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetLeft:I

    iget v3, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetTop:I

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetRight:I

    iget v5, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetBottom:I

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v2

    iput-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mInsets:Landroid/graphics/Insets;

    new-instance v2, Landroid/view/CutoutSpecification;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/view/CutoutSpecification;-><init>(Landroid/view/CutoutSpecification$Parser;Landroid/view/CutoutSpecification$1;)V

    return-object v2
.end method
