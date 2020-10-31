.class public Lmiui/maml/elements/GraphicsElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "GraphicsElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/GraphicsElement$GraphicsShader;,
        Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;,
        Lmiui/maml/elements/GraphicsElement$Callbacks;
    }
.end annotation


# static fields
.field public static final LINEAR_GRADIENT:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "MAML_Graphics"

.field public static final RADIAL_GRADIENT:I = 0x2

.field public static final TAG_NAME:Ljava/lang/String; = "Graphics"


# instance fields
.field private mCallbacks:Lmiui/maml/elements/GraphicsElement$Callbacks;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCanvasBounds:Landroid/graphics/Rect;

.field private mCurrentX:F

.field private mCurrentY:F

.field protected mFillPaint:Landroid/graphics/Paint;

.field private mInitRawHeight:F

.field private mInitRawWidth:F

.field private mLastAlpha:I

.field private mMode:Landroid/graphics/PorterDuff$Mode;

.field private mPath:Landroid/graphics/Path;

.field private mRenderListener:Lmiui/maml/elements/FunctionElement;

.field protected mStrokePaint:Landroid/graphics/Paint;

.field private mXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mXfermodeNumExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    const-string v0, "OnDraw"

    invoke-static {p1, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_32

    new-instance v1, Lmiui/maml/elements/GraphicsElement$Callbacks;

    invoke-direct {v1, v0, p0}, Lmiui/maml/elements/GraphicsElement$Callbacks;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v1, p0, Lmiui/maml/elements/GraphicsElement;->mCallbacks:Lmiui/maml/elements/GraphicsElement$Callbacks;

    :cond_32
    invoke-virtual {p0}, Lmiui/maml/elements/GraphicsElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "xfermodeNum"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/GraphicsElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    const-string v1, "xfermode"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/GraphicsElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    if-nez v2, :cond_6d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6d

    invoke-static {v1}, Lmiui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    iget-object v3, p0, Lmiui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lmiui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    iget-object v3, p0, Lmiui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lmiui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_6d
    return-void
.end method

.method private getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lmiui/maml/elements/GraphicsElement$GraphicsShader;
    .registers 21

    move-object/from16 v0, p5

    move/from16 v1, p6

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ltz v1, :cond_16

    invoke-static {}, Landroid/graphics/Shader$TileMode;->values()[Landroid/graphics/Shader$TileMode;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_16

    invoke-static {}, Landroid/graphics/Shader$TileMode;->values()[Landroid/graphics/Shader$TileMode;

    move-result-object v4

    aget-object v3, v4, v1

    :cond_16
    invoke-virtual {p0}, Lmiui/maml/elements/GraphicsElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-virtual {v4, v0}, Lmiui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/4 v11, 0x0

    if-nez v4, :cond_31

    new-instance v5, Lmiui/maml/elements/GraphicsElement$GraphicsShader;

    invoke-direct {v5, v11}, Lmiui/maml/elements/GraphicsElement$GraphicsShader;-><init>(Lmiui/maml/elements/GraphicsElement$1;)V

    move-object v4, v5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lmiui/maml/elements/GraphicsElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v12, v4

    goto :goto_32

    :cond_31
    move-object v12, v4

    :goto_32
    instance-of v4, v12, Lmiui/maml/elements/GraphicsElement$GraphicsShader;

    if-eqz v4, :cond_64

    move-object v13, v12

    check-cast v13, Lmiui/maml/elements/GraphicsElement$GraphicsShader;

    if-nez v2, :cond_49

    move-object v4, p0

    move-object v5, v13

    move v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lmiui/maml/elements/GraphicsElement;->isShaderParmsChanged(Lmiui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z

    move-result v2

    :cond_49
    if-eqz v2, :cond_5c

    move-object v4, p0

    move-object v5, v13

    move v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lmiui/maml/elements/GraphicsElement;->resetShader(Lmiui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z

    move-result v4

    if-nez v4, :cond_5c

    return-object v11

    :cond_5c
    move-object v4, p0

    move v5, p1

    move-object/from16 v6, p4

    invoke-direct {p0, v2, v13, p1, v6}, Lmiui/maml/elements/GraphicsElement;->resetMatrixIfNecessary(ZLmiui/maml/elements/GraphicsElement$GraphicsShader;ILjava/lang/String;)V

    return-object v13

    :cond_64
    move-object v4, p0

    move v5, p1

    move-object/from16 v6, p4

    return-object v11
.end method

.method private isShaderParmsChanged(Lmiui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z
    .registers 11

    iget-object v0, p1, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    const/4 v1, 0x1

    if-eqz v0, :cond_4c

    # getter for: Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mShaderType:I
    invoke-static {p1}, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->access$100(Lmiui/maml/elements/GraphicsElement$GraphicsShader;)I

    move-result v0

    if-ne p2, v0, :cond_4c

    array-length v0, p3

    iget-object v2, p1, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    array-length v2, v2

    if-ne v0, v2, :cond_4c

    if-eqz p4, :cond_17

    iget-object v0, p1, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    if-nez v0, :cond_1d

    :cond_17
    if-nez p4, :cond_4c

    iget-object v0, p1, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    if-nez v0, :cond_4c

    :cond_1d
    # getter for: Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mTileMode:Landroid/graphics/Shader$TileMode;
    invoke-static {p1}, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->access$200(Lmiui/maml/elements/GraphicsElement$GraphicsShader;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    if-ne p6, v0, :cond_4c

    # getter for: Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mMatrixName:Ljava/lang/String;
    invoke-static {p1}, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->access$000(Lmiui/maml/elements/GraphicsElement$GraphicsShader;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    :goto_2e
    array-length v2, p3

    if-ge v0, v2, :cond_4a

    iget-object v2, p1, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    aget v2, v2, v0

    aget v3, p3, v0

    if-eq v2, v3, :cond_3a

    return v1

    :cond_3a
    if-eqz p4, :cond_47

    iget-object v2, p1, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    aget v2, v2, v0

    aget v3, p4, v0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_47

    return v1

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_4a
    const/4 v0, 0x0

    return v0

    :cond_4c
    return v1
.end method

.method private isValid()Z
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x1

    return v0

    :cond_11
    :goto_11
    const-string v0, "MAML_Graphics"

    const-string v1, "Call maml graphics api not in onDraw callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private resetMatrixIfNecessary(ZLmiui/maml/elements/GraphicsElement$GraphicsShader;ILjava/lang/String;)V
    .registers 14

    invoke-virtual {p0}, Lmiui/maml/elements/GraphicsElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p4}, Lmiui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_61

    instance-of v1, v0, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;

    if-eqz v1, :cond_61

    iget-object v1, p2, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    if-eqz v1, :cond_61

    move-object v1, v0

    check-cast v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;

    if-nez p1, :cond_1b

    iget-boolean v2, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    if-eqz v2, :cond_61

    :cond_1b
    invoke-virtual {v1}, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->reset()V

    const/4 v8, 0x0

    const/4 v2, 0x1

    if-ne p3, v2, :cond_32

    const/4 v2, 0x4

    new-array v3, v2, [F

    fill-array-data v3, :array_62

    const/4 v4, 0x0

    iget-object v5, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->setPolyToPoly([FI[FII)Z

    goto :goto_5a

    :cond_32
    const/4 v3, 0x2

    if-ne p3, v3, :cond_5a

    iget-object v4, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget v4, v4, v8

    neg-float v4, v4

    iget-object v5, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget v5, v5, v2

    neg-float v5, v5

    invoke-virtual {v1, v4, v5}, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->preTranslate(FF)Z

    iget-object v4, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget v3, v4, v3

    iget-object v4, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    neg-float v4, v4

    invoke-virtual {v1, v3, v4}, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->setScale(FF)V

    iget-object v3, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget v3, v3, v8

    iget-object v4, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget v2, v4, v2

    invoke-virtual {v1, v3, v2}, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->postTranslate(FF)Z

    :cond_5a
    :goto_5a
    iput-boolean v8, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    iget-object v2, p2, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_61
    return-void

    :array_62
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private resetShader(Lmiui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z
    .registers 19

    move-object v0, p1

    move v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    new-instance v11, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, v11

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, v0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    goto :goto_2d

    :cond_19
    const/4 v3, 0x2

    if-ne v1, v3, :cond_51

    new-instance v3, Landroid/graphics/RadialGradient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v4, v3

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    :goto_2d
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, v0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    if-eqz p4, :cond_40

    invoke-virtual/range {p4 .. p4}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iput-object v3, v0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    goto :goto_43

    :cond_40
    const/4 v3, 0x0

    iput-object v3, v0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    :goto_43
    move-object/from16 v3, p5

    # setter for: Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mMatrixName:Ljava/lang/String;
    invoke-static {p1, v3}, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->access$002(Lmiui/maml/elements/GraphicsElement$GraphicsShader;Ljava/lang/String;)Ljava/lang/String;

    # setter for: Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mShaderType:I
    invoke-static {p1, p2}, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->access$102(Lmiui/maml/elements/GraphicsElement$GraphicsShader;I)I

    move-object/from16 v4, p6

    # setter for: Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mTileMode:Landroid/graphics/Shader$TileMode;
    invoke-static {p1, v4}, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->access$202(Lmiui/maml/elements/GraphicsElement$GraphicsShader;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;

    return v2

    :cond_51
    move-object/from16 v3, p5

    move-object/from16 v4, p6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong shader type "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "MAML_Graphics"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private setColorFilterInternal(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public beginFill(I)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public beginGradientFill(I[I[FLjava/lang/String;Ljava/lang/String;I)V
    .registers 10

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct/range {p0 .. p6}, Lmiui/maml/elements/GraphicsElement;->getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lmiui/maml/elements/GraphicsElement$GraphicsShader;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v1, p0, Lmiui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_19
    return-void
.end method

.method public createOrUpdateGradientBox(FFFFLjava/lang/String;)V
    .registers 13

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-virtual {p0}, Lmiui/maml/elements/GraphicsElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p5}, Lmiui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    new-instance v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;-><init>(Lmiui/maml/elements/GraphicsElement$1;)V

    move-object v0, v1

    invoke-virtual {p0}, Lmiui/maml/elements/GraphicsElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v1, p5, v0}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    instance-of v1, v0, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;

    if-eqz v1, :cond_5b

    move-object v1, v0

    check-cast v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;

    iget-object v2, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    cmpl-float v2, v2, p1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v2, :cond_49

    iget-object v2, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget v2, v2, v6

    cmpl-float v2, v2, p2

    if-nez v2, :cond_49

    iget-object v2, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget v2, v2, v5

    cmpl-float v2, v2, p3

    if-nez v2, :cond_49

    iget-object v2, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget v2, v2, v4

    cmpl-float v2, v2, p4

    if-eqz v2, :cond_5b

    :cond_49
    iget-object v2, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aput p1, v2, v3

    iget-object v2, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aput p2, v2, v6

    iget-object v2, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aput p3, v2, v5

    iget-object v2, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aput p4, v2, v4

    iput-boolean v6, v1, Lmiui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    :cond_5b
    return-void
.end method

.method public cubicCurveTo(FFFFFF)V
    .registers 18

    move-object v0, p0

    invoke-direct {p0}, Lmiui/maml/elements/GraphicsElement;->isValid()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, v0, Lmiui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lmiui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget v2, v0, Lmiui/maml/elements/GraphicsElement;->mCurrentX:F

    iget v3, v0, Lmiui/maml/elements/GraphicsElement;->mCurrentY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lmiui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, v0, Lmiui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lmiui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move/from16 v1, p5

    iput v1, v0, Lmiui/maml/elements/GraphicsElement;->mCurrentX:F

    move/from16 v2, p6

    iput v2, v0, Lmiui/maml/elements/GraphicsElement;->mCurrentY:F

    goto :goto_38

    :cond_34
    move/from16 v1, p5

    move/from16 v2, p6

    :goto_38
    return-void
.end method

.method public curveTo(FFFF)V
    .registers 8

    invoke-direct {p0}, Lmiui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lmiui/maml/elements/GraphicsElement;->mCurrentX:F

    iget v2, p0, Lmiui/maml/elements/GraphicsElement;->mCurrentY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lmiui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iput p3, p0, Lmiui/maml/elements/GraphicsElement;->mCurrentX:F

    iput p4, p0, Lmiui/maml/elements/GraphicsElement;->mCurrentY:F

    :cond_26
    return-void
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-virtual {p0}, Lmiui/maml/elements/GraphicsElement;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/GraphicsElement;->getHeight()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lmiui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lmiui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lmiui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lmiui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lmiui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    if-lez v2, :cond_26

    if-ge v2, v0, :cond_26

    move v0, v2

    :cond_26
    if-lez v3, :cond_2b

    if-ge v3, v1, :cond_2b

    move v1, v3

    :cond_2b
    iget-object v4, p0, Lmiui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lmiui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v5, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v4, 0x0

    iput v4, p0, Lmiui/maml/elements/GraphicsElement;->mCurrentX:F

    iput v4, p0, Lmiui/maml/elements/GraphicsElement;->mCurrentY:F

    iput-object p1, p0, Lmiui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lmiui/maml/elements/GraphicsElement;->mCallbacks:Lmiui/maml/elements/GraphicsElement$Callbacks;

    if-eqz v4, :cond_44

    invoke-virtual {v4}, Lmiui/maml/elements/GraphicsElement$Callbacks;->perform()V

    :cond_44
    iget-object v4, p0, Lmiui/maml/elements/GraphicsElement;->mRenderListener:Lmiui/maml/elements/FunctionElement;

    if-eqz v4, :cond_4b

    invoke-virtual {v4}, Lmiui/maml/elements/FunctionElement;->perform()V

    :cond_4b
    const/4 v4, 0x0

    iput-object v4, p0, Lmiui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method protected doTick(J)V
    .registers 6

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    invoke-virtual {p0}, Lmiui/maml/elements/GraphicsElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Lmiui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, v1, :cond_32

    iput-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    iget-object v2, p0, Lmiui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lmiui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    iget-object v2, p0, Lmiui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lmiui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_32
    iget v0, p0, Lmiui/maml/elements/GraphicsElement;->mLastAlpha:I

    iget v1, p0, Lmiui/maml/elements/GraphicsElement;->mAlpha:I

    if-eq v0, v1, :cond_4a

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiui/maml/elements/GraphicsElement;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiui/maml/elements/GraphicsElement;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lmiui/maml/elements/GraphicsElement;->mAlpha:I

    iput v0, p0, Lmiui/maml/elements/GraphicsElement;->mLastAlpha:I

    :cond_4a
    iget-boolean v0, p0, Lmiui/maml/elements/GraphicsElement;->mTintChanged:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v0}, Lmiui/maml/elements/GraphicsElement;->setColorFilterInternal(Landroid/graphics/ColorFilter;)V

    :cond_53
    return-void
.end method

.method public drawCircle(FFF)V
    .registers 8

    invoke-direct {p0}, Lmiui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lmiui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_29

    iget-object v1, p0, Lmiui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, p3

    iget-object v3, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_29
    return-void
.end method

.method public drawEllipse(FFFF)V
    .registers 24

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/GraphicsElement;->isValid()Z

    move-result v1

    if-eqz v1, :cond_54

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    if-ltz v2, :cond_53

    cmpg-float v2, p4, v1

    if-gez v2, :cond_12

    goto :goto_53

    :cond_12
    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p4, v2

    sub-float v3, p2, v3

    div-float v4, p4, v2

    add-float v10, p2, v4

    div-float v4, p3, v2

    sub-float v11, p1, v4

    div-float v4, p3, v2

    add-float v12, p1, v4

    iget-object v4, v0, Lmiui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v9, v0, Lmiui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    move v5, v11

    move v6, v3

    move v7, v12

    move v8, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    cmpl-float v1, v4, v1

    if-lez v1, :cond_54

    iget-object v13, v0, Lmiui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    div-float v1, v4, v2

    sub-float v14, v11, v1

    div-float v1, v4, v2

    sub-float v15, v3, v1

    div-float v1, v4, v2

    add-float v16, v12, v1

    div-float v1, v4, v2

    add-float v17, v10, v1

    iget-object v1, v0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    goto :goto_54

    :cond_53
    :goto_53
    return-void

    :cond_54
    :goto_54
    return-void
.end method

.method public drawRect(FFFF)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lmiui/maml/elements/GraphicsElement;->drawRoundRect(FFFFFF)V

    return-void
.end method

.method public drawRoundRect(FFFFFF)V
    .registers 29

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/GraphicsElement;->isValid()Z

    move-result v1

    if-eqz v1, :cond_54

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    if-ltz v2, :cond_53

    cmpg-float v2, p4, v1

    if-gez v2, :cond_12

    goto :goto_53

    :cond_12
    move/from16 v2, p2

    add-float v11, p2, p4

    move/from16 v12, p1

    add-float v13, p1, p3

    iget-object v3, v0, Lmiui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v10, v0, Lmiui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    move v4, v12

    move v5, v2

    move v6, v13

    move v7, v11

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    cmpl-float v1, v3, v1

    if-lez v1, :cond_54

    iget-object v14, v0, Lmiui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v4, v3, v1

    sub-float v15, v12, v4

    div-float v4, v3, v1

    sub-float v16, v2, v4

    div-float v4, v3, v1

    add-float v17, v13, v4

    div-float v1, v3, v1

    add-float v18, v11, v1

    iget-object v1, v0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    move/from16 v19, p5

    move/from16 v20, p6

    move-object/from16 v21, v1

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_54

    :cond_53
    :goto_53
    return-void

    :cond_54
    :goto_54
    return-void
.end method

.method public finish()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mCallbacks:Lmiui/maml/elements/GraphicsElement$Callbacks;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/maml/elements/GraphicsElement$Callbacks;->finish()V

    :cond_a
    return-void
.end method

.method public getScaleX()F
    .registers 5

    invoke-virtual {p0}, Lmiui/maml/elements/GraphicsElement;->getWidthRaw()F

    move-result v0

    iget v1, p0, Lmiui/maml/elements/GraphicsElement;->mInitRawWidth:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_17

    cmpl-float v2, v0, v2

    if-lez v2, :cond_17

    div-float v1, v0, v1

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    return v1

    :cond_17
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getScaleX()F

    move-result v1

    return v1
.end method

.method public getScaleY()F
    .registers 5

    invoke-virtual {p0}, Lmiui/maml/elements/GraphicsElement;->getHeightRaw()F

    move-result v0

    iget v1, p0, Lmiui/maml/elements/GraphicsElement;->mInitRawHeight:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_17

    cmpl-float v2, v0, v2

    if-lez v2, :cond_17

    div-float v1, v0, v1

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    return v1

    :cond_17
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getScaleY()F

    move-result v1

    return v1
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    invoke-virtual {p0}, Lmiui/maml/elements/GraphicsElement;->getWidthRaw()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/GraphicsElement;->mInitRawWidth:F

    invoke-virtual {p0}, Lmiui/maml/elements/GraphicsElement;->getHeightRaw()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/GraphicsElement;->mInitRawHeight:F

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mCallbacks:Lmiui/maml/elements/GraphicsElement$Callbacks;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lmiui/maml/elements/GraphicsElement$Callbacks;->init()V

    :cond_2f
    invoke-virtual {p0}, Lmiui/maml/elements/GraphicsElement;->evaluateAlpha()I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/GraphicsElement;->mLastAlpha:I

    return-void
.end method

.method public lineGradientStyle(I[I[FLjava/lang/String;Ljava/lang/String;I)V
    .registers 10

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct/range {p0 .. p6}, Lmiui/maml/elements/GraphicsElement;->getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lmiui/maml/elements/GraphicsElement$GraphicsShader;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v1, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_19
    return-void
.end method

.method public lineStyle(FIIIF)V
    .registers 10

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    if-ltz p3, :cond_11

    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v1

    array-length v1, v1

    if-ge p3, v1, :cond_11

    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v1

    aget-object v0, v1, p3

    :cond_11
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    if-ltz p4, :cond_22

    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object v2

    array-length v2, v2

    if-ge p4, v2, :cond_22

    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object v2

    aget-object v1, v2, p3

    :cond_22
    iget-object v2, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-ltz v3, :cond_32

    iget-object v3, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_32
    iget-object v3, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v3, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    cmpl-float v2, p5, v2

    if-lez v2, :cond_4a

    iget-object v2, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :cond_4a
    return-void
.end method

.method public lineTo(FF)V
    .registers 10

    invoke-direct {p0}, Lmiui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lmiui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lmiui/maml/elements/GraphicsElement;->mCurrentX:F

    iget v3, p0, Lmiui/maml/elements/GraphicsElement;->mCurrentY:F

    iget-object v6, p0, Lmiui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iput p1, p0, Lmiui/maml/elements/GraphicsElement;->mCurrentX:F

    iput p2, p0, Lmiui/maml/elements/GraphicsElement;->mCurrentY:F

    :cond_17
    return-void
.end method

.method public moveTo(FF)V
    .registers 4

    invoke-direct {p0}, Lmiui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_a

    iput p1, p0, Lmiui/maml/elements/GraphicsElement;->mCurrentX:F

    iput p2, p0, Lmiui/maml/elements/GraphicsElement;->mCurrentY:F

    :cond_a
    return-void
.end method

.method public pause()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->pause()V

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mCallbacks:Lmiui/maml/elements/GraphicsElement$Callbacks;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/maml/elements/GraphicsElement$Callbacks;->pause()V

    :cond_a
    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->resume()V

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement;->mCallbacks:Lmiui/maml/elements/GraphicsElement$Callbacks;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/maml/elements/GraphicsElement$Callbacks;->resume()V

    :cond_a
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-direct {p0, p1}, Lmiui/maml/elements/GraphicsElement;->setColorFilterInternal(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setRenderListener(Lmiui/maml/elements/FunctionElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/GraphicsElement;->mRenderListener:Lmiui/maml/elements/FunctionElement;

    return-void
.end method
