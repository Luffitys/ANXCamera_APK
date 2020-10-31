.class public Lmiui/maml/elements/VirtualAnimatedScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "VirtualAnimatedScreenElement.java"


# static fields
.field public static final COLOR_1:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final COLOR_2:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final FLOAT_1:Lmiui/maml/folme/AnimatedProperty;

.field public static final FLOAT_2:Lmiui/maml/folme/AnimatedProperty;

.field public static final FLOAT_3:Lmiui/maml/folme/AnimatedProperty;

.field public static final FLOAT_4:Lmiui/maml/folme/AnimatedProperty;

.field private static final PROPERTY_NAME_RESERVE_COLOR_1:Ljava/lang/String; = "color1"

.field private static final PROPERTY_NAME_RESERVE_COLOR_2:Ljava/lang/String; = "color1"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_1:Ljava/lang/String; = "float1"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_2:Ljava/lang/String; = "float2"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_3:Ljava/lang/String; = "float3"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_4:Ljava/lang/String; = "float4"

.field public static final TAG_NAME:Ljava/lang/String; = "VirtualElement"


# instance fields
.field private mColor1Property:Lmiui/maml/folme/PropertyWrapper;

.field private mColor2Property:Lmiui/maml/folme/PropertyWrapper;

.field private mFloat1Property:Lmiui/maml/folme/PropertyWrapper;

.field private mFloat2Property:Lmiui/maml/folme/PropertyWrapper;

.field private mFloat3Property:Lmiui/maml/folme/PropertyWrapper;

.field private mFloat4Property:Lmiui/maml/folme/PropertyWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lmiui/maml/elements/VirtualAnimatedScreenElement$1;

    const-string v1, "color1"

    invoke-direct {v0, v1}, Lmiui/maml/elements/VirtualAnimatedScreenElement$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->COLOR_1:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    new-instance v0, Lmiui/maml/elements/VirtualAnimatedScreenElement$2;

    invoke-direct {v0, v1}, Lmiui/maml/elements/VirtualAnimatedScreenElement$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->COLOR_2:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    new-instance v0, Lmiui/maml/elements/VirtualAnimatedScreenElement$3;

    const-string v2, "float1"

    invoke-direct {v0, v2}, Lmiui/maml/elements/VirtualAnimatedScreenElement$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_1:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/elements/VirtualAnimatedScreenElement$4;

    const-string v3, "float2"

    invoke-direct {v0, v3}, Lmiui/maml/elements/VirtualAnimatedScreenElement$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_2:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/elements/VirtualAnimatedScreenElement$5;

    const-string v4, "float3"

    invoke-direct {v0, v4}, Lmiui/maml/elements/VirtualAnimatedScreenElement$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_3:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/elements/VirtualAnimatedScreenElement$6;

    const-string v5, "float4"

    invoke-direct {v0, v5}, Lmiui/maml/elements/VirtualAnimatedScreenElement$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_4:Lmiui/maml/folme/AnimatedProperty;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Lmiui/maml/elements/VirtualAnimatedScreenElement;->COLOR_1:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Lmiui/maml/elements/VirtualAnimatedScreenElement;->COLOR_2:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_1:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_2:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_3:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_4:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x44d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lmiui/maml/elements/VirtualAnimatedScreenElement;->COLOR_1:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x44e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lmiui/maml/elements/VirtualAnimatedScreenElement;->COLOR_2:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x44f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_1:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x450

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_2:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v5, 0x451

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_3:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v6, 0x452

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_4:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v7, Lmiui/maml/elements/VirtualAnimatedScreenElement;->COLOR_1:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v7, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lmiui/maml/elements/VirtualAnimatedScreenElement;->COLOR_2:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_1:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_2:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_3:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lmiui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_4:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v8, Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".color1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/VirtualAnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v8, v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mColor1Property:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".color2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/VirtualAnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v13

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mColor2Property:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".float1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/VirtualAnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mFloat1Property:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".float2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/VirtualAnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v13

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mFloat2Property:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".float3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/VirtualAnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mFloat3Property:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".float4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/VirtualAnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v13

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mFloat4Property:Lmiui/maml/folme/PropertyWrapper;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/VirtualAnimatedScreenElement;)Lmiui/maml/folme/PropertyWrapper;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mColor1Property:Lmiui/maml/folme/PropertyWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/elements/VirtualAnimatedScreenElement;)Lmiui/maml/folme/PropertyWrapper;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mColor2Property:Lmiui/maml/folme/PropertyWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/elements/VirtualAnimatedScreenElement;)Lmiui/maml/folme/PropertyWrapper;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mFloat1Property:Lmiui/maml/folme/PropertyWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/maml/elements/VirtualAnimatedScreenElement;)Lmiui/maml/folme/PropertyWrapper;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mFloat2Property:Lmiui/maml/folme/PropertyWrapper;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/maml/elements/VirtualAnimatedScreenElement;)Lmiui/maml/folme/PropertyWrapper;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mFloat3Property:Lmiui/maml/folme/PropertyWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/maml/elements/VirtualAnimatedScreenElement;)Lmiui/maml/folme/PropertyWrapper;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mFloat4Property:Lmiui/maml/folme/PropertyWrapper;

    return-object v0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected isInFolmeMode()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/VirtualAnimatedScreenElement;->mHasName:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public tick(J)V
    .registers 3

    return-void
.end method
