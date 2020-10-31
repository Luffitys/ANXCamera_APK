.class public abstract Lmiui/maml/elements/AnimatedScreenElement;
.super Lmiui/maml/elements/ScreenElement;
.source "AnimatedScreenElement.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AnimatedScreenElement"

.field private static final S_PAINT_COLOR:I = -0x4c06f6


# instance fields
.field private mActualXVar:Lmiui/maml/data/IndexedVariable;

.field private mActualYVar:Lmiui/maml/data/IndexedVariable;

.field protected mAlpha:I

.field public mAlphaProperty:Lmiui/maml/folme/PropertyWrapper;

.field private mAlphas:Lmiui/maml/animation/AlphaAnimation;

.field private mAnimTarget:Lmiui/maml/folme/AnimatedTarget;

.field private mCamera:Landroid/graphics/Camera;

.field protected mContentDescription:Ljava/lang/String;

.field protected mContentDescriptionExp:Lmiui/maml/data/Expression;

.field private mFolmeMode:Z

.field protected mHasContentDescription:Z

.field public mHeightProperty:Lmiui/maml/folme/PropertyWrapper;

.field protected mInterceptTouch:Z

.field private mIsHaptic:Z

.field private mListener:Lmiui/maml/folme/MamlTransitionListener;

.field private mListenerWrapper:Lmiui/maml/folme/TransitionListenerWrapper;

.field private mMarginBottom:F

.field private mMarginLeft:F

.field private mMarginRight:F

.field private mMarginTop:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field public mPivotXProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mPivotYProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mPivotZProperty:Lmiui/maml/folme/PropertyWrapper;

.field private mPositions:Lmiui/maml/animation/PositionAnimation;

.field protected mPressed:Z

.field public mRotationProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mRotationXProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mRotationYProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mRotationZProperty:Lmiui/maml/folme/PropertyWrapper;

.field private mRotations:Lmiui/maml/animation/RotationAnimation;

.field private mScaleExpression:Lmiui/maml/data/Expression;

.field public mScaleXProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mScaleYProperty:Lmiui/maml/folme/PropertyWrapper;

.field private mScales:Lmiui/maml/animation/ScaleAnimation;

.field private mSizes:Lmiui/maml/animation/SizeAnimation;

.field private mTickListener:Lmiui/maml/elements/FunctionElement;

.field protected mTintChanged:Z

.field protected mTintColor:I

.field protected mTintColorParser:Lmiui/maml/util/ColorParser;

.field public mTintColorProperty:Lmiui/maml/folme/PropertyWrapper;

.field protected mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field protected mTintMode:Landroid/graphics/PorterDuff$Mode;

.field protected mTintModeExp:Lmiui/maml/data/Expression;

.field public mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lmiui/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected mTouchable:Z

.field private mVirtualViewId:I

.field public mWidthProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mXProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mYProperty:Lmiui/maml/folme/PropertyWrapper;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x80000000

    iput v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    new-instance v0, Lmiui/maml/folme/MamlTransitionListener;

    invoke-direct {v0, p0}, Lmiui/maml/folme/MamlTransitionListener;-><init>(Lmiui/maml/elements/AnimatedScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mListener:Lmiui/maml/folme/MamlTransitionListener;

    invoke-direct {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->load(Lorg/w3c/dom/Element;)V

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lmiui/maml/ScreenElementRoot;->addAccessibleElements(Lmiui/maml/elements/AnimatedScreenElement;)V

    :cond_36
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    const v1, -0x4c06f6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lmiui/maml/folme/TransitionListenerWrapper;

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mListener:Lmiui/maml/folme/MamlTransitionListener;

    invoke-direct {v0, v1}, Lmiui/maml/folme/TransitionListenerWrapper;-><init>(Lmiui/maml/folme/MamlTransitionListener;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mListenerWrapper:Lmiui/maml/folme/TransitionListenerWrapper;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->folmeToImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->folmeSetToImpl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/elements/AnimatedScreenElement;->folmeFromToImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .registers 7

    invoke-virtual {p0, p2, p3}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0, p2, p4}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    :cond_18
    return-object v0
.end method

.method private folmeFromToImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1, p2}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2, p3}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v2

    instance-of v3, v0, Lmiui/maml/elements/StateElement;

    if-eqz v3, :cond_61

    instance-of v3, v1, Lmiui/maml/elements/StateElement;

    if-nez v3, :cond_21

    goto :goto_61

    :cond_21
    move-object v3, v0

    check-cast v3, Lmiui/maml/elements/StateElement;

    move-object v4, v1

    check-cast v4, Lmiui/maml/elements/StateElement;

    instance-of v5, v2, Lmiui/maml/elements/ConfigElement;

    if-eqz v5, :cond_2f

    move-object v5, v2

    check-cast v5, Lmiui/maml/elements/ConfigElement;

    goto :goto_30

    :cond_2f
    const/4 v5, 0x0

    :goto_30
    if-eqz v5, :cond_39

    :try_start_32
    iget-object v6, p0, Lmiui/maml/elements/AnimatedScreenElement;->mListenerWrapper:Lmiui/maml/folme/TransitionListenerWrapper;

    invoke-virtual {v5, v6}, Lmiui/maml/elements/ConfigElement;->getAnimConfig(Lmiui/maml/folme/TransitionListenerWrapper;)[Lmiui/animation/base/AnimConfig;

    move-result-object v6

    goto :goto_3c

    :cond_39
    const/4 v6, 0x0

    new-array v6, v6, [Lmiui/animation/base/AnimConfig;

    :goto_3c
    const-string v7, "from"

    invoke-virtual {v3, v7}, Lmiui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiui/animation/controller/AnimState;

    move-result-object v7

    const-string v8, "to"

    invoke-virtual {v4, v8}, Lmiui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiui/animation/controller/AnimState;

    move-result-object v8

    invoke-direct {p0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->setupToProperties(Lmiui/maml/elements/StateElement;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lmiui/maml/folme/AnimatedTarget;

    move-result-object v9

    invoke-static {v9}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object v9

    invoke-interface {v9}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v9

    invoke-interface {v9, v7, v8, v6}, Lmiui/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_5a} :catch_5c

    nop

    goto :goto_60

    :catch_5c
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_60
    return-void

    :cond_61
    :goto_61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folmeFromTo: wrong state name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AnimatedScreenElement"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private folmeSetToImpl(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    instance-of v1, v0, Lmiui/maml/elements/StateElement;

    if-nez v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folmeSetTo: wrong state name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimatedScreenElement"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    move-object v1, v0

    check-cast v1, Lmiui/maml/elements/StateElement;

    :try_start_26
    const-string v2, "setTo"

    invoke-virtual {v1, v2}, Lmiui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiui/animation/controller/AnimState;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lmiui/maml/folme/AnimatedTarget;

    move-result-object v3

    invoke-static {v3}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v3

    invoke-interface {v3, v2}, Lmiui/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3b} :catch_3d

    nop

    goto :goto_41

    :catch_3d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_41
    return-void
.end method

.method private folmeToImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1, p2}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    instance-of v2, v0, Lmiui/maml/elements/StateElement;

    if-nez v2, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folmeTo: wrong state name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnimatedScreenElement"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2b
    move-object v2, v0

    check-cast v2, Lmiui/maml/elements/StateElement;

    instance-of v3, v1, Lmiui/maml/elements/ConfigElement;

    if-eqz v3, :cond_36

    move-object v3, v1

    check-cast v3, Lmiui/maml/elements/ConfigElement;

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    :goto_37
    if-eqz v3, :cond_40

    :try_start_39
    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mListenerWrapper:Lmiui/maml/folme/TransitionListenerWrapper;

    invoke-virtual {v3, v4}, Lmiui/maml/elements/ConfigElement;->getAnimConfig(Lmiui/maml/folme/TransitionListenerWrapper;)[Lmiui/animation/base/AnimConfig;

    move-result-object v4

    goto :goto_43

    :cond_40
    const/4 v4, 0x0

    new-array v4, v4, [Lmiui/animation/base/AnimConfig;

    :goto_43
    const-string v5, "to"

    invoke-virtual {v2, v5}, Lmiui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiui/animation/controller/AnimState;

    move-result-object v5

    invoke-direct {p0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->setupToProperties(Lmiui/maml/elements/StateElement;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lmiui/maml/folme/AnimatedTarget;

    move-result-object v6

    invoke-static {v6}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object v6

    invoke-interface {v6}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Lmiui/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5b} :catch_5d

    nop

    goto :goto_61

    :catch_5d
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_61
    return-void
.end method

.method private handleCancel()V
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    const-string v0, "cancel"

    invoke-virtual {p0, v0}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    :cond_14
    return-void
.end method

.method private isInMainThread()Z
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v1, :cond_18f

    move-object/from16 v17, v2

    const-string v2, "scale"

    move-object/from16 v18, v3

    const/4 v3, 0x0

    invoke-direct {v0, v9, v1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    const-string v2, "x"

    const-string v3, "left"

    invoke-direct {v0, v9, v1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    const-string v3, "y"

    move-object/from16 v17, v2

    const-string v2, "top"

    invoke-direct {v0, v9, v1, v3, v2}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    const-string v2, "w"

    move-object/from16 v18, v3

    const-string v3, "width"

    invoke-direct {v0, v9, v1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    const-string v2, "h"

    const-string v3, "height"

    invoke-direct {v0, v9, v1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    const-string v2, "angle"

    const-string v3, "rotation"

    invoke-direct {v0, v9, v1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    const-string v2, "centerX"

    const-string v3, "pivotX"

    invoke-direct {v0, v9, v1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    const-string v2, "centerY"

    const-string v3, "pivotY"

    invoke-direct {v0, v9, v1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v8

    const-string v2, "alpha"

    const/4 v3, 0x0

    invoke-direct {v0, v9, v1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    const-string v2, "scaleX"

    invoke-direct {v0, v9, v1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v11

    const-string v2, "scaleY"

    invoke-direct {v0, v9, v1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v12

    const-string v2, "angleX"

    const-string v3, "rotationX"

    invoke-direct {v0, v9, v1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v13

    const-string v2, "angleY"

    const-string v3, "rotationY"

    invoke-direct {v0, v9, v1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v14

    const-string v2, "angleZ"

    const-string v3, "rotationZ"

    invoke-direct {v0, v9, v1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v15

    const-string v2, "centerZ"

    const-string v3, "pivotZ"

    invoke-direct {v0, v9, v1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v16

    iget-boolean v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v2, :cond_dc

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v4

    iget-object v4, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v5

    const-string v5, "actual_x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v2, v3, v9, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mActualXVar:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "actual_y"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v9, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mActualYVar:Lmiui/maml/data/IndexedVariable;

    goto :goto_e1

    :cond_dc
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    const/4 v4, 0x1

    :goto_e1
    const-string v2, "touchable"

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    const-string v2, "interceptTouch"

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    const-string v2, "haptic"

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    const-string v2, "contentDescription"

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    const-string v2, "contentDescriptionExp"

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_128

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_127

    goto :goto_128

    :cond_127
    move v4, v3

    :cond_128
    :goto_128
    iput-boolean v4, v0, Lmiui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    const-string v2, "marginLeft"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    const-string v2, "marginRight"

    invoke-static {v1, v2, v4}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    const-string v2, "marginTop"

    invoke-static {v1, v2, v4}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    const-string v2, "marginBottom"

    invoke-static {v1, v2, v4}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    const-string v2, "tint"

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15e

    new-instance v4, Lmiui/maml/util/ColorParser;

    invoke-direct {v4, v9, v2}, Lmiui/maml/util/ColorParser;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v4, v0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lmiui/maml/util/ColorParser;

    :cond_15e
    const-string v4, "tintmode"

    invoke-virtual {v0, v1, v4}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    iput-object v4, v0, Lmiui/maml/elements/AnimatedScreenElement;->mTintModeExp:Lmiui/maml/data/Expression;

    iget-object v4, v0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lmiui/maml/util/ColorParser;

    if-eqz v4, :cond_172

    invoke-virtual {v4}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v3

    :cond_172
    iput v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColor:I

    const-string v3, "folmeMode"

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mFolmeMode:Z

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v23, v16

    move-object v14, v11

    move-object v15, v12

    move-object/from16 v16, v13

    move-object v11, v7

    move-object v12, v8

    move-object v13, v10

    move-object v10, v6

    goto :goto_1a5

    :cond_18f
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v23, v16

    move-object v14, v11

    move-object v15, v12

    move-object/from16 v16, v13

    move-object v11, v7

    move-object v12, v8

    move-object v13, v10

    move-object v10, v6

    :goto_1a5
    new-instance v7, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide/16 v24, 0x0

    move-object v2, v7

    move-object v4, v9

    move-object/from16 v5, v17

    move-object v1, v7

    move-wide/from16 v7, v24

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mXProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".y"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide/16 v7, 0x0

    move-object v2, v1

    move-object/from16 v5, v18

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mYProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".w"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    move-object v2, v1

    move-object/from16 v5, v20

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    move-object/from16 v5, v21

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".rotation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide/16 v7, 0x0

    move-object v2, v1

    move-object v5, v10

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".alpha"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide v7, 0x406fe00000000000L    # 255.0

    move-object v2, v1

    move-object v5, v13

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".rotationX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide/16 v7, 0x0

    move-object v2, v1

    move-object/from16 v5, v16

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".rotationY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    move-object/from16 v5, v19

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".rotationZ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    move-object/from16 v5, v22

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".scaleX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v2, v1

    move-object v5, v14

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".scaleY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    move-object v5, v15

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tintColor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    iget v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColor:I

    int-to-double v7, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".pivotX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide/16 v7, 0x0

    move-object v2, v1

    move-object v5, v11

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".pivotY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    move-object v5, v12

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".pivotZ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    move-object/from16 v5, v23

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lmiui/maml/folme/PropertyWrapper;

    return-void
.end method

.method private setupToProperties(Lmiui/maml/elements/StateElement;)V
    .registers 7

    invoke-virtual {p1}, Lmiui/maml/elements/StateElement;->getProperties()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lmiui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiui/animation/property/FloatProperty;

    move-result-object v3

    if-eqz v3, :cond_1f

    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_1f
    goto :goto_8

    :cond_20
    return-void
.end method


# virtual methods
.method protected doRenderWithTranslation(Landroid/graphics/Canvas;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    iget-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotationX()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotationY()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotationZ()F

    move-result v11

    const/4 v1, 0x0

    cmpl-float v2, v9, v1

    if-nez v2, :cond_26

    cmpl-float v2, v10, v1

    if-nez v2, :cond_26

    cmpl-float v2, v11, v1

    if-eqz v2, :cond_54

    :cond_26
    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    if-nez v2, :cond_31

    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    iput-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    :cond_31
    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, v9, v10, v11}, Landroid/graphics/Camera;->rotate(FFF)V

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotZ()F

    move-result v2

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_48

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3, v1, v1, v2}, Landroid/graphics/Camera;->translate(FFF)V

    :cond_48
    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    iget-object v4, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    :cond_54
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotation()F

    move-result v12

    cmpl-float v2, v12, v1

    if-eqz v2, :cond_61

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v12}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_61
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getScaleX()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getScaleY()F

    move-result v14

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v13, v2

    if-nez v3, :cond_73

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_78

    :cond_73
    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_78
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotX()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v3

    sub-float v3, v15, v3

    sub-float v6, v2, v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotY()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v3

    sub-float v3, v16, v3

    sub-float v5, v2, v3

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    neg-float v3, v6

    neg-float v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    add-float v3, v6, v15

    add-float v4, v5, v16

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p1}, Lmiui/maml/elements/AnimatedScreenElement;->doRender(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-boolean v2, v2, Lmiui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    if-eqz v2, :cond_f7

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v3

    cmpl-float v2, v4, v1

    if-lez v2, :cond_ee

    cmpl-float v2, v3, v1

    if-lez v2, :cond_ee

    invoke-virtual {v0, v1, v4}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v17

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v18

    add-float v19, v17, v4

    add-float v20, v18, v3

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v21, v2

    move/from16 v2, v17

    move/from16 v22, v3

    move/from16 v3, v18

    move/from16 v23, v4

    move/from16 v4, v19

    move/from16 v24, v5

    move/from16 v5, v20

    move/from16 v25, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_fb

    :cond_ee
    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    goto :goto_fb

    :cond_f7
    move/from16 v24, v5

    move/from16 v25, v6

    :goto_fb
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected doTick(J)V
    .registers 8

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualXVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualYVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_23
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->evaluateAlpha()I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    const/4 v1, 0x0

    if-gez v0, :cond_2d

    move v0, v1

    :cond_2d
    iput v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    iput-boolean v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTintColor()I

    move-result v0

    iget v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColor:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3e

    iput-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    iput v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColor:I

    :cond_3e
    iget v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColor:I

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintModeExp:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_53

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4}, Lmiui/maml/util/Utils;->getPorterDuffMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    :cond_53
    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v3, v1, :cond_5b

    iput-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    :cond_5b
    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v3, :cond_61

    iput-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    :cond_61
    iget-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    if-eqz v2, :cond_6e

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColor:I

    invoke-direct {v2, v3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_6e
    goto :goto_72

    :cond_6f
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_72
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTickListener:Lmiui/maml/elements/FunctionElement;

    if-eqz v1, :cond_79

    invoke-virtual {v1}, Lmiui/maml/elements/FunctionElement;->perform()V

    :cond_79
    return-void
.end method

.method protected evaluateAlpha()I
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lmiui/maml/animation/AlphaAnimation;->getAlpha()I

    move-result v1

    goto :goto_19

    :cond_17
    const/16 v1, 0xff

    :goto_19
    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v0

    :cond_1d
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    instance-of v1, v1, Lmiui/maml/elements/LayerScreenElement;

    if-nez v1, :cond_41

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    instance-of v1, v1, Lmiui/maml/elements/ElementGroup;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->isLayered()Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_41

    :cond_36
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v1

    goto :goto_42

    :cond_41
    :goto_41
    move v1, v0

    :goto_42
    return v1
.end method

.method public finish()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_e
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lmiui/maml/folme/AnimatedTarget;

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    new-array v0, v0, [Lmiui/maml/elements/AnimatedScreenElement;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiui/animation/Folme;->clean([Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_1c

    :cond_1b
    goto :goto_20

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_20
    return-void
.end method

.method public folmeCancel([Lmiui/maml/data/Expression;)V
    .registers 8

    if-eqz p1, :cond_3e

    :try_start_2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_22

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiui/animation/property/FloatProperty;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_22
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lmiui/maml/folme/AnimatedTarget;

    move-result-object v1

    invoke-static {v1}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmiui/animation/property/FloatProperty;

    invoke-interface {v1, v2}, Lmiui/animation/IStateStyle;->cancel([Lmiui/animation/property/FloatProperty;)V

    goto :goto_52

    :cond_3e
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lmiui/maml/folme/AnimatedTarget;

    move-result-object v0

    invoke-static {v0}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiui/animation/IStateStyle;->cancel()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_52} :catch_53

    :goto_52
    goto :goto_57

    :catch_53
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_57
    return-void
.end method

.method public folmeFromTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/maml/elements/AnimatedScreenElement$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lmiui/maml/elements/AnimatedScreenElement$3;-><init>(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public folmeSetTo(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/maml/elements/AnimatedScreenElement$2;

    invoke-direct {v1, p0, p1}, Lmiui/maml/elements/AnimatedScreenElement$2;-><init>(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public folmeTo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/maml/elements/AnimatedScreenElement$1;

    invoke-direct {v1, p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement$1;-><init>(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public getAbsoluteLeft()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v0

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_10

    :cond_a
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v1

    :goto_10
    add-float/2addr v0, v1

    return v0
.end method

.method public getAbsoluteTop()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v0

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_10

    :cond_a
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v1

    :goto_10
    add-float/2addr v0, v1

    return v0
.end method

.method public getAlpha()I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    return v0
.end method

.method protected getAnimTarget()Lmiui/maml/folme/AnimatedTarget;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lmiui/maml/folme/AnimatedTarget;

    if-nez v0, :cond_e

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sCreator:Lmiui/animation/ITargetCreator;

    invoke-static {p0, v0}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object v0

    check-cast v0, Lmiui/maml/folme/AnimatedTarget;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lmiui/maml/folme/AnimatedTarget;

    :cond_e
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lmiui/maml/folme/AnimatedTarget;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "element.getContentDescription() == null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimatedScreenElement"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-object v0

    :cond_25
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getHeightRaw()F
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lmiui/maml/animation/SizeAnimation;->getHeight()D

    move-result-wide v1

    double-to-float v0, v1

    :cond_16
    return v0
.end method

.method protected getLeft()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v0

    return v0
.end method

.method public final getMarginBottom()F
    .registers 3

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public final getMarginLeft()F
    .registers 3

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public final getMarginRight()F
    .registers 3

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public final getMarginTop()F
    .registers 3

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getMatrix()Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getPivotX()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getPivotY()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getPivotZ()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lmiui/maml/animation/RotationAnimation;->getAngle()F

    move-result v1

    add-float/2addr v0, v1

    :cond_16
    return v0
.end method

.method public getRotationX()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getRotationY()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getRotationZ()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getScaleX()F
    .registers 7

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float v0, v1

    :cond_16
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    if-eqz v1, :cond_21

    float-to-double v2, v0

    invoke-virtual {v1}, Lmiui/maml/animation/ScaleAnimation;->getScaleX()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    :cond_21
    return v0
.end method

.method public getScaleY()F
    .registers 7

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float v0, v1

    :cond_16
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    if-eqz v1, :cond_21

    float-to-double v2, v0

    invoke-virtual {v1}, Lmiui/maml/animation/ScaleAnimation;->getScaleY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    :cond_21
    return v0
.end method

.method protected getTintColor()I
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lmiui/maml/util/ColorParser;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v0

    :cond_16
    return v0
.end method

.method protected getTop()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getWidthRaw()F
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lmiui/maml/animation/SizeAnimation;->getWidth()D

    move-result-wide v1

    double-to-float v0, v1

    :cond_16
    return v0
.end method

.method protected getX()F
    .registers 7

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    if-eqz v1, :cond_18

    float-to-double v2, v0

    invoke-virtual {v1}, Lmiui/maml/animation/PositionAnimation;->getX()D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v0, v2

    :cond_18
    float-to-double v1, v0

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v1

    return v1
.end method

.method protected getY()F
    .registers 7

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    if-eqz v1, :cond_18

    float-to-double v2, v0

    invoke-virtual {v1}, Lmiui/maml/animation/PositionAnimation;->getY()D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v0, v2

    :cond_18
    float-to-double v1, v0

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v1

    return v1
.end method

.method public init()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->initProperties()V

    :cond_c
    return-void
.end method

.method protected initProperties()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    return-void
.end method

.method protected isInFolmeMode()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mFolmeMode:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected onActionCancel()V
    .registers 1

    return-void
.end method

.method protected onActionDown(FF)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string v1, "down"

    invoke-virtual {v0, p0, v1}, Lmiui/maml/ScreenElementRoot;->onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-void
.end method

.method protected onActionMove(FF)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string v1, "move"

    invoke-virtual {v0, p0, v1}, Lmiui/maml/ScreenElementRoot;->onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-void
.end method

.method protected onActionUp()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string v1, "up"

    invoke-virtual {v0, p0, v1}, Lmiui/maml/ScreenElementRoot;->onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;
    .registers 4

    const-string v0, "AlphaAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lmiui/maml/animation/AlphaAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    return-object v0

    :cond_10
    const-string v0, "PositionAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lmiui/maml/animation/PositionAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    return-object v0

    :cond_20
    const-string v0, "RotationAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Lmiui/maml/animation/RotationAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/RotationAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    return-object v0

    :cond_30
    const-string v0, "SizeAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Lmiui/maml/animation/SizeAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/SizeAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    return-object v0

    :cond_40
    const-string v0, "ScaleAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    new-instance v0, Lmiui/maml/animation/ScaleAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/ScaleAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    return-object v0

    :cond_50
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;

    move-result-object v0

    return-object v0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    if-nez v0, :cond_c

    goto :goto_56

    :cond_c
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_35

    const/16 v6, 0x9

    if-eq v5, v6, :cond_28

    goto :goto_49

    :cond_28
    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v5

    if-eqz v5, :cond_49

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5, p0, v0}, Lmiui/maml/ScreenElementRoot;->onHoverChange(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_49

    :cond_35
    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v5

    if-eqz v5, :cond_49

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getHoverElement()Lmiui/maml/elements/AnimatedScreenElement;

    move-result-object v5

    if-eq v5, p0, :cond_48

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5, p0, v0}, Lmiui/maml/ScreenElementRoot;->onHoverChange(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    :cond_48
    const/4 v4, 0x1

    :cond_49
    :goto_49
    if-eqz v4, :cond_4e

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->requestUpdate()V

    :cond_4e
    if-eqz v4, :cond_55

    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    if-eqz v5, :cond_55

    const/4 v1, 0x1

    :cond_55
    return v1

    :cond_56
    :goto_56
    return v1
.end method

.method protected onSetAnimBefore()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    return-void
.end method

.method protected onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V
    .registers 3

    instance-of v0, p1, Lmiui/maml/animation/AlphaAnimation;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lmiui/maml/animation/AlphaAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    goto :goto_31

    :cond_a
    instance-of v0, p1, Lmiui/maml/animation/PositionAnimation;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lmiui/maml/animation/PositionAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    goto :goto_31

    :cond_14
    instance-of v0, p1, Lmiui/maml/animation/RotationAnimation;

    if-eqz v0, :cond_1e

    move-object v0, p1

    check-cast v0, Lmiui/maml/animation/RotationAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    goto :goto_31

    :cond_1e
    instance-of v0, p1, Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Lmiui/maml/animation/SizeAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    goto :goto_31

    :cond_28
    instance-of v0, p1, Lmiui/maml/animation/ScaleAnimation;

    if-eqz v0, :cond_31

    move-object v0, p1

    check-cast v0, Lmiui/maml/animation/ScaleAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    :cond_31
    :goto_31
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8d

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    if-nez v0, :cond_d

    goto/16 :goto_8d

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_66

    if-eq v4, v5, :cond_3e

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2d

    const/4 v6, 0x3

    if-eq v4, v6, :cond_29

    goto :goto_80

    :cond_29
    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->handleCancel()V

    goto :goto_80

    :cond_2d
    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v4, :cond_80

    invoke-virtual {p0, v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v3

    const-string v4, "move"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->onActionMove(FF)V

    goto :goto_80

    :cond_3e
    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v4, :cond_80

    iput-boolean v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    invoke-virtual {p0, v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    if-eqz v4, :cond_53

    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4, v5}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    :cond_53
    const-string v4, "up"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionUp()V

    goto :goto_64

    :cond_5c
    const-string v4, "cancel"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    :goto_64
    const/4 v3, 0x1

    goto :goto_80

    :cond_66
    invoke-virtual {p0, v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v4

    if-eqz v4, :cond_80

    iput-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    if-eqz v4, :cond_77

    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4, v5}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    :cond_77
    const-string v4, "down"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    const/4 v3, 0x1

    :cond_80
    :goto_80
    if-eqz v3, :cond_85

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->requestUpdate()V

    :cond_85
    if-eqz v3, :cond_8c

    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    if-eqz v4, :cond_8c

    move v1, v5

    :cond_8c
    return v1

    :cond_8d
    :goto_8d
    return v1
.end method

.method protected onVisibilityChange(Z)V
    .registers 5

    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    if-nez p1, :cond_37

    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->handleCancel()V

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_37

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getMamlAccessHelper()Lmiui/maml/util/MamlAccessHelper;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getMamlAccessHelper()Lmiui/maml/util/MamlAccessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/util/MamlAccessHelper;->getFocusedVirtualView()I

    move-result v0

    iget v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    if-ne v0, v1, :cond_37

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getMamlAccessHelper()Lmiui/maml/util/MamlAccessHelper;

    move-result-object v0

    iget v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/MamlAccessHelper;->performAccessibilityAction(II)V

    :cond_37
    return-void
.end method

.method public pause()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->handleCancel()V

    :try_start_6
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lmiui/maml/folme/AnimatedTarget;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    if-lez v0, :cond_25

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lmiui/maml/folme/AnimatedTarget;

    invoke-static {v0}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/animation/IStateStyle;->end([Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_25} :catch_26

    :cond_25
    goto :goto_2a

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2a
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->updateVisibility()V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_7
    return-void
.end method

.method public setHeight(D)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/folme/PropertyWrapper;->setValue(D)V

    return-void
.end method

.method public setOnTickListener(Lmiui/maml/elements/FunctionElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTickListener:Lmiui/maml/elements/FunctionElement;

    return-void
.end method

.method public setVirtualViewId(I)V
    .registers 2

    iput p1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    return-void
.end method

.method public setWidth(D)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/folme/PropertyWrapper;->setValue(D)V

    return-void
.end method

.method public setX(D)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/folme/PropertyWrapper;->setValue(D)V

    return-void
.end method

.method public setY(D)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/folme/PropertyWrapper;->setValue(D)V

    return-void
.end method

.method public touched(FF)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FFZ)Z

    move-result v0

    return v0
.end method

.method public touched(FFZ)Z
    .registers 9

    if-eqz p3, :cond_1c

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v0

    :goto_f
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v2, :cond_14

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v1

    :goto_1a
    sub-float/2addr p1, v0

    sub-float/2addr p2, v1

    :cond_1c
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v1

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v3

    cmpl-float v4, p1, v0

    if-ltz v4, :cond_42

    add-float v4, v0, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_42

    cmpl-float v4, p2, v1

    if-ltz v4, :cond_42

    add-float v4, v1, v3

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_42

    const/4 v4, 0x1

    goto :goto_43

    :cond_42
    const/4 v4, 0x0

    :goto_43
    return v4
.end method

.method public unsetOnTickListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTickListener:Lmiui/maml/elements/FunctionElement;

    return-void
.end method
