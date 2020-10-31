.class public Lmiui/maml/elements/RectangleScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "RectangleScreenElement.java"


# static fields
.field public static final CORNER_RADIUS_X:Lmiui/maml/folme/AnimatedProperty;

.field public static final CORNER_RADIUS_Y:Lmiui/maml/folme/AnimatedProperty;

.field private static final LOG_TAG:Ljava/lang/String; = "RectangleScreenElement"

.field private static final PROPERTY_NAME_CORNER_RADIUS_X:Ljava/lang/String; = "cornerRadiusX"

.field private static final PROPERTY_NAME_CORNER_RADIUS_Y:Ljava/lang/String; = "cornerRadiusY"

.field public static final TAG_NAME:Ljava/lang/String; = "Rectangle"


# instance fields
.field private mCornerRadiusX:F

.field private mCornerRadiusY:F

.field private mRXProperty:Lmiui/maml/folme/PropertyWrapper;

.field private mRYProperty:Lmiui/maml/folme/PropertyWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lmiui/maml/elements/RectangleScreenElement$1;

    const-string v1, "cornerRadiusX"

    invoke-direct {v0, v1}, Lmiui/maml/elements/RectangleScreenElement$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_X:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/elements/RectangleScreenElement$2;

    const-string v2, "cornerRadiusY"

    invoke-direct {v0, v2}, Lmiui/maml/elements/RectangleScreenElement$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_Y:Lmiui/maml/folme/AnimatedProperty;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lmiui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_X:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lmiui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_X:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lmiui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_X:Lmiui/maml/folme/AnimatedProperty;

    const/16 v3, 0x3ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lmiui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_Y:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lmiui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_Y:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lmiui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_Y:Lmiui/maml/folme/AnimatedProperty;

    const/16 v2, 0x3ef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-direct {p0, p1}, Lmiui/maml/elements/RectangleScreenElement;->resolveCornerRadius(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/RectangleScreenElement;)Lmiui/maml/folme/PropertyWrapper;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/RectangleScreenElement;->mRXProperty:Lmiui/maml/folme/PropertyWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/elements/RectangleScreenElement;)Lmiui/maml/folme/PropertyWrapper;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/RectangleScreenElement;->mRYProperty:Lmiui/maml/folme/PropertyWrapper;

    return-object v0
.end method

.method private resolveCornerRadius(Lorg/w3c/dom/Element;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "cornerRadiusExp"

    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/RectangleScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-static {v0, v3}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_5c

    const-string v0, "cornerRadius"

    invoke-virtual {v1, v2, v0}, Lmiui/maml/elements/RectangleScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    :try_start_22
    array-length v0, v8

    if-ge v0, v6, :cond_26

    return-void

    :cond_26
    array-length v0, v8

    if-ne v0, v6, :cond_39

    aget-object v0, v8, v5

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v9, v0

    invoke-virtual {v1, v9, v10}, Lmiui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result v0

    iput v0, v1, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    iput v0, v1, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    goto :goto_53

    :cond_39
    aget-object v0, v8, v5

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v9, v0

    invoke-virtual {v1, v9, v10}, Lmiui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result v0

    iput v0, v1, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    aget-object v0, v8, v6

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v9, v0

    invoke-virtual {v1, v9, v10}, Lmiui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result v0

    iput v0, v1, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_53} :catch_54

    :goto_53
    goto :goto_5c

    :catch_54
    move-exception v0

    const-string v9, "RectangleScreenElement"

    const-string v10, "illegal number format of cornerRadius."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    if-eqz v4, :cond_64

    array-length v0, v4

    if-lez v0, :cond_64

    aget-object v0, v4, v5

    goto :goto_65

    :cond_64
    const/4 v0, 0x0

    :goto_65
    move-object v10, v0

    if-eqz v4, :cond_70

    array-length v0, v4

    if-le v0, v6, :cond_70

    aget-object v0, v4, v6

    move-object/from16 v17, v0

    goto :goto_72

    :cond_70
    move-object/from16 v17, v10

    :goto_72
    new-instance v0, Lmiui/maml/folme/PropertyWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lmiui/maml/elements/RectangleScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".cornerRadiusX"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/RectangleScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/RectangleScreenElement;->isInFolmeMode()Z

    move-result v11

    iget v5, v1, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    float-to-double v5, v5

    invoke-virtual {v1, v5, v6}, Lmiui/maml/elements/RectangleScreenElement;->descale(D)D

    move-result-wide v12

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v0, v1, Lmiui/maml/elements/RectangleScreenElement;->mRXProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v0, Lmiui/maml/folme/PropertyWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lmiui/maml/elements/RectangleScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".cornerRadiusY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/RectangleScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/RectangleScreenElement;->isInFolmeMode()Z

    move-result v18

    iget v5, v1, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    float-to-double v5, v5

    invoke-virtual {v1, v5, v6}, Lmiui/maml/elements/RectangleScreenElement;->descale(D)D

    move-result-wide v19

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v0, v1, Lmiui/maml/elements/RectangleScreenElement;->mRYProperty:Lmiui/maml/folme/PropertyWrapper;

    return-void
.end method


# virtual methods
.method protected doTick(J)V
    .registers 5

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;->doTick(J)V

    iget-object v0, p0, Lmiui/maml/elements/RectangleScreenElement;->mRXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    iget-object v0, p0, Lmiui/maml/elements/RectangleScreenElement;->mRYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    return-void
.end method

.method protected initProperties()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/GeometryScreenElement;->initProperties()V

    iget-object v0, p0, Lmiui/maml/elements/RectangleScreenElement;->mRXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/RectangleScreenElement;->mRYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .registers 16

    invoke-virtual {p0}, Lmiui/maml/elements/RectangleScreenElement;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/RectangleScreenElement;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lmiui/maml/elements/RectangleScreenElement;->getLeft(FF)F

    move-result v3

    invoke-virtual {p0, v2, v1}, Lmiui/maml/elements/RectangleScreenElement;->getTop(FF)F

    move-result v4

    cmpl-float v5, v0, v2

    if-lez v5, :cond_17

    move v5, v0

    goto :goto_18

    :cond_17
    move v5, v2

    :goto_18
    add-float/2addr v5, v3

    cmpl-float v6, v1, v2

    if-lez v6, :cond_1f

    move v6, v1

    goto :goto_20

    :cond_1f
    move v6, v2

    :goto_20
    add-float/2addr v6, v4

    sget-object v7, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    const/high16 v8, 0x40000000    # 2.0f

    if-ne p2, v7, :cond_38

    iget v7, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v7, v8

    sub-float/2addr v3, v7

    iget v7, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    iget v7, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v7, v8

    add-float/2addr v5, v7

    iget v7, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    goto :goto_4c

    :cond_38
    sget-object v7, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v7, :cond_4c

    iget v7, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v7, v8

    add-float/2addr v3, v7

    iget v7, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v7, v8

    add-float/2addr v4, v7

    iget v7, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v7, v8

    sub-float/2addr v5, v7

    iget v7, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    :cond_4c
    :goto_4c
    iget v7, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    cmpg-float v7, v7, v2

    if-lez v7, :cond_68

    iget v7, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    cmpg-float v2, v7, v2

    if-gtz v2, :cond_59

    goto :goto_68

    :cond_59
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v7, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    iget v8, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    iget-object v9, p0, Lmiui/maml/elements/RectangleScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_72

    :cond_68
    :goto_68
    iget-object v12, p0, Lmiui/maml/elements/RectangleScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v3

    move v9, v4

    move v10, v5

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_72
    return-void
.end method
