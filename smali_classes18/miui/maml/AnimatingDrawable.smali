.class public Lmiui/maml/AnimatingDrawable;
.super Lmiui/maml/MamlDrawable;
.source "AnimatingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;
    }
.end annotation


# static fields
.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final TAG:Ljava/lang/String; = "Maml.AnimatingDrawable"

.field public static final TIME_FANCY_CACHE:I


# instance fields
.field private mAnimIndex:I

.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFancyDrawable:Lmiui/maml/FancyDrawable;

.field private mLayerIndex:I

.field private final mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;

.field private mResourceManager:Lmiui/maml/ResourceManager;

.field private mUseFancyWhenStatic:Z

.field private mUseQuietWhenAnim:Z

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;)V
    .registers 16

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v9}, Lmiui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;I)V
    .registers 17

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lmiui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;II)V
    .registers 18

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lmiui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V
    .registers 12

    invoke-direct {p0}, Lmiui/maml/MamlDrawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmiui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lmiui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    iput-object p1, p0, Lmiui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lmiui/maml/AnimatingDrawable;->mResourceManager:Lmiui/maml/ResourceManager;

    iput-object p2, p0, Lmiui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lmiui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    iput-object p5, p0, Lmiui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    iput p6, p0, Lmiui/maml/AnimatingDrawable;->mLayerIndex:I

    iput p7, p0, Lmiui/maml/AnimatingDrawable;->mAnimIndex:I

    iput-boolean p8, p0, Lmiui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    iput-boolean p9, p0, Lmiui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    invoke-direct {p0}, Lmiui/maml/AnimatingDrawable;->init()V

    return-void
.end method

.method private init()V
    .registers 12

    new-instance v10, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/AnimatingDrawable;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v5, p0, Lmiui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    iget v6, p0, Lmiui/maml/AnimatingDrawable;->mLayerIndex:I

    iget v7, p0, Lmiui/maml/AnimatingDrawable;->mAnimIndex:I

    iget-boolean v8, p0, Lmiui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    iget-boolean v9, p0, Lmiui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    iput-object v10, p0, Lmiui/maml/AnimatingDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable;->mResourceManager:Lmiui/maml/ResourceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "den"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v4, v5}, Lmiui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v4, p0, Lmiui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "quietImage.png"

    invoke-virtual {v3, v4, v5}, Lmiui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8b

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lmiui/maml/AnimatingDrawable;->setIntrinsicSize(II)V

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_ad

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lmiui/maml/AnimatingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_ad

    :cond_8b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mQuietDrwable is null! package/class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Maml.AnimatingDrawable"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    :goto_ad
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    invoke-virtual {v1}, Lmiui/maml/FancyDrawable;->cleanUp()V

    :cond_c
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .registers 7

    const-string v0, "Maml.AnimatingDrawable"

    :try_start_2
    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Lmiui/maml/AnimatingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lmiui/maml/AnimatingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Lmiui/maml/AnimatingDrawable;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/AnimatingDrawable;->mIntrinsicWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lmiui/maml/AnimatingDrawable;->mHeight:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/maml/AnimatingDrawable;->mIntrinsicHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_43
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_36} :catch_37

    goto :goto_4e

    :catch_37
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    :catch_43
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    nop

    :goto_4f
    return-void
.end method

.method public getAnimIndex()I
    .registers 3

    iget v0, p0, Lmiui/maml/AnimatingDrawable;->mAnimIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lmiui/maml/AnimatingDrawable;->mLayerIndex:I

    return v0
.end method

.method public getFancyDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-virtual {p0}, Lmiui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getQuietDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStartDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lmiui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    invoke-virtual {v1}, Lmiui/maml/FancyDrawable;->getStartDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_12
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isOnlyFancyWork()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lmiui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    return v0
.end method

.method public isOnlyQuietWork()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lmiui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    return v0
.end method

.method public prepareFancyDrawable()V
    .registers 10

    iget-boolean v0, p0, Lmiui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    if-eqz v1, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lmiui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    iget v8, p0, Lmiui/maml/AnimatingDrawable;->mLayerIndex:I

    invoke-static/range {v2 .. v8}, Lmiui/maml/util/AppIconsHelper;->getFancyIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lmiui/maml/FancyDrawable;

    if-eqz v2, :cond_4d

    move-object v2, v1

    check-cast v2, Lmiui/maml/FancyDrawable;

    iput-object v2, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3e

    iget v2, p0, Lmiui/maml/AnimatingDrawable;->mIntrinsicHeight:I

    if-lez v2, :cond_33

    iget v2, p0, Lmiui/maml/AnimatingDrawable;->mIntrinsicWidth:I

    if-gtz v2, :cond_3e

    :cond_33
    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    iget v2, v2, Lmiui/maml/FancyDrawable;->mIntrinsicWidth:I

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    iget v3, v3, Lmiui/maml/FancyDrawable;->mIntrinsicHeight:I

    invoke-virtual {p0, v2, v3}, Lmiui/maml/AnimatingDrawable;->setIntrinsicSize(II)V

    :cond_3e
    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/FancyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public sendCommand(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    return-void
.end method

.method public setBounds(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lmiui/maml/MamlDrawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4

    invoke-super {p0, p1}, Lmiui/maml/MamlDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const-string v0, "Maml.AnimatingDrawable"

    const-string v1, "setColorFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_11
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1a
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    if-eqz v0, :cond_21

    invoke-virtual {v0, p1}, Lmiui/maml/FancyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_21
    return-void
.end method

.method public useFancyWhenStatic()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    return v0
.end method

.method public useQuietWhenAnim()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    return v0
.end method
