.class final Landroid/widget/SmartSelectSprite$RectangleList;
.super Landroid/graphics/drawable/shapes/Shape;
.source "SmartSelectSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SmartSelectSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RectangleList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SmartSelectSprite$RectangleList$DisplayType;
    }
.end annotation


# static fields
.field private static final PROPERTY_LEFT_BOUNDARY:Ljava/lang/String; = "leftBoundary"

.field private static final PROPERTY_RIGHT_BOUNDARY:Ljava/lang/String; = "rightBoundary"


# instance fields
.field private mDisplayType:I

.field private final mOutlinePolygonPath:Landroid/graphics/Path;

.field private final mRectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;"
        }
    .end annotation
.end field

.field private final mReversedRectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mDisplayType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mReversedRectangles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-static {p1}, Landroid/widget/SmartSelectSprite$RectangleList;->generateOutlinePolygonPath(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mOutlinePolygonPath:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/widget/SmartSelectSprite$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SmartSelectSprite$RectangleList;-><init>(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/SmartSelectSprite$RectangleList;)I
    .registers 2

    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RectangleList;->getTotalWidth()I

    move-result v0

    return v0
.end method

.method private drawPolygon(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mOutlinePolygonPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRectangles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 5

    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    invoke-virtual {v1, p1, p2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private static generateOutlinePolygonPath(Ljava/util/List;)Landroid/graphics/Path;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    # getter for: Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;
    invoke-static {v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$300(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)Landroid/graphics/RectF;

    move-result-object v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    sget-object v4, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_9

    :cond_29
    return-object v0
.end method

.method private getTotalWidth()I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    int-to-float v3, v0

    # invokes: Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getBoundingWidth()F
    invoke-static {v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$000(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_7

    :cond_1b
    return v0
.end method

.method private setLeftBoundary(F)V
    .registers 7

    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RectangleList;->getTotalWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mReversedRectangles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    # invokes: Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getBoundingWidth()F
    invoke-static {v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$000(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v3

    sub-float v3, v0, v3

    cmpg-float v4, p1, v3

    if-gez v4, :cond_26

    const/4 v4, 0x0

    # invokes: Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setStartBoundary(F)V
    invoke-static {v2, v4}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$100(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_3c

    :cond_26
    cmpl-float v4, p1, v0

    if-lez v4, :cond_32

    # invokes: Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getBoundingWidth()F
    invoke-static {v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$000(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v4

    # invokes: Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setStartBoundary(F)V
    invoke-static {v2, v4}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$100(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_3c

    :cond_32
    nop

    # invokes: Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getBoundingWidth()F
    invoke-static {v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$000(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v4, p1

    # invokes: Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setStartBoundary(F)V
    invoke-static {v2, v4}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$100(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    :goto_3c
    move v0, v3

    goto :goto_b

    :cond_3e
    return-void
.end method

.method private setRightBoundary(F)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    # invokes: Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getBoundingWidth()F
    invoke-static {v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$000(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v3

    add-float/2addr v3, v0

    cmpg-float v4, v3, p1

    if-gez v4, :cond_24

    # invokes: Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getBoundingWidth()F
    invoke-static {v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$000(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v4

    # invokes: Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setEndBoundary(F)V
    invoke-static {v2, v4}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$200(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_32

    :cond_24
    cmpl-float v4, v0, p1

    if-lez v4, :cond_2d

    const/4 v4, 0x0

    # invokes: Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setEndBoundary(F)V
    invoke-static {v2, v4}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$200(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_32

    :cond_2d
    sub-float v4, p1, v0

    # invokes: Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setEndBoundary(F)V
    invoke-static {v2, v4}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$200(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    :goto_32
    move v0, v3

    goto :goto_7

    :cond_34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 5

    iget v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mDisplayType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0, p1, p2}, Landroid/widget/SmartSelectSprite$RectangleList;->drawPolygon(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_c

    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/widget/SmartSelectSprite$RectangleList;->drawRectangles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :goto_c
    return-void
.end method

.method setDisplayType(I)V
    .registers 2

    iput p1, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mDisplayType:I

    return-void
.end method
