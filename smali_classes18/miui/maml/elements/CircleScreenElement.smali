.class public Lmiui/maml/elements/CircleScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "CircleScreenElement.java"


# static fields
.field private static final PROPERTY_NAME_R:Ljava/lang/String; = "r"

.field public static final R:Lmiui/maml/folme/AnimatedProperty;

.field public static final TAG_NAME:Ljava/lang/String; = "Circle"


# instance fields
.field private mRadiusProperty:Lmiui/maml/folme/PropertyWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lmiui/maml/elements/CircleScreenElement$1;

    const-string v1, "r"

    invoke-direct {v0, v1}, Lmiui/maml/elements/CircleScreenElement$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/elements/CircleScreenElement;->R:Lmiui/maml/folme/AnimatedProperty;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lmiui/maml/elements/CircleScreenElement;->R:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lmiui/maml/elements/CircleScreenElement;->R:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lmiui/maml/elements/CircleScreenElement;->R:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 12

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/CircleScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v1, p0, Lmiui/maml/elements/CircleScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    sget-object v1, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v1, p0, Lmiui/maml/elements/CircleScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/elements/CircleScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-virtual {p0}, Lmiui/maml/elements/CircleScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide/16 v7, 0x0

    move-object v2, v1

    move-object v5, v0

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, p0, Lmiui/maml/elements/CircleScreenElement;->mRadiusProperty:Lmiui/maml/folme/PropertyWrapper;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/CircleScreenElement;)Lmiui/maml/folme/PropertyWrapper;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/CircleScreenElement;->mRadiusProperty:Lmiui/maml/folme/PropertyWrapper;

    return-object v0
.end method

.method private final getRadius()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/CircleScreenElement;->mRadiusProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/CircleScreenElement;->scale(D)F

    move-result v0

    return v0
.end method


# virtual methods
.method protected initProperties()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/GeometryScreenElement;->initProperties()V

    iget-object v0, p0, Lmiui/maml/elements/CircleScreenElement;->mRadiusProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .registers 6

    invoke-direct {p0}, Lmiui/maml/elements/CircleScreenElement;->getRadius()F

    move-result v0

    sget-object v1, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v1, :cond_f

    iget v1, p0, Lmiui/maml/elements/CircleScreenElement;->mWeight:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_17

    :cond_f
    sget-object v1, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v1, :cond_17

    iget v1, p0, Lmiui/maml/elements/CircleScreenElement;->mWeight:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    :cond_17
    :goto_17
    iget-object v1, p0, Lmiui/maml/elements/CircleScreenElement;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
