.class public Landroid/graphics/drawable/PaintDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "PaintDrawable.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z
    .registers 21

    move-object/from16 v0, p0

    const-string v1, "corners"

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    sget-object v1, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v7, v6

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/4 v11, 0x3

    invoke-virtual {v1, v11, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    const/4 v13, 0x4

    invoke-virtual {v1, v13, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    if-ne v8, v6, :cond_3b

    if-ne v10, v6, :cond_3b

    if-ne v12, v6, :cond_3b

    if-eq v14, v6, :cond_5e

    :cond_3b
    const/16 v15, 0x8

    new-array v15, v15, [F

    int-to-float v13, v8

    aput v13, v15, v5

    int-to-float v5, v8

    aput v5, v15, v7

    int-to-float v5, v10

    aput v5, v15, v9

    int-to-float v5, v10

    aput v5, v15, v11

    int-to-float v5, v12

    const/4 v9, 0x4

    aput v5, v15, v9

    const/4 v5, 0x5

    int-to-float v9, v12

    aput v9, v15, v5

    const/4 v5, 0x6

    int-to-float v9, v14

    aput v9, v15, v5

    const/4 v5, 0x7

    int-to-float v9, v14

    aput v9, v15, v5

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    :cond_5e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v7

    :cond_62
    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-super/range {p0 .. p4}, Landroid/graphics/drawable/ShapeDrawable;->inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z

    move-result v1

    return v1
.end method

.method public setCornerRadii([F)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_d

    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_15

    :cond_d
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, p1, v0, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    :cond_15
    :goto_15
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerRadius(F)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_12

    const/16 v1, 0x8

    new-array v0, v1, [F

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_12

    aput p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_12
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    return-void
.end method
