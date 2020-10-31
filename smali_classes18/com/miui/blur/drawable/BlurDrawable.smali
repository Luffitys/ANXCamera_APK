.class public Lcom/miui/blur/drawable/BlurDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BlurDrawable.java"


# static fields
.field public static final MIUI_BLUR_DEFAULT_DARK:I = 0x6

.field public static final MIUI_BLUR_DEFAULT_LIGHT:I = 0x2

.field public static final MIUI_BLUR_EXTRA_THIN_DARK:I = 0x4

.field public static final MIUI_BLUR_EXTRA_THIN_LIGHT:I = 0x0

.field public static final MIUI_BLUR_HEAVY_DARK:I = 0x7

.field public static final MIUI_BLUR_HEAVY_LIGHT:I = 0x3

.field public static final MIUI_BLUR_THIN_DARK:I = 0x5

.field public static final MIUI_BLUR_THIN_LIGHT:I = 0x1

.field public static final MIUI_FULL_SCREEN_BLUR_DEFAULT_DARK:I = 0xb

.field public static final MIUI_FULL_SCREEN_BLUR_DEFAULT_LIGHT:I = 0x9

.field public static final MIUI_FULL_SCREEN_BLUR_THIN_DARK:I = 0xa

.field public static final MIUI_FULL_SCREEN_BLUR_THIN_LIGHT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "BlurDrawable"

.field private static final mainThreadHandler:Landroid/os/Handler;


# instance fields
.field private mAlpha:I

.field private mBlurEnabled:Z

.field private mBlurHeight:I

.field private mBlurWidth:I

.field private mFunctor:J

.field private mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/blur/drawable/BlurDrawable;->mainThreadHandler:Landroid/os/Handler;

    :try_start_b
    const-string v0, "miuiblur"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_19

    :catchall_11
    move-exception v0

    const-string v1, "BlurDrawable"

    const-string v2, "Failed to load miuiblur library"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mBlurEnabled:Z

    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mBlurWidth:I

    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mBlurHeight:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mBlurWidth:I

    iget v1, p0, Lcom/miui/blur/drawable/BlurDrawable;->mBlurHeight:I

    invoke-static {v0, v1}, Lcom/miui/blur/drawable/BlurDrawable;->nCreateNativeFunctor(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->initMethod()V

    :cond_3c
    return-void
.end method

.method private drawBlurBack(Landroid/graphics/Canvas;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    goto :goto_1f

    :catchall_17
    move-exception v0

    const-string v1, "BlurDrawable"

    const-string v2, "canvas function [callDrawGLFunction()] error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void
.end method

.method private initMethod()V
    .registers 6

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_30

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "callDrawGLFunction2"

    if-le v0, v1, :cond_1d

    :try_start_a
    const-string v0, "android.graphics.RecordingCanvas"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/blur/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

    goto :goto_2f

    :cond_1d
    const-string v0, "android.view.DisplayListCanvas"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/blur/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2f} :catch_30

    :goto_2f
    goto :goto_38

    :catch_30
    move-exception v0

    const-string v1, "BlurDrawable"

    const-string v2, "canvas function [callDrawGLFunction()] error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_38
    return-void
.end method

.method private invalidateOnMainThread()V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateSelf()V

    goto :goto_1f

    :cond_15
    :goto_15
    sget-object v1, Lcom/miui/blur/drawable/BlurDrawable;->mainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/blur/drawable/BlurDrawable$1;

    invoke-direct {v2, p0}, Lcom/miui/blur/drawable/BlurDrawable$1;-><init>(Lcom/miui/blur/drawable/BlurDrawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1f
    return-void
.end method

.method public static native nAddMixColor(JII)V
.end method

.method public static native nClearMixColor(J)V
.end method

.method public static native nCreateNativeFunctor(II)J
.end method

.method public static native nDeleteNativeFunctor(J)J
.end method

.method public static native nEnableBlur(JZ)V
.end method

.method public static native nNeedUpdateBounds(JZ)V
.end method

.method public static native nSetAlpha(JF)V
.end method

.method public static native nSetBlurCornerRadii(J[F)V
.end method

.method public static native nSetBlurMode(JI)V
.end method

.method public static native nSetBlurRatio(JF)V
.end method

.method public static native nSetMixColor(JII)V
.end method


# virtual methods
.method public addMixColor(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    const/4 v2, 0x4

    invoke-static {v0, v1, p1, v2}, Lcom/miui/blur/drawable/BlurDrawable;->nAddMixColor(JII)V

    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_f
    return-void
.end method

.method public addMixColor(II)V
    .registers 5

    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p2, p1}, Lcom/miui/blur/drawable/BlurDrawable;->nAddMixColor(JII)V

    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_e
    return-void
.end method

.method public clearMixColor()V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1}, Lcom/miui/blur/drawable/BlurDrawable;->nClearMixColor(J)V

    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_e
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mBlurEnabled:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lcom/miui/blur/drawable/BlurDrawable;->drawBlurBack(Landroid/graphics/Canvas;)V

    goto :goto_1d

    :cond_14
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/blur/drawable/BlurDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1d
    return-void
.end method

.method public enableBlur(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean p1, p0, Lcom/miui/blur/drawable/BlurDrawable;->mBlurEnabled:Z

    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/drawable/BlurDrawable;->nEnableBlur(JZ)V

    :cond_d
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1}, Lcom/miui/blur/drawable/BlurDrawable;->nDeleteNativeFunctor(J)J

    :cond_b
    const-string v0, "BlurDrawable"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportBlur()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public needUpdateBounds(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/drawable/BlurDrawable;->nNeedUpdateBounds(JZ)V

    :cond_b
    return-void
.end method

.method public setAlpha(I)V
    .registers 6

    iput p1, p0, Lcom/miui/blur/drawable/BlurDrawable;->mAlpha:I

    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    int-to-float v2, p1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/blur/drawable/BlurDrawable;->nSetAlpha(JF)V

    return-void
.end method

.method public setBlurCornerRadii([F)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/drawable/BlurDrawable;->nSetBlurCornerRadii(J[F)V

    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_e
    return-void
.end method

.method public setBlurMode(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/drawable/BlurDrawable;->nSetBlurMode(JI)V

    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_e
    return-void
.end method

.method public setBlurRatio(F)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/drawable/BlurDrawable;->nSetBlurRatio(JF)V

    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_e
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4

    const-string v0, "BlurDrawable"

    const-string v1, "nothing in setColorFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMiuiBlurType(I)V
    .registers 9

    const v0, 0x3f666666    # 0.9f

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3ecccccd    # 0.4f

    const/16 v3, 0x13

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x12

    const/16 v6, 0x1d

    packed-switch p1, :pswitch_data_14a

    goto/16 :goto_149

    :pswitch_16
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    const-string v0, "#80a3a3a3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    const-string v0, "#66000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v4}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_149

    :pswitch_30
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    const-string v0, "#52b4b4b4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    const-string v0, "#26000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v4}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_149

    :pswitch_4a
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    const-string v0, "#85666666"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    const-string v0, "#66ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v4}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_149

    :pswitch_64
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    const-string v0, "#61424242"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    const-string v0, "#1effffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v4}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_149

    :pswitch_7e
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    const-string v0, "#7f5c5c5c"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    const-string v0, "#bf1f1f1f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v4}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_149

    :pswitch_98
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    const-string v1, "#75737373"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    const-string v1, "#8a262626"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v6, v1}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v0}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_149

    :pswitch_b2
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    const-string v0, "#618a8a8a"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    const-string v0, "#4d424242"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v1}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_149

    :pswitch_cc
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    const-string v0, "#4dadadad"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    const-string v0, "#33616161"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v2}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    goto :goto_149

    :pswitch_e5
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    const-string v0, "#a66b6b6b"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    const-string v0, "#ccf5f5f5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v4}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    goto :goto_149

    :pswitch_fe
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    const-string v1, "#8f606060"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v5, v1}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    const-string v1, "#a3f2f2f2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v6, v1}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v0}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    goto :goto_149

    :pswitch_117
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    const-string v0, "#84585858"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    const-string v0, "#40e3e3e3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v1}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    goto :goto_149

    :pswitch_130
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    const-string v0, "#7f4d4d4d"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    const-string v0, "#26d9d9d9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v2}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    nop

    :goto_149
    return-void

    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_130
        :pswitch_117
        :pswitch_fe
        :pswitch_e5
        :pswitch_cc
        :pswitch_b2
        :pswitch_98
        :pswitch_7e
        :pswitch_64
        :pswitch_4a
        :pswitch_30
        :pswitch_16
    .end packed-switch
.end method

.method public setMixColor(II)V
    .registers 5

    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p2, p1}, Lcom/miui/blur/drawable/BlurDrawable;->nSetMixColor(JII)V

    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_e
    return-void
.end method
