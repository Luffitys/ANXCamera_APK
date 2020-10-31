.class public Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PlaceholderDrawable.java"


# instance fields
.field public mHeight:I

.field private mPadding:Landroid/graphics/Rect;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mWidth:I

    iput v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mHeight:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_9

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    if-eq v2, v1, :cond_8f

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    if-ge v2, v0, :cond_17

    const/4 v2, 0x3

    if-eq v3, v2, :cond_8f

    :cond_17
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1b

    goto :goto_6

    :cond_1b
    if-le v4, v0, :cond_1e

    goto :goto_6

    :cond_1e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "size"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    sget-object v5, Lcom/miui/internal/R$styleable;->PlaceholderDrawableSize:[I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v6, Lcom/miui/internal/R$styleable;->PlaceholderDrawableSize_android_width:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mWidth:I

    sget v6, Lcom/miui/internal/R$styleable;->PlaceholderDrawableSize_android_height:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mHeight:I

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_8d

    :cond_45
    const-string v5, "padding"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    sget-object v5, Lcom/miui/internal/R$styleable;->PlaceholderDrawablePadding:[I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    sget v7, Lcom/miui/internal/R$styleable;->PlaceholderDrawablePadding_android_left:I

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    sget v9, Lcom/miui/internal/R$styleable;->PlaceholderDrawablePadding_android_top:I

    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    sget v10, Lcom/miui/internal/R$styleable;->PlaceholderDrawablePadding_android_right:I

    invoke-virtual {v5, v10, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    sget v11, Lcom/miui/internal/R$styleable;->PlaceholderDrawablePadding_android_bottom:I

    invoke-virtual {v5, v11, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    invoke-direct {v6, v7, v9, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_8d

    :cond_77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad element under <placeholder>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8d
    goto/16 :goto_6

    :cond_8f
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
