.class public Lcom/android/camera/customization/TintShapeView;
.super Landroid/view/View;
.source ""


# instance fields
.field private mPaintInner:Landroid/graphics/Paint;

.field private mPaintOutter:Landroid/graphics/Paint;

.field mShowOutter:Z

.field private outerRadius:I

.field private radius:I

.field private shape:Lcom/android/camera/customization/TintShapeView$TintShape;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/customization/TintShapeView;->mShowOutter:Z

    invoke-direct {p0}, Lcom/android/camera/customization/TintShapeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/customization/TintShapeView;->mShowOutter:Z

    invoke-direct {p0}, Lcom/android/camera/customization/TintShapeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/customization/TintShapeView;->mShowOutter:Z

    invoke-direct {p0}, Lcom/android/camera/customization/TintShapeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/customization/TintShapeView;->mShowOutter:Z

    invoke-direct {p0}, Lcom/android/camera/customization/TintShapeView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/customization/TintShapeView;->mPaintInner:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/customization/TintShapeView;->mPaintOutter:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/customization/TintShapeView;->mPaintInner:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/customization/TintShapeView;->mPaintInner:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/customization/TintShapeView;->mPaintOutter:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/customization/TintShapeView;->mPaintOutter:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/customization/TintShapeView;->mShowOutter:Z

    return-void
.end method


# virtual methods
.method public config(Lcom/android/camera/customization/TintShapeView$TintShape;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    iget-object v0, p0, Lcom/android/camera/customization/TintShapeView;->mPaintInner:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$000(Lcom/android/camera/customization/TintShapeView$TintShape;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/customization/TintShapeView;->mPaintOutter:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$100(Lcom/android/camera/customization/TintShapeView$TintShape;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p1}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$200(Lcom/android/camera/customization/TintShapeView$TintShape;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/customization/TintShapeView;->radius:I

    invoke-static {p1}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$300(Lcom/android/camera/customization/TintShapeView$TintShape;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/customization/TintShapeView;->outerRadius:I

    iget-object p0, p0, Lcom/android/camera/customization/TintShapeView;->mPaintOutter:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$400(Lcom/android/camera/customization/TintShapeView$TintShape;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v4}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$500(Lcom/android/camera/customization/TintShapeView$TintShape;)Lcom/android/camera/customization/TintShapeView$ShapeType;

    move-result-object v4

    sget-object v5, Lcom/android/camera/customization/TintShapeView$ShapeType;->CIRCLE:Lcom/android/camera/customization/TintShapeView$ShapeType;

    if-ne v4, v5, :cond_0

    int-to-float v4, v2

    int-to-float v5, v3

    iget v6, p0, Lcom/android/camera/customization/TintShapeView;->radius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/customization/TintShapeView;->mPaintInner:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v4}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$600(Lcom/android/camera/customization/TintShapeView$TintShape;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v5}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$400(Lcom/android/camera/customization/TintShapeView$TintShape;)F

    move-result v5

    add-float v7, v4, v5

    iget-object v4, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v4}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$600(Lcom/android/camera/customization/TintShapeView$TintShape;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v5}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$400(Lcom/android/camera/customization/TintShapeView$TintShape;)F

    move-result v5

    add-float v8, v4, v5

    iget-object v4, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v4}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$600(Lcom/android/camera/customization/TintShapeView$TintShape;)I

    move-result v4

    sub-int v4, v0, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v5}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$400(Lcom/android/camera/customization/TintShapeView$TintShape;)F

    move-result v5

    sub-float v9, v4, v5

    iget-object v4, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v4}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$600(Lcom/android/camera/customization/TintShapeView$TintShape;)I

    move-result v4

    sub-int v4, v1, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v5}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$400(Lcom/android/camera/customization/TintShapeView$TintShape;)F

    move-result v5

    sub-float v10, v4, v5

    iget-object v4, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v4}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$700(Lcom/android/camera/customization/TintShapeView$TintShape;)I

    move-result v4

    int-to-float v11, v4

    iget-object v4, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v4}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$700(Lcom/android/camera/customization/TintShapeView$TintShape;)I

    move-result v4

    int-to-float v12, v4

    iget-object v13, p0, Lcom/android/camera/customization/TintShapeView;->mPaintInner:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_0
    iget-boolean v4, p0, Lcom/android/camera/customization/TintShapeView;->mShowOutter:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v4}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$500(Lcom/android/camera/customization/TintShapeView$TintShape;)Lcom/android/camera/customization/TintShapeView$ShapeType;

    move-result-object v4

    sget-object v5, Lcom/android/camera/customization/TintShapeView$ShapeType;->CIRCLE:Lcom/android/camera/customization/TintShapeView$ShapeType;

    if-ne v4, v5, :cond_1

    int-to-float v0, v2

    int-to-float v1, v3

    iget v2, p0, Lcom/android/camera/customization/TintShapeView;->outerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/customization/TintShapeView;->mPaintOutter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v2}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$400(Lcom/android/camera/customization/TintShapeView$TintShape;)F

    move-result v4

    iget-object v2, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v2}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$400(Lcom/android/camera/customization/TintShapeView$TintShape;)F

    move-result v5

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v2}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$400(Lcom/android/camera/customization/TintShapeView$TintShape;)F

    move-result v2

    sub-float v6, v0, v2

    int-to-float v0, v1

    iget-object v1, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v1}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$400(Lcom/android/camera/customization/TintShapeView$TintShape;)F

    move-result v1

    sub-float v7, v0, v1

    iget-object v0, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v0}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$700(Lcom/android/camera/customization/TintShapeView$TintShape;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v1}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$600(Lcom/android/camera/customization/TintShapeView$TintShape;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v8, v0

    iget-object v0, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v0}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$700(Lcom/android/camera/customization/TintShapeView$TintShape;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/customization/TintShapeView;->shape:Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-static {v1}, Lcom/android/camera/customization/TintShapeView$TintShape;->access$600(Lcom/android/camera/customization/TintShapeView$TintShape;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v9, v0

    iget-object v10, p0, Lcom/android/camera/customization/TintShapeView;->mPaintOutter:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/customization/TintShapeView;->mPaintInner:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xc8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/customization/TintShapeView;->mPaintOutter:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setSelection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/customization/TintShapeView;->mShowOutter:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
