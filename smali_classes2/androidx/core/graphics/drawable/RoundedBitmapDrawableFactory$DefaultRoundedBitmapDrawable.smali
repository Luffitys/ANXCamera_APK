.class Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;
.super Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
.source ""


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Landroidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public hasMipMap()Z
    .locals 0

    iget-object p0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat;->hasMipMap(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setMipMap(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/core/graphics/BitmapCompat;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
