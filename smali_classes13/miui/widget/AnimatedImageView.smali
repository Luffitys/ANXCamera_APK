.class public Lmiui/widget/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "AnimatedImageView.java"


# static fields
.field private static final AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

.field private static final DEFAULT_FRAMES_COUNT:I = 0x38

.field private static final DEFAULT_FRAMES_DURATION:I = 0x20


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsAnimating:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    move-result-object v0

    sput-object v0, Lmiui/widget/AnimatedImageView;->AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private start()V
    .registers 3

    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lmiui/widget/AnimatedImageView;->AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    iget-object v1, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->start(Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    return-void
.end method

.method private stop()V
    .registers 3

    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lmiui/widget/AnimatedImageView;->AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    iget-object v1, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->stop(Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    return-void
.end method

.method private updateAnimating()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lmiui/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lmiui/widget/AnimatedImageView;->mIsAnimating:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->start()V

    goto :goto_15

    :cond_12
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->stop()V

    :cond_15
    :goto_15
    return-void
.end method

.method private updateDrawable()V
    .registers 4

    invoke-virtual {p0}, Lmiui/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->stop()V

    :cond_9
    invoke-virtual {p0}, Lmiui/widget/AnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iput-object v0, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lmiui/widget/AnimatedImageView;->AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    const/16 v2, 0x38

    invoke-virtual {v1, v0, v2}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesCount(Landroid/graphics/drawable/Drawable;I)V

    sget-object v1, Lmiui/widget/AnimatedImageView;->AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesDuration(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_31

    :cond_2e
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    :goto_31
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method public setAnimating(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/AnimatedImageView;->mIsAnimating:Z

    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->updateDrawable()V

    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->updateDrawable()V

    return-void
.end method
