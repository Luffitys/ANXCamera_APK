.class public Landroid/transition/ChangeBounds;
.super Landroid/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ChangeBounds"

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field mReparent:Z

.field mResizeClip:Z

.field tempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "android:changeBounds:bounds"

    const-string v1, "android:changeBounds:clip"

    const-string v2, "android:changeBounds:parent"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    new-instance v0, Landroid/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroid/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroid/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, Landroid/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroid/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Landroid/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroid/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroid/transition/ChangeBounds$6;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "position"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    sget-object v1, Lcom/android/internal/R$styleable;->ChangeBounds:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Landroid/transition/ChangeBounds;->setResizeClip(Z)V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .registers 9

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_77

    :cond_14
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_68

    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_77

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-string v3, "android:changeBounds:clip"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    return-void
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .registers 8

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_13

    if-ne p1, p2, :cond_10

    goto :goto_11

    :cond_10
    move v1, v3

    :goto_11
    move v0, v1

    goto :goto_1a

    :cond_13
    iget-object v4, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v4, :cond_18

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    move v0, v1

    :cond_1a
    :goto_1a
    return v0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 41

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    if-eqz v9, :cond_3d6

    if-nez v10, :cond_f

    move-object v9, v8

    move-object v12, v10

    const/4 v0, 0x0

    goto/16 :goto_3d9

    :cond_f
    iget-object v11, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v12, v10, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:parent"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/view/ViewGroup;

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/view/ViewGroup;

    if-eqz v13, :cond_3ca

    if-nez v14, :cond_33

    move-object v9, v8

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object v12, v10

    goto/16 :goto_3d4

    :cond_33
    iget-object v15, v10, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct {v8, v13, v14}, Landroid/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2e9

    iget-object v1, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/graphics/Rect;

    iget-object v1, v10, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->left:I

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    iget v4, v6, Landroid/graphics/Rect;->top:I

    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v19, v11

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v20, v12

    iget v12, v6, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v21, v13

    sub-int v13, v0, v5

    move-object/from16 v22, v14

    sub-int v14, v11, v3

    move-object/from16 v23, v7

    sub-int v7, v2, v1

    move-object/from16 v24, v6

    sub-int v6, v12, v4

    iget-object v8, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:changeBounds:clip"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    move-object/from16 v25, v15

    iget-object v15, v10, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    const/4 v15, 0x0

    if-eqz v13, :cond_8c

    if-nez v14, :cond_90

    :cond_8c
    if-eqz v7, :cond_9c

    if-eqz v6, :cond_9c

    :cond_90
    if-ne v5, v1, :cond_94

    if-eq v3, v4, :cond_96

    :cond_94
    add-int/lit8 v15, v15, 0x1

    :cond_96
    if-ne v0, v2, :cond_9a

    if-eq v11, v12, :cond_9c

    :cond_9a
    add-int/lit8 v15, v15, 0x1

    :cond_9c
    if-eqz v8, :cond_a4

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a8

    :cond_a4
    if-nez v8, :cond_aa

    if-eqz v9, :cond_aa

    :cond_a8
    add-int/lit8 v15, v15, 0x1

    :cond_aa
    if-lez v15, :cond_2c4

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Landroid/view/ViewGroup;

    if-eqz v10, :cond_cd

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    move-object/from16 v26, v8

    const/4 v8, 0x1

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    new-instance v8, Landroid/transition/ChangeBounds$7;

    move-object/from16 v27, v9

    move-object/from16 v9, p0

    invoke-direct {v8, v9, v10}, Landroid/transition/ChangeBounds$7;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    invoke-virtual {v9, v8}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_d3

    :cond_cd
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v9, p0

    :goto_d3
    iget-boolean v8, v9, Landroid/transition/ChangeBounds;->mResizeClip:Z

    const/4 v10, 0x2

    if-nez v8, :cond_1f1

    move-object/from16 v8, v25

    invoke-virtual {v8, v5, v3, v0, v11}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    if-ne v15, v10, :cond_184

    if-ne v13, v7, :cond_116

    if-ne v14, v6, :cond_116

    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v10

    move/from16 v25, v15

    int-to-float v15, v5

    move/from16 v28, v6

    int-to-float v6, v3

    move/from16 v29, v14

    int-to-float v14, v1

    move/from16 v30, v7

    int-to-float v7, v4

    invoke-virtual {v10, v15, v6, v14, v7}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v6

    sget-object v7, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    const/4 v10, 0x0

    invoke-static {v8, v7, v10, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move/from16 v18, v0

    move/from16 v16, v1

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v11

    move/from16 v35, v28

    move/from16 v14, v29

    move/from16 v36, v30

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v28, v13

    goto/16 :goto_2c3

    :cond_116
    move/from16 v28, v6

    move/from16 v30, v7

    move/from16 v29, v14

    move/from16 v25, v15

    new-instance v6, Landroid/transition/ChangeBounds$ViewBounds;

    invoke-direct {v6, v8}, Landroid/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v7

    int-to-float v14, v5

    int-to-float v15, v3

    int-to-float v10, v1

    move/from16 v32, v13

    int-to-float v13, v4

    invoke-virtual {v7, v14, v15, v10, v13}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v7

    sget-object v10, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    const/4 v13, 0x0

    invoke-static {v6, v10, v13, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v14

    int-to-float v15, v0

    int-to-float v13, v11

    move-object/from16 v33, v7

    int-to-float v7, v2

    move-object/from16 v34, v8

    int-to-float v8, v12

    invoke-virtual {v14, v15, v13, v7, v8}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v7

    sget-object v8, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    const/4 v13, 0x0

    invoke-static {v6, v8, v13, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v14, 0x2

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object v14, v13

    new-instance v15, Landroid/transition/ChangeBounds$8;

    invoke-direct {v15, v9, v6}, Landroid/transition/ChangeBounds$8;-><init>(Landroid/transition/ChangeBounds;Landroid/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual {v13, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 v18, v0

    move/from16 v16, v1

    move/from16 v31, v4

    move/from16 v33, v11

    move-object v6, v14

    move/from16 v35, v28

    move/from16 v14, v29

    move/from16 v36, v30

    move/from16 v28, v32

    move-object/from16 v8, v34

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v32, v5

    goto/16 :goto_2c3

    :cond_184
    move/from16 v28, v6

    move/from16 v30, v7

    move-object/from16 v34, v8

    move/from16 v32, v13

    move/from16 v29, v14

    move/from16 v25, v15

    if-ne v5, v1, :cond_1c4

    if-eq v3, v4, :cond_197

    move-object/from16 v8, v34

    goto :goto_1c6

    :cond_197
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v6

    int-to-float v7, v0

    int-to-float v8, v11

    int-to-float v10, v2

    int-to-float v13, v12

    invoke-virtual {v6, v7, v8, v10, v13}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v6

    sget-object v7, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    move-object/from16 v8, v34

    const/4 v10, 0x0

    invoke-static {v8, v7, v10, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move/from16 v18, v0

    move/from16 v16, v1

    move/from16 v31, v4

    move/from16 v33, v11

    move/from16 v35, v28

    move/from16 v14, v29

    move/from16 v36, v30

    move/from16 v28, v32

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v32, v5

    goto/16 :goto_2c3

    :cond_1c4
    move-object/from16 v8, v34

    :goto_1c6
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v6

    int-to-float v7, v5

    int-to-float v10, v3

    int-to-float v13, v1

    int-to-float v14, v4

    invoke-virtual {v6, v7, v10, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v6

    sget-object v7, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    const/4 v10, 0x0

    invoke-static {v8, v7, v10, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move/from16 v18, v0

    move/from16 v16, v1

    move/from16 v31, v4

    move/from16 v33, v11

    move/from16 v35, v28

    move/from16 v14, v29

    move/from16 v36, v30

    move/from16 v28, v32

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v32, v5

    goto/16 :goto_2c3

    :cond_1f1
    move/from16 v28, v6

    move/from16 v30, v7

    move/from16 v32, v13

    move/from16 v29, v14

    move-object/from16 v8, v25

    move/from16 v25, v15

    move/from16 v10, v32

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    nop

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v28, v0

    add-int v0, v5, v13

    move/from16 v29, v2

    add-int v2, v3, v15

    invoke-virtual {v8, v5, v3, v0, v2}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    const/4 v0, 0x0

    if-ne v5, v1, :cond_221

    if-eq v3, v4, :cond_219

    goto :goto_221

    :cond_219
    move/from16 v34, v1

    move/from16 v33, v3

    move/from16 v32, v5

    move-object v5, v0

    goto :goto_23d

    :cond_221
    :goto_221
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v2

    move-object/from16 v30, v0

    int-to-float v0, v5

    move/from16 v32, v5

    int-to-float v5, v3

    move/from16 v33, v3

    int-to-float v3, v1

    move/from16 v34, v1

    int-to-float v1, v4

    invoke-virtual {v2, v0, v5, v3, v1}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    const/4 v2, 0x0

    invoke-static {v8, v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object v5, v1

    :goto_23d
    move/from16 v30, v33

    move-object/from16 v3, v27

    if-nez v26, :cond_24b

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v10, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v0

    goto :goto_24e

    :cond_24b
    const/4 v1, 0x0

    move-object/from16 v2, v26

    :goto_24e
    if-nez v27, :cond_257

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v0

    goto :goto_259

    :cond_257
    move-object/from16 v1, v27

    :goto_259
    const/4 v0, 0x0

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2a8

    invoke-virtual {v8, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    move-object/from16 v17, v0

    sget-object v0, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    move/from16 v33, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v4, v16

    const/16 v16, 0x1

    aput-object v1, v4, v16

    move-object/from16 v16, v1

    const-string v1, "clipBounds"

    invoke-static {v8, v1, v0, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v1, Landroid/transition/ChangeBounds$9;

    move/from16 v18, v28

    move-object v0, v1

    move/from16 v28, v10

    move-object/from16 v27, v16

    move/from16 v16, v34

    move-object v10, v1

    move-object/from16 v1, p0

    move-object/from16 v26, v2

    move-object v2, v8

    move/from16 v31, v33

    move/from16 v33, v11

    move-object v11, v4

    move/from16 v4, v16

    move/from16 v34, v13

    move-object v13, v5

    move/from16 v5, v31

    move/from16 v35, v6

    move/from16 v6, v29

    move/from16 v36, v7

    move v7, v12

    invoke-direct/range {v0 .. v7}, Landroid/transition/ChangeBounds$9;-><init>(Landroid/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v11, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, v11

    goto :goto_2bf

    :cond_2a8
    move-object/from16 v17, v0

    move-object/from16 v27, v1

    move-object/from16 v26, v2

    move/from16 v31, v4

    move/from16 v35, v6

    move/from16 v36, v7

    move/from16 v33, v11

    move/from16 v18, v28

    move/from16 v16, v34

    move/from16 v28, v10

    move/from16 v34, v13

    move-object v13, v5

    :goto_2bf
    invoke-static {v13, v0}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v6

    :goto_2c3
    return-object v6

    :cond_2c4
    move/from16 v18, v0

    move/from16 v16, v1

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v35, v6

    move/from16 v36, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move/from16 v33, v11

    move/from16 v28, v13

    move-object/from16 v8, v25

    move-object/from16 v9, p0

    move/from16 v25, v15

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v12, p3

    goto :goto_353

    :cond_2e9
    move-object v9, v8

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object v8, v15

    iget-object v0, v9, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    move-object/from16 v7, p2

    iget-object v0, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowX"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v9, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int v10, v0, v2

    iget-object v0, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowY"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v9, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int v11, v0, v3

    move-object/from16 v12, p3

    iget-object v0, v12, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v9, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    sub-int v13, v0, v1

    iget-object v0, v12, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v9, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int v14, v0, v1

    if-ne v10, v13, :cond_355

    if-eq v11, v14, :cond_353

    goto :goto_355

    :cond_353
    :goto_353
    const/4 v0, 0x0

    return-object v0

    :cond_355
    :goto_355
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v0

    invoke-virtual {v8, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v0

    add-int v0, v10, v15

    add-int v1, v11, v5

    invoke-virtual {v2, v10, v11, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    invoke-virtual {v8}, Landroid/view/View;->getTransitionAlpha()F

    move-result v23

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    int-to-float v1, v10

    move-object/from16 v24, v3

    int-to-float v3, v11

    move-object/from16 v25, v4

    int-to-float v4, v13

    move/from16 v26, v5

    int-to-float v5, v14

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v5

    sget-object v0, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    const/4 v1, 0x0

    invoke-static {v0, v1, v5}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object v17, v0, v1

    invoke-static {v2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v3, Landroid/transition/ChangeBounds$10;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move-object/from16 v2, p1

    move-object v6, v3

    move-object/from16 v18, v24

    move-object/from16 v3, v16

    move-object v7, v4

    move-object/from16 v24, v25

    move-object v4, v8

    move/from16 v25, v26

    move-object/from16 v26, v5

    move/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Landroid/transition/ChangeBounds$10;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v7, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v7

    :cond_3ca
    move-object v9, v8

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object v12, v10

    :goto_3d4
    const/4 v0, 0x0

    return-object v0

    :cond_3d6
    move-object v9, v8

    move-object v12, v10

    const/4 v0, 0x0

    :goto_3d9
    return-object v0
.end method

.method public getResizeClip()Z
    .registers 2

    iget-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    return-void
.end method

.method public setResizeClip(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    return-void
.end method
