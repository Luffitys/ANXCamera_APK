.class public Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "SimpleIconFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SimpleIconFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedScaleDrawable"
.end annotation


# static fields
.field private static final LEGACY_ICON_SCALE:F = 0.46669f


# instance fields
.field private mScaleX:F

.field private mScaleY:F


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x3eeef1fe    # 0.46669f

    iput v0, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleX:F

    iput v0, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleY:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleX:F

    iget v2, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleY:F

    invoke-virtual {p0}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 4

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5

    return-void
.end method

.method public setScale(F)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3eeef1fe    # 0.46669f

    mul-float v3, p1, v2

    iput v3, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleX:F

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleY:F

    cmpl-float v2, v0, v1

    const/4 v4, 0x0

    if-lez v2, :cond_23

    cmpl-float v2, v1, v4

    if-lez v2, :cond_23

    div-float v2, v1, v0

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleX:F

    goto :goto_32

    :cond_23
    cmpl-float v2, v1, v0

    if-lez v2, :cond_32

    cmpl-float v2, v0, v4

    if-lez v2, :cond_32

    iget v2, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleY:F

    div-float v3, v0, v1

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleY:F

    :cond_32
    :goto_32
    return-void
.end method
