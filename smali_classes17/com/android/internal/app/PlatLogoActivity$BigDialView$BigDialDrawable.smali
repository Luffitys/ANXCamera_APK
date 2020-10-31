.class Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity$BigDialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigDialDrawable"
.end annotation


# instance fields
.field public final STEPS:I

.field final mEleven:Landroid/graphics/drawable/Drawable;

.field mElevenAnim:F

.field mElevenHideAnimator:Landroid/animation/ObjectAnimator;

.field mElevenShowAnimator:Landroid/animation/ObjectAnimator;

.field private mNightMode:Z

.field final mPaint:Landroid/graphics/Paint;

.field private mUnlockTries:I

.field private mValue:F

.field final synthetic this$1:Lcom/android/internal/app/PlatLogoActivity$BigDialView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity$BigDialView;)V
    .registers 8

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->this$1:Lcom/android/internal/app/PlatLogoActivity$BigDialView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->STEPS:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mUnlockTries:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mValue:F

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenAnim:F

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_80

    const-string v3, "elevenAnim"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenShowAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_88

    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mNightMode:Z

    invoke-virtual {p1}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x10804fc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mEleven:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenShowAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenHideAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_80
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_88
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method angleToValue(F)F
    .registers 5

    const v0, 0x439d8000    # 315.0f

    div-float v0, p1, v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->clamp(FFF)F

    move-result v0

    sub-float/2addr v2, v0

    return v2
.end method

.method clamp(FFF)F
    .registers 5

    cmpg-float v0, p1, p2

    if-gez v0, :cond_6

    move v0, p2

    goto :goto_d

    :cond_6
    cmpl-float v0, p1, p3

    if-lez v0, :cond_c

    move v0, p3

    goto :goto_d

    :cond_c
    move v0, p1

    :goto_d
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v7, v4

    div-float v15, v7, v6

    int-to-float v7, v3

    const/high16 v16, 0x40800000    # 4.0f

    div-float v14, v7, v16

    iget-boolean v7, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mNightMode:Z

    const v17, -0xf8cfbe

    const v18, -0x281002

    if-eqz v7, :cond_29

    move/from16 v7, v17

    goto :goto_2b

    :cond_29
    move/from16 v7, v18

    :goto_2b
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v7, 0x42340000    # 45.0f

    invoke-virtual {v1, v7, v5, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    sub-float v7, v15, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    add-float v9, v15, v14

    invoke-virtual {v1, v5, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-boolean v7, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mNightMode:Z

    if-eqz v7, :cond_4a

    const v7, 0x60000020

    goto :goto_4d

    :cond_4a
    const v7, 0x10073042

    :goto_4d
    move/from16 v19, v7

    iget-object v13, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/LinearGradient;

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v10, v7

    const v20, 0xffffff

    and-int v21, v19, v20

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v7, v12

    move v8, v5

    move v9, v15

    move v11, v15

    move-object v6, v12

    move/from16 v12, v19

    move-object/from16 v23, v2

    move-object v2, v13

    move/from16 v13, v21

    move/from16 v21, v4

    move v4, v14

    move-object/from16 v14, v22

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mPaint:Landroid/graphics/Paint;

    const v6, -0xc2237c

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v15, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v6, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mNightMode:Z

    if-eqz v6, :cond_a8

    move/from16 v6, v18

    goto :goto_aa

    :cond_a8
    move/from16 v6, v17

    :goto_aa
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v3

    const v6, 0x3f59999a    # 0.85f

    mul-float/2addr v2, v6

    const/4 v6, 0x0

    :goto_b3
    const/16 v7, 0xa

    if-ge v6, v7, :cond_dc

    int-to-float v7, v6

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0, v7}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->valueToAngle(F)F

    move-result v8

    neg-float v9, v8

    invoke-virtual {v1, v9, v5, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->getUserLevel()I

    move-result v9

    if-gt v6, v9, :cond_cf

    const/high16 v9, 0x41a00000    # 20.0f

    goto :goto_d1

    :cond_cf
    const/high16 v9, 0x40a00000    # 5.0f

    :goto_d1
    iget-object v10, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v15, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b3

    :cond_dc
    iget v6, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenAnim:F

    const/4 v7, 0x0

    cmpl-float v8, v6, v7

    if-lez v8, :cond_122

    const v8, -0x798cc

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v6, v11

    float-to-double v11, v6

    add-double/2addr v11, v9

    int-to-double v9, v3

    mul-double/2addr v11, v9

    const-wide/high16 v9, 0x402c000000000000L    # 14.0

    div-double/2addr v11, v9

    double-to-int v6, v11

    int-to-float v9, v6

    div-float v9, v9, v16

    add-float/2addr v9, v2

    iget-object v10, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mEleven:Landroid/graphics/drawable/Drawable;

    float-to-int v11, v9

    sub-int/2addr v11, v6

    float-to-int v12, v15

    sub-int/2addr v12, v6

    float-to-int v13, v9

    add-int/2addr v13, v6

    float-to-int v14, v15

    add-int/2addr v14, v6

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 v10, 0x43ff0000    # 510.0f

    iget v11, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenAnim:F

    mul-float/2addr v11, v10

    const/high16 v10, 0x437f0000    # 255.0f

    invoke-virtual {v0, v11, v7, v10}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->clamp(FFF)F

    move-result v7

    float-to-int v7, v7

    shl-int/lit8 v7, v7, 0x18

    or-int v7, v7, v20

    iget-object v10, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mEleven:Landroid/graphics/drawable/Drawable;

    const v11, -0x798cc

    and-int/2addr v11, v7

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v10, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mEleven:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_122
    iget v6, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mValue:F

    invoke-virtual {v0, v6}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->valueToAngle(F)F

    move-result v6

    neg-float v7, v6

    invoke-virtual {v1, v7, v5, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v7, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v7, 0x41400000    # 12.0f

    div-float v7, v5, v7

    int-to-float v8, v3

    sub-float/2addr v8, v4

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    iget-object v9, v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v15, v7, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getElevenAnim()F
    .registers 2

    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenAnim:F

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getUserLevel()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->getValue()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getValue()F
    .registers 2

    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mValue:F

    return v0
.end method

.method isLocked()Z
    .registers 2

    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mUnlockTries:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setElevenAnim(F)V
    .registers 3

    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenAnim:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenAnim:F

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->invalidateSelf()V

    :cond_b
    return-void
.end method

.method public setUnlockTries(I)V
    .registers 3

    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mUnlockTries:I

    if-eq v0, p1, :cond_10

    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mUnlockTries:I

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->getValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->setValue(F)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->invalidateSelf()V

    :cond_10
    return-void
.end method

.method public setUserLevel(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->getValue()F

    move-result v0

    int-to-float v1, p1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->setValue(F)V

    return-void
.end method

.method public setValue(F)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x3f666666    # 0.9f

    goto :goto_c

    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_c
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_12

    goto :goto_19

    :cond_12
    cmpl-float v1, p1, v0

    if-lez v1, :cond_18

    move v1, v0

    goto :goto_19

    :cond_18
    move v1, p1

    :goto_19
    iput v1, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mValue:F

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->invalidateSelf()V

    return-void
.end method

.method public touchAngle(F)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->getUserLevel()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->angleToValue(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->getValue()F

    move-result v2

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dba2e8c

    cmpg-float v2, v2, v3

    if-gez v2, :cond_89

    invoke-virtual {p0, v1}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->setValue(F)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_33

    const/16 v2, 0x9

    if-eq v0, v2, :cond_33

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->getUserLevel()I

    move-result v3

    if-ne v3, v2, :cond_33

    iget v2, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mUnlockTries:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mUnlockTries:I

    goto :goto_42

    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->isLocked()Z

    move-result v2

    if-nez v2, :cond_42

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->getUserLevel()I

    move-result v2

    if-nez v2, :cond_42

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mUnlockTries:I

    :cond_42
    :goto_42
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->isLocked()Z

    move-result v2

    if-nez v2, :cond_89

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->getUserLevel()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0xa

    if-ne v2, v4, :cond_6b

    iget v2, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenAnim:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_6b

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_89

    :cond_6b
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->getUserLevel()I

    move-result v2

    if-eq v2, v4, :cond_89

    iget v2, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenAnim:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_89

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_89

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->mElevenHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_89
    :goto_89
    return-void
.end method

.method valueToAngle(F)F
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const v1, 0x439d8000    # 315.0f

    mul-float/2addr v0, v1

    return v0
.end method
