.class public Lmiui/maml/MamlDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MamlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/MamlDrawable$MamlDrawableState;
    }
.end annotation


# static fields
.field private static sLayerBadgeDrawableBmpRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBadgeLocation:Landroid/graphics/Rect;

.field protected mColorFilter:Landroid/graphics/ColorFilter;

.field protected mHeight:I

.field protected mIntrinsicHeight:I

.field protected mIntrinsicWidth:I

.field protected mInvalidateSelf:Ljava/lang/Runnable;

.field protected mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

.field protected mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lmiui/maml/MamlDrawable$1;

    invoke-direct {v0, p0}, Lmiui/maml/MamlDrawable$1;-><init>(Lmiui/maml/MamlDrawable;)V

    iput-object v0, p0, Lmiui/maml/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 1

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-virtual {p0, p1}, Lmiui/maml/MamlDrawable;->drawIcon(Landroid/graphics/Canvas;)V

    :try_start_3
    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4e

    :cond_36
    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    iget v3, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_44} :catch_4a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_44} :catch_45

    goto :goto_4e

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_4f

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4e
    :goto_4e
    nop

    :goto_4f
    return-void
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/maml/MamlDrawable;->cleanUp()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget v0, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget v0, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p2, :cond_44

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_1c

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_1c

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    if-gt v1, v2, :cond_1c

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    if-gt v1, v2, :cond_1c

    goto :goto_44

    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Badge location "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not in badged drawable bounds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    iget v5, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    invoke-direct {v3, v0, v0, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_44
    :goto_44
    instance-of v1, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_89

    const/4 v1, 0x0

    sget-object v2, Lmiui/maml/MamlDrawable;->sLayerBadgeDrawableBmpRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_54

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/Drawable;

    :cond_54
    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_89

    :cond_5b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p1, v0, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p1, v0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lmiui/maml/MamlDrawable;->sLayerBadgeDrawableBmpRef:Ljava/lang/ref/WeakReference;

    :cond_89
    :goto_89
    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_92

    if-eqz p1, :cond_92

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_92
    iput-object p1, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    iput-object p1, v0, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    iput-object p2, v0, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    return-void
.end method

.method public setBounds(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int v0, p3, p1

    iput v0, p0, Lmiui/maml/MamlDrawable;->mWidth:I

    sub-int v0, p4, p2

    iput v0, p0, Lmiui/maml/MamlDrawable;->mHeight:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/MamlDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setIntrinsicSize(II)V
    .registers 3

    iput p1, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    iput p2, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    return-void
.end method
