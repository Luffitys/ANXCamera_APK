.class public abstract Lmiui/maml/elements/GeometryScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "GeometryScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/GeometryScreenElement$DrawMode;
    }
.end annotation


# static fields
.field public static final FILL_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field private static final LOG_TAG:Ljava/lang/String; = "GeometryScreenElement"

.field private static final PROPERTY_NAME_FILL_COLOR:Ljava/lang/String; = "fillColor"

.field private static final PROPERTY_NAME_STROKE_COLOR:Ljava/lang/String; = "strokeColor"

.field private static final PROPERTY_NAME_STROKE_WEIGHT:Ljava/lang/String; = "strokeWeight"

.field public static final STROKE_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final STROKE_WEIGHT:Lmiui/maml/folme/AnimatedProperty;


# instance fields
.field private mFillColor:I

.field protected mFillColorParser:Lmiui/maml/util/ColorParser;

.field private mFillColorProperty:Lmiui/maml/folme/PropertyWrapper;

.field protected mFillShadersElement:Lmiui/maml/shader/ShadersElement;

.field protected mPaint:Landroid/graphics/Paint;

.field private final mStrokeAlign:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

.field private mStrokeColor:I

.field protected mStrokeColorParser:Lmiui/maml/util/ColorParser;

.field private mStrokeColorProperty:Lmiui/maml/folme/PropertyWrapper;

.field protected mStrokeShadersElement:Lmiui/maml/shader/ShadersElement;

.field private mStrokeWeightProperty:Lmiui/maml/folme/PropertyWrapper;

.field protected mWeight:F

.field protected mXfermodeNumExp:Lmiui/maml/data/Expression;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lmiui/maml/elements/GeometryScreenElement$1;

    const-string v1, "fillColor"

    invoke-direct {v0, v1}, Lmiui/maml/elements/GeometryScreenElement$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/elements/GeometryScreenElement;->FILL_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    new-instance v0, Lmiui/maml/elements/GeometryScreenElement$2;

    const-string v2, "strokeColor"

    invoke-direct {v0, v2}, Lmiui/maml/elements/GeometryScreenElement$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/elements/GeometryScreenElement;->STROKE_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    new-instance v0, Lmiui/maml/elements/GeometryScreenElement$3;

    const-string v3, "strokeWeight"

    invoke-direct {v0, v3}, Lmiui/maml/elements/GeometryScreenElement$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/elements/GeometryScreenElement;->STROKE_WEIGHT:Lmiui/maml/folme/AnimatedProperty;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lmiui/maml/elements/GeometryScreenElement;->FILL_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lmiui/maml/elements/GeometryScreenElement;->FILL_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lmiui/maml/elements/GeometryScreenElement;->FILL_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lmiui/maml/elements/GeometryScreenElement;->STROKE_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lmiui/maml/elements/GeometryScreenElement;->STROKE_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lmiui/maml/elements/GeometryScreenElement;->STROKE_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lmiui/maml/elements/GeometryScreenElement;->STROKE_WEIGHT:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lmiui/maml/elements/GeometryScreenElement;->STROKE_WEIGHT:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lmiui/maml/elements/GeometryScreenElement;->STROKE_WEIGHT:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3}, Lmiui/maml/elements/GeometryScreenElement;->scale(D)F

    move-result v2

    iput v2, v0, Lmiui/maml/elements/GeometryScreenElement;->mWeight:F

    const-string v2, "strokeColor"

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/GeometryScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    new-instance v4, Lmiui/maml/util/ColorParser;

    invoke-direct {v4, v3, v2}, Lmiui/maml/util/ColorParser;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v4, v0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lmiui/maml/util/ColorParser;

    :cond_2d
    const-string v4, "fillColor"

    invoke-virtual {v0, v1, v4}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_40

    new-instance v4, Lmiui/maml/util/ColorParser;

    invoke-direct {v4, v3, v2}, Lmiui/maml/util/ColorParser;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v4, v0, Lmiui/maml/elements/GeometryScreenElement;->mFillColorParser:Lmiui/maml/util/ColorParser;

    :cond_40
    const-string v4, "weight"

    invoke-virtual {v0, v1, v4}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    const-string v5, "cap"

    invoke-virtual {v0, v1, v5}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lmiui/maml/elements/GeometryScreenElement;->getCap(Ljava/lang/String;)Landroid/graphics/Paint$Cap;

    move-result-object v12

    iget-object v5, v0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-direct/range {p0 .. p1}, Lmiui/maml/elements/GeometryScreenElement;->resolveDashIntervals(Lorg/w3c/dom/Element;)[F

    move-result-object v13

    if-eqz v13, :cond_6a

    iget-object v5, v0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/DashPathEffect;

    const/4 v7, 0x0

    invoke-direct {v6, v13, v7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_6a
    const-string v5, "strokeAlign"

    invoke-virtual {v0, v1, v5}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->getStrokeAlign(Ljava/lang/String;)Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    move-result-object v5

    iput-object v5, v0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeAlign:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    const-string v5, "xfermodeNum"

    invoke-virtual {v0, v1, v5}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    iput-object v5, v0, Lmiui/maml/elements/GeometryScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    if-nez v5, :cond_98

    const-string v5, "xfermode"

    invoke-virtual {v0, v1, v5}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iget-object v6, v0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v7, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_98
    iget-object v5, v0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v5, v0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lmiui/maml/util/ColorParser;

    const/4 v6, 0x0

    if-eqz v5, :cond_a8

    invoke-virtual {v5}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v5

    goto :goto_a9

    :cond_a8
    move v5, v6

    :goto_a9
    iput v5, v0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    iget-object v5, v0, Lmiui/maml/elements/GeometryScreenElement;->mFillColorParser:Lmiui/maml/util/ColorParser;

    if-eqz v5, :cond_b3

    invoke-virtual {v5}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v6

    :cond_b3
    iput v6, v0, Lmiui/maml/elements/GeometryScreenElement;->mFillColor:I

    new-instance v5, Lmiui/maml/folme/PropertyWrapper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lmiui/maml/elements/GeometryScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".fillColor"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/GeometryScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/GeometryScreenElement;->isInFolmeMode()Z

    move-result v18

    iget v6, v0, Lmiui/maml/elements/GeometryScreenElement;->mFillColor:I

    int-to-double v6, v6

    move-object v14, v5

    move-wide/from16 v19, v6

    invoke-direct/range {v14 .. v20}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v5, v0, Lmiui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v5, Lmiui/maml/folme/PropertyWrapper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lmiui/maml/elements/GeometryScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".strokeColor"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/GeometryScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/GeometryScreenElement;->isInFolmeMode()Z

    move-result v23

    iget v6, v0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    int-to-double v6, v6

    move-object/from16 v19, v5

    move-wide/from16 v24, v6

    invoke-direct/range {v19 .. v25}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v5, v0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v14, Lmiui/maml/folme/PropertyWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lmiui/maml/elements/GeometryScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".strokeWeight"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/GeometryScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/GeometryScreenElement;->isInFolmeMode()Z

    move-result v9

    const-wide/16 v10, 0x0

    move-object v5, v14

    move-object v8, v4

    invoke-direct/range {v5 .. v11}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v14, v0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-direct/range {p0 .. p2}, Lmiui/maml/elements/GeometryScreenElement;->loadShadersElement(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/GeometryScreenElement;)Lmiui/maml/folme/PropertyWrapper;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lmiui/maml/folme/PropertyWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/elements/GeometryScreenElement;)Lmiui/maml/folme/PropertyWrapper;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lmiui/maml/folme/PropertyWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/elements/GeometryScreenElement;)Lmiui/maml/folme/PropertyWrapper;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lmiui/maml/folme/PropertyWrapper;

    return-object v0
.end method

.method private final getCap(Ljava/lang/String;)Landroid/graphics/Paint$Cap;
    .registers 4

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    const-string v1, "round"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_1e

    :cond_14
    const-string v1, "square"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method private loadShadersElement(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    const-string v0, "StrokeShaders"

    invoke-static {p1, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v1, Lmiui/maml/shader/ShadersElement;

    invoke-direct {v1, v0, p2}, Lmiui/maml/shader/ShadersElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lmiui/maml/shader/ShadersElement;

    :cond_f
    const-string v1, "FillShaders"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_1e

    new-instance v1, Lmiui/maml/shader/ShadersElement;

    invoke-direct {v1, v0, p2}, Lmiui/maml/shader/ShadersElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lmiui/maml/shader/ShadersElement;

    :cond_1e
    return-void
.end method

.method private resolveDashIntervals(Lorg/w3c/dom/Element;)[F
    .registers 8

    const/4 v0, 0x0

    const-string v1, "dash"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    return-object v3

    :cond_f
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_33

    array-length v4, v2

    rem-int/2addr v4, v5

    if-nez v4, :cond_33

    array-length v4, v2

    new-array v0, v4, [F

    const/4 v4, 0x0

    :goto_21
    array-length v5, v2

    if-ge v4, v5, :cond_32

    :try_start_24
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v0, v4
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2c} :catch_30

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :catch_30
    move-exception v5

    return-object v3

    :cond_32
    return-object v0

    :cond_33
    return-object v3
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lmiui/maml/shader/ShadersElement;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillColor:I

    if-eqz v0, :cond_45

    :cond_9
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lmiui/maml/shader/ShadersElement;

    if-eqz v0, :cond_25

    iget-object v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lmiui/maml/shader/ShadersElement;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_40

    :cond_25
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget v3, p0, Lmiui/maml/elements/GeometryScreenElement;->mAlpha:I

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_40
    sget-object v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->FILL:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/GeometryScreenElement;->onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V

    :cond_45
    iget v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mWeight:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_97

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lmiui/maml/shader/ShadersElement;

    if-nez v0, :cond_54

    iget v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    if-eqz v0, :cond_97

    :cond_54
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mWeight:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lmiui/maml/shader/ShadersElement;

    if-eqz v0, :cond_77

    iget-object v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lmiui/maml/shader/ShadersElement;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_92

    :cond_77
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mAlpha:I

    invoke-static {v1, v2}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_92
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeAlign:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/GeometryScreenElement;->onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V

    :cond_97
    return-void
.end method

.method protected doTick(J)V
    .registers 6

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    invoke-virtual {p0}, Lmiui/maml/elements/GeometryScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lmiui/maml/elements/GeometryScreenElement;->isInFolmeMode()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillColor:I

    goto :goto_39

    :cond_25
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lmiui/maml/util/ColorParser;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    :cond_2f
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillColorParser:Lmiui/maml/util/ColorParser;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillColor:I

    :cond_39
    :goto_39
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lmiui/maml/shader/ShadersElement;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lmiui/maml/shader/ShadersElement;->updateShader()V

    :cond_40
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lmiui/maml/shader/ShadersElement;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lmiui/maml/shader/ShadersElement;->updateShader()V

    :cond_47
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/GeometryScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mWeight:F

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Lmiui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_6a
    iget-boolean v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mTintChanged:Z

    if-eqz v0, :cond_75

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_75
    return-void
.end method

.method protected initProperties()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->initProperties()V

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    return-void
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_a
    return-void
.end method
