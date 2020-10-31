.class public Lmiui/smooth/SmoothContainerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SmoothContainerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/smooth/SmoothContainerDrawable$ContainerState;,
        Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;
    }
.end annotation


# static fields
.field private static final XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

.field private mHelper:Lmiui/smooth/internal/SmoothDrawHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lmiui/smooth/SmoothContainerDrawable;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-direct {v0}, Lmiui/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-direct {v0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothContainerDrawable$ContainerState;)V
    .registers 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-direct {v0}, Lmiui/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-direct {v0, p3, p0, p1, p2}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;-><init>(Lmiui/smooth/SmoothContainerDrawable$ContainerState;Lmiui/smooth/SmoothContainerDrawable;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    iget v1, p3, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    invoke-virtual {v0, v1}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    iget v1, p3, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    invoke-virtual {v0, v1}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    iget-object v1, p3, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    invoke-virtual {v0, v1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    iget v1, p3, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    invoke-virtual {v0, v1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothContainerDrawable$ContainerState;Lmiui/smooth/SmoothContainerDrawable$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lmiui/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothContainerDrawable$ContainerState;)V

    return-void
.end method

.method private inflateInnerDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    if-eq v2, v1, :cond_72

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    if-ge v2, v0, :cond_17

    const/4 v2, 0x3

    if-eq v3, v2, :cond_72

    :cond_17
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1b

    goto :goto_6

    :cond_1b
    if-gt v4, v0, :cond_6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "child"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    goto :goto_6

    :cond_2a
    :goto_2a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v3, v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_33

    goto :goto_2a

    :cond_33
    if-ne v3, v2, :cond_57

    new-instance v1, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    invoke-direct {v1}, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_47

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_4d

    :cond_47
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    :goto_4d
    iget-object v2, v1, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v2, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iput-object v1, v2, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    return-void

    :cond_57
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": <child> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_72
    return-void
.end method

.method private obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 6

    if-nez p2, :cond_7

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_12
    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_a
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    iget-object v1, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iget-object v1, v1, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v1, v1, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lmiui/smooth/SmoothContainerDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    sget-object v2, Lmiui/smooth/SmoothContainerDrawable;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, p1, v2}, Lmiui/smooth/internal/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v1, p0, Lmiui/smooth/SmoothContainerDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v1, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAlpha()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getBoundsInner()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getChildDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    return-object v0
.end method

.method public getCornerRadii()[F
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_12

    :cond_8
    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    :goto_12
    return-object v0
.end method

.method public getCornerRadius()F
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iget v0, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    return v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getCornerRadius()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :cond_11
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getStrokeColor()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iget v0, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    return v0
.end method

.method public getStrokeWidth()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iget v0, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    sget-object v0, Lmiui/R$styleable;->MiuiSmoothContainerDrawable:[I

    invoke-direct {p0, p1, p4, p3, v0}, Lmiui/smooth/SmoothContainerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_radius:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lmiui/smooth/SmoothContainerDrawable;->setCornerRadius(F)V

    sget v3, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_topLeftRadius:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_34

    sget v3, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_topRightRadius:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_34

    sget v3, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_bottomRightRadius:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_34

    sget v3, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_bottomLeftRadius:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_6e

    :cond_34
    sget v3, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_topLeftRadius:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_topRightRadius:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_bottomRightRadius:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    sget v6, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_bottomLeftRadius:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    const/16 v7, 0x8

    new-array v7, v7, [F

    aput v3, v7, v2

    const/4 v8, 0x1

    aput v3, v7, v8

    const/4 v8, 0x2

    aput v4, v7, v8

    const/4 v8, 0x3

    aput v4, v7, v8

    const/4 v8, 0x4

    aput v5, v7, v8

    const/4 v8, 0x5

    aput v5, v7, v8

    const/4 v8, 0x6

    aput v6, v7, v8

    const/4 v8, 0x7

    aput v6, v7, v8

    invoke-virtual {p0, v7}, Lmiui/smooth/SmoothContainerDrawable;->setCornerRadii([F)V

    :cond_6e
    sget v3, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_miui_strokeWidth:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/smooth/SmoothContainerDrawable;->setStrokeWidth(I)V

    sget v4, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_miui_strokeColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lmiui/smooth/SmoothContainerDrawable;->setStrokeColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/smooth/SmoothContainerDrawable;->inflateInnerDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->jumpToCurrentState()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    invoke-virtual {p0, p2, p3, p4}, Lmiui/smooth/SmoothContainerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->setAlpha(I)V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->setChangingConfigurations(I)V

    return-void
.end method

.method public setChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    if-eqz v0, :cond_14

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    invoke-direct {v0}, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;-><init>()V

    iput-object p1, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iput-object v0, v1, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    :cond_14
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setCornerRadii([F)V
    .registers 4

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iput-object p1, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    if-nez p1, :cond_15

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    const/4 v1, 0x0

    iput v1, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, v1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    :cond_15
    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerRadius(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    const/4 p1, 0x0

    :cond_6
    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iput p1, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    const/4 v1, 0x0

    iput-object v1, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, v1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->setDither(Z)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->setFilterBitmap(Z)V

    return-void
.end method

.method public setStrokeColor(I)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iget v0, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    if-eq v0, p1, :cond_12

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iput p1, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->invalidateSelf()V

    :cond_12
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iget v0, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    if-eq v0, p1, :cond_12

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iput p1, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->invalidateSelf()V

    :cond_12
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0, p2}, Lmiui/smooth/SmoothContainerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
