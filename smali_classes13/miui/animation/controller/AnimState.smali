.class public Lmiui/animation/controller/AnimState;
.super Ljava/lang/Object;
.source "AnimState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/controller/AnimState$StateValue;
    }
.end annotation


# static fields
.field public static final FLAG_DELTA:J = 0x1L

.field public static final FLAG_INIT:J = 0x2L

.field private static STEP:I = 0x0

.field public static final VIEW_POS:I

.field public static final VIEW_SIZE:I = 0xf4240


# instance fields
.field private mGlobalConfig:Lmiui/animation/base/AnimConfig;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiui/animation/property/FloatProperty;",
            "Lmiui/animation/controller/AnimState$StateValue;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x64

    sput v0, Lmiui/animation/controller/AnimState;->STEP:I

    const v1, 0xf4240

    add-int/2addr v0, v1

    sput v0, Lmiui/animation/controller/AnimState;->VIEW_POS:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiui/animation/controller/AnimState;->mGlobalConfig:Lmiui/animation/base/AnimConfig;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    if-eqz p1, :cond_16

    iput-object p1, p0, Lmiui/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    return-void

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tag mustn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addPropertyTo(Lmiui/animation/controller/AnimState;Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V
    .registers 5

    instance-of v0, p2, Lmiui/animation/property/IIntValueProperty;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    move-object v0, p2

    check-cast v0, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {p1, v0}, Lmiui/animation/IAnimTarget;->getIntValue(Lmiui/animation/property/IIntValueProperty;)I

    move-result v0

    new-array v1, v1, [J

    invoke-virtual {p0, p2, v0, v1}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    goto :goto_1b

    :cond_12
    invoke-virtual {p1, p2}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result v0

    new-array v1, v1, [J

    invoke-virtual {p0, p2, v0, v1}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    :goto_1b
    return-void
.end method

.method public static alignState(Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;)V
    .registers 8

    invoke-virtual {p2}, Lmiui/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/property/FloatProperty;

    invoke-direct {p2, v1}, Lmiui/animation/controller/AnimState;->getStateValue(Lmiui/animation/property/FloatProperty;)Lmiui/animation/controller/AnimState$StateValue;

    move-result-object v2

    iget v3, v2, Lmiui/animation/controller/AnimState$StateValue;->value:F

    const v4, 0x49742400    # 1000000.0f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_8

    sget v4, Lmiui/animation/controller/AnimState;->VIEW_POS:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_8

    invoke-virtual {p1, v1}, Lmiui/animation/controller/AnimState;->contains(Lmiui/animation/property/FloatProperty;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_8

    :cond_2f
    invoke-static {p1, p0, v1}, Lmiui/animation/controller/AnimState;->addPropertyTo(Lmiui/animation/controller/AnimState;Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V

    goto :goto_8

    :cond_33
    return-void
.end method

.method private append(Lmiui/animation/controller/AnimState;)V
    .registers 6

    iget-object v0, p1, Lmiui/animation/controller/AnimState;->mGlobalConfig:Lmiui/animation/base/AnimConfig;

    iput-object v0, p0, Lmiui/animation/controller/AnimState;->mGlobalConfig:Lmiui/animation/base/AnimConfig;

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p1, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/property/FloatProperty;

    new-instance v2, Lmiui/animation/controller/AnimState$StateValue;

    iget-object v3, p1, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/animation/controller/AnimState$StateValue;

    invoke-direct {v2, v3}, Lmiui/animation/controller/AnimState$StateValue;-><init>(Lmiui/animation/controller/AnimState$StateValue;)V

    iget-object v3, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_32
    return-void
.end method

.method private getStateValue(Lmiui/animation/property/FloatProperty;)Lmiui/animation/controller/AnimState$StateValue;
    .registers 4

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/controller/AnimState$StateValue;

    if-nez v0, :cond_15

    new-instance v1, Lmiui/animation/controller/AnimState$StateValue;

    invoke-direct {v1}, Lmiui/animation/controller/AnimState$StateValue;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method


# virtual methods
.method public varargs add(Ljava/lang/String;F[J)Lmiui/animation/controller/AnimState;
    .registers 5

    new-instance v0, Lmiui/animation/property/ValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    return-object v0
.end method

.method public varargs add(Ljava/lang/String;I[J)Lmiui/animation/controller/AnimState;
    .registers 5

    new-instance v0, Lmiui/animation/property/IntValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    return-object v0
.end method

.method public varargs add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;
    .registers 8

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/controller/AnimState$StateValue;

    if-nez v0, :cond_15

    new-instance v1, Lmiui/animation/controller/AnimState$StateValue;

    invoke-direct {v1}, Lmiui/animation/controller/AnimState$StateValue;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {v0, p2}, Lmiui/animation/controller/AnimState$StateValue;->setValue(F)Lmiui/animation/controller/AnimState$StateValue;

    move-result-object v1

    array-length v2, p3

    if-lez v2, :cond_20

    const/4 v2, 0x0

    aget-wide v2, p3, v2

    goto :goto_22

    :cond_20
    const-wide/16 v2, 0x0

    :goto_22
    invoke-virtual {v1, v2, v3}, Lmiui/animation/controller/AnimState$StateValue;->setFlags(J)Lmiui/animation/controller/AnimState$StateValue;

    return-object p0
.end method

.method public varargs add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;
    .registers 8

    instance-of v0, p1, Lmiui/animation/property/IIntValueProperty;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/controller/AnimState$StateValue;

    if-nez v0, :cond_19

    new-instance v1, Lmiui/animation/controller/AnimState$StateValue;

    invoke-direct {v1}, Lmiui/animation/controller/AnimState$StateValue;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-virtual {v0, p2}, Lmiui/animation/controller/AnimState$StateValue;->setIntValue(I)Lmiui/animation/controller/AnimState$StateValue;

    move-result-object v1

    array-length v2, p3

    if-lez v2, :cond_24

    const/4 v2, 0x0

    aget-wide v2, p3, v2

    goto :goto_26

    :cond_24
    const-wide/16 v2, 0x0

    :goto_26
    invoke-virtual {v1, v2, v3}, Lmiui/animation/controller/AnimState$StateValue;->setFlags(J)Lmiui/animation/controller/AnimState$StateValue;

    goto :goto_2e

    :cond_2a
    int-to-float v0, p2

    invoke-virtual {p0, p1, v0, p3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    :goto_2e
    return-object p0
.end method

.method public varargs add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    return-object v0
.end method

.method public varargs add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    return-object v0
.end method

.method public varargs addConfig([Lmiui/animation/base/AnimConfig;)V
    .registers 11

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_25

    aget-object v3, p1, v2

    iget-object v4, v3, Lmiui/animation/base/AnimConfig;->relatedProperty:[Lmiui/animation/property/FloatProperty;

    invoke-static {v4}, Lmiui/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    iget-object v4, v3, Lmiui/animation/base/AnimConfig;->relatedProperty:[Lmiui/animation/property/FloatProperty;

    array-length v5, v4

    move v6, v1

    :goto_13
    if-ge v6, v5, :cond_22

    aget-object v7, v4, v6

    invoke-direct {p0, v7}, Lmiui/animation/controller/AnimState;->getStateValue(Lmiui/animation/property/FloatProperty;)Lmiui/animation/controller/AnimState$StateValue;

    move-result-object v8

    iput-object v3, v8, Lmiui/animation/controller/AnimState$StateValue;->config:Lmiui/animation/base/AnimConfig;

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_20
    iput-object v3, p0, Lmiui/animation/controller/AnimState;->mGlobalConfig:Lmiui/animation/base/AnimConfig;

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_25
    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Lmiui/animation/property/FloatProperty;)Z
    .registers 3

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public enable(Lmiui/animation/property/FloatProperty;Z)V
    .registers 4

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/controller/AnimState$StateValue;

    if-eqz v0, :cond_c

    iput-boolean p2, v0, Lmiui/animation/controller/AnimState$StateValue;->enable:Z

    :cond_c
    return-void
.end method

.method public get(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)F
    .registers 5

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/controller/AnimState$StateValue;

    if-eqz v0, :cond_15

    iget v1, v0, Lmiui/animation/controller/AnimState$StateValue;->value:F

    invoke-static {p1, p2, v1}, Lmiui/animation/internal/AnimValueUtils;->getValue(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;F)F

    move-result v1

    iput v1, v0, Lmiui/animation/controller/AnimState$StateValue;->value:F

    iget v1, v0, Lmiui/animation/controller/AnimState$StateValue;->value:F

    return v1

    :cond_15
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    return v1
.end method

.method public getAllConfig(Lmiui/animation/base/AnimConfigLink;)V
    .registers 5

    invoke-virtual {p0}, Lmiui/animation/controller/AnimState;->getGlobalConfig()Lmiui/animation/base/AnimConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/animation/base/AnimConfigLink;->add(Lmiui/animation/base/AnimConfig;)V

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/controller/AnimState$StateValue;

    iget-object v2, v1, Lmiui/animation/controller/AnimState$StateValue;->config:Lmiui/animation/base/AnimConfig;

    if-eqz v2, :cond_26

    iget-object v2, v1, Lmiui/animation/controller/AnimState$StateValue;->config:Lmiui/animation/base/AnimConfig;

    invoke-virtual {p1, v2}, Lmiui/animation/base/AnimConfigLink;->add(Lmiui/animation/base/AnimConfig;)V

    :cond_26
    goto :goto_11

    :cond_27
    return-void
.end method

.method public getConfig(Lmiui/animation/property/FloatProperty;)Lmiui/animation/base/AnimConfig;
    .registers 4

    invoke-direct {p0, p1}, Lmiui/animation/controller/AnimState;->getStateValue(Lmiui/animation/property/FloatProperty;)Lmiui/animation/controller/AnimState$StateValue;

    move-result-object v0

    iget-object v1, v0, Lmiui/animation/controller/AnimState$StateValue;->config:Lmiui/animation/base/AnimConfig;

    if-nez v1, :cond_f

    new-instance v1, Lmiui/animation/base/AnimConfig;

    invoke-direct {v1, p1}, Lmiui/animation/base/AnimConfig;-><init>(Lmiui/animation/property/FloatProperty;)V

    iput-object v1, v0, Lmiui/animation/controller/AnimState$StateValue;->config:Lmiui/animation/base/AnimConfig;

    :cond_f
    iget-object v1, v0, Lmiui/animation/controller/AnimState$StateValue;->config:Lmiui/animation/base/AnimConfig;

    return-object v1
.end method

.method public getFlags(Lmiui/animation/property/FloatProperty;)J
    .registers 5

    invoke-direct {p0, p1}, Lmiui/animation/controller/AnimState;->getStateValue(Lmiui/animation/property/FloatProperty;)Lmiui/animation/controller/AnimState$StateValue;

    move-result-object v0

    iget-wide v1, v0, Lmiui/animation/controller/AnimState$StateValue;->flags:J

    return-wide v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 3

    new-instance v0, Lmiui/animation/property/ValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/animation/controller/AnimState;->getFloat(Lmiui/animation/property/FloatProperty;)F

    move-result v0

    return v0
.end method

.method public getFloat(Lmiui/animation/property/FloatProperty;)F
    .registers 4

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/controller/AnimState$StateValue;

    if-eqz v0, :cond_d

    iget v1, v0, Lmiui/animation/controller/AnimState$StateValue;->value:F

    goto :goto_10

    :cond_d
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :goto_10
    return v1
.end method

.method public getGlobalConfig()Lmiui/animation/base/AnimConfig;
    .registers 2

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mGlobalConfig:Lmiui/animation/base/AnimConfig;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiui/animation/controller/AnimState;->mGlobalConfig:Lmiui/animation/base/AnimConfig;

    :cond_b
    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mGlobalConfig:Lmiui/animation/base/AnimConfig;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3

    new-instance v0, Lmiui/animation/property/IntValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/animation/controller/AnimState;->getInt(Lmiui/animation/property/FloatProperty;)I

    move-result v0

    return v0
.end method

.method public getInt(Lmiui/animation/property/FloatProperty;)I
    .registers 4

    instance-of v0, p1, Lmiui/animation/property/IIntValueProperty;

    const v1, 0x7fffffff

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/controller/AnimState$StateValue;

    if-eqz v0, :cond_15

    iget v1, v0, Lmiui/animation/controller/AnimState$StateValue;->intValue:I

    return v1

    :cond_15
    return v1
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public hasFlags(Lmiui/animation/property/FloatProperty;J)Z
    .registers 7

    invoke-direct {p0, p1}, Lmiui/animation/controller/AnimState;->getStateValue(Lmiui/animation/property/FloatProperty;)Lmiui/animation/controller/AnimState$StateValue;

    move-result-object v0

    iget-wide v1, v0, Lmiui/animation/controller/AnimState$StateValue;->flags:J

    invoke-static {v1, v2, p2, p3}, Lmiui/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lmiui/animation/property/FloatProperty;)Z
    .registers 4

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/controller/AnimState$StateValue;

    if-eqz v0, :cond_10

    iget-boolean v1, v0, Lmiui/animation/controller/AnimState$StateValue;->enable:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lmiui/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lmiui/animation/property/FloatProperty;)Lmiui/animation/controller/AnimState;
    .registers 3

    iget-object v0, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public set(Lmiui/animation/controller/AnimState;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p1, Lmiui/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    iput-object v0, p0, Lmiui/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lmiui/animation/controller/AnimState;->append(Lmiui/animation/controller/AnimState;)V

    return-void
.end method

.method setGlobalConfig(Lmiui/animation/base/AnimConfig;)V
    .registers 2

    iput-object p1, p0, Lmiui/animation/controller/AnimState;->mGlobalConfig:Lmiui/animation/base/AnimConfig;

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lmiui/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nAnimState{mTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMaps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/controller/AnimState;->mMap:Ljava/util/Map;

    const-string v2, "    "

    invoke-static {v1, v2}, Lmiui/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
