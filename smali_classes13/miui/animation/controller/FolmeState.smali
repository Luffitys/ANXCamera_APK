.class public Lmiui/animation/controller/FolmeState;
.super Ljava/lang/Object;
.source "FolmeState.java"

# interfaces
.implements Lmiui/animation/controller/IFolmeStateStyle;


# static fields
.field private static final DEFAULT_INT_PROPERTY:Lmiui/animation/property/IntValueProperty;

.field private static final DEFAULT_PROPERTY:Lmiui/animation/property/ValueProperty;

.field private static final METHOD_GET_STATE:Ljava/lang/String; = "getState"

.field private static final TAG_AUTO_SET_TO:Ljava/lang/String; = "autoSetTo"

.field private static final TAG_PREDICT_FROM:Ljava/lang/String; = "predictFrom"

.field private static final TAG_PREDICT_TO:Ljava/lang/String; = "predictTo"

.field private static final TAG_SET_TO:Ljava/lang/String; = "defaultSetTo"

.field private static final TAG_TO:Ljava/lang/String; = "defaultTo"

.field private static final TARGET_PREDICT:Ljava/lang/String; = "predictTarget"

.field private static final sInterceptor:Lmiui/animation/utils/StyleComposer$IInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/utils/StyleComposer$IInterceptor<",
            "Lmiui/animation/controller/IFolmeStateStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoSetToState:Lmiui/animation/controller/AnimState;

.field private mCurTag:Ljava/lang/Object;

.field private mDelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableAnim:Z

.field private mPredictFrom:Lmiui/animation/controller/AnimState;

.field private mPredictTarget:Lmiui/animation/IAnimTarget;

.field private mPredictTo:Lmiui/animation/controller/AnimState;

.field private mSetToState:Lmiui/animation/controller/AnimState;

.field private mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lmiui/animation/controller/AnimState;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Lmiui/animation/IAnimTarget;

.field private mToState:Lmiui/animation/controller/AnimState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lmiui/animation/property/ValueProperty;

    const-string v1, "defaultProperty"

    invoke-direct {v0, v1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/controller/FolmeState;->DEFAULT_PROPERTY:Lmiui/animation/property/ValueProperty;

    new-instance v0, Lmiui/animation/property/IntValueProperty;

    const-string v1, "defaultIntProperty"

    invoke-direct {v0, v1}, Lmiui/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/controller/FolmeState;->DEFAULT_INT_PROPERTY:Lmiui/animation/property/IntValueProperty;

    new-instance v0, Lmiui/animation/controller/FolmeState$1;

    invoke-direct {v0}, Lmiui/animation/controller/FolmeState$1;-><init>()V

    sput-object v0, Lmiui/animation/controller/FolmeState;->sInterceptor:Lmiui/animation/utils/StyleComposer$IInterceptor;

    return-void
.end method

.method constructor <init>(Lmiui/animation/IAnimTarget;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/animation/controller/AnimState;

    const-string v1, "defaultTo"

    invoke-direct {v0, v1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/animation/controller/FolmeState;->mToState:Lmiui/animation/controller/AnimState;

    new-instance v0, Lmiui/animation/controller/AnimState;

    const-string v1, "defaultSetTo"

    invoke-direct {v0, v1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/animation/controller/FolmeState;->mSetToState:Lmiui/animation/controller/AnimState;

    new-instance v0, Lmiui/animation/controller/AnimState;

    const-string v1, "autoSetTo"

    invoke-direct {v0, v1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/animation/controller/FolmeState;->mAutoSetToState:Lmiui/animation/controller/AnimState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/controller/FolmeState;->mDelList:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/controller/FolmeState;->mStateMap:Ljava/util/Map;

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mToState:Lmiui/animation/controller/AnimState;

    iput-object v0, p0, Lmiui/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/animation/controller/FolmeState;->mEnableAnim:Z

    iput-object p1, p0, Lmiui/animation/controller/FolmeState;->mTarget:Lmiui/animation/IAnimTarget;

    return-void
.end method

.method static synthetic access$000(Lmiui/animation/controller/FolmeState;)Lmiui/animation/IAnimTarget;
    .registers 2

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mTarget:Lmiui/animation/IAnimTarget;

    return-object v0
.end method

.method private addConfigToLink(Lmiui/animation/base/AnimConfigLink;Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p2, Lmiui/animation/base/AnimConfig;

    if-eqz v0, :cond_c

    move-object v0, p2

    check-cast v0, Lmiui/animation/base/AnimConfig;

    invoke-virtual {p1, v0}, Lmiui/animation/base/AnimConfigLink;->add(Lmiui/animation/base/AnimConfig;)V

    const/4 v0, 0x1

    return v0

    :cond_c
    instance-of v0, p2, Lmiui/animation/base/AnimConfigLink;

    if-eqz v0, :cond_16

    move-object v0, p2

    check-cast v0, Lmiui/animation/base/AnimConfigLink;

    invoke-virtual {p1, v0}, Lmiui/animation/base/AnimConfigLink;->add(Lmiui/animation/base/AnimConfigLink;)V

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private varargs addProperty(Lmiui/animation/controller/AnimState;Lmiui/animation/property/FloatProperty;I[Ljava/lang/Object;)I
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_1c

    invoke-direct {p0, p3, p4}, Lmiui/animation/controller/FolmeState;->getPropertyValue(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1c

    invoke-direct {p0, p1, p2, v2}, Lmiui/animation/controller/FolmeState;->addPropertyValue(Lmiui/animation/controller/AnimState;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, p2, v1, p4}, Lmiui/animation/controller/FolmeState;->setInitVelocity(Lmiui/animation/property/FloatProperty;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    add-int/lit8 v0, v0, 0x1

    :cond_1c
    return v0
.end method

.method private varargs addProperty(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;[J)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lmiui/animation/property/FloatProperty;",
            "TT;[J)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    instance-of v1, p2, Lmiui/animation/property/IIntValueProperty;

    if-eqz v1, :cond_10

    invoke-static {p3}, Lmiui/animation/utils/CommonUtils;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p2, v1, p4}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    goto :goto_17

    :cond_10
    invoke-static {p3}, Lmiui/animation/utils/CommonUtils;->toFloatValue(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, p2, v1, p4}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    :goto_17
    return-void
.end method

.method private addPropertyValue(Lmiui/animation/controller/AnimState;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p3, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    instance-of v2, p3, Ljava/lang/Float;

    if-nez v2, :cond_f

    instance-of v2, p3, Ljava/lang/Double;

    if-eqz v2, :cond_e

    goto :goto_f

    :cond_e
    return v1

    :cond_f
    :goto_f
    instance-of v2, p2, Lmiui/animation/property/IIntValueProperty;

    if-eqz v2, :cond_1d

    invoke-direct {p0, p3, v0}, Lmiui/animation/controller/FolmeState;->toInt(Ljava/lang/Object;Z)I

    move-result v2

    new-array v1, v1, [J

    invoke-virtual {p1, p2, v2, v1}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    goto :goto_26

    :cond_1d
    invoke-direct {p0, p3, v0}, Lmiui/animation/controller/FolmeState;->toFloat(Ljava/lang/Object;Z)F

    move-result v2

    new-array v1, v1, [J

    invoke-virtual {p1, p2, v2, v1}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    :goto_26
    const/4 v1, 0x1

    return v1
.end method

.method private checkAndSetAnimConfig(Lmiui/animation/base/AnimConfigLink;Ljava/lang/Object;)Z
    .registers 9

    instance-of v0, p2, Lmiui/animation/listener/TransitionListener;

    const/4 v1, 0x1

    if-nez v0, :cond_36

    instance-of v0, p2, Lmiui/animation/utils/EaseManager$EaseStyle;

    if-eqz v0, :cond_a

    goto :goto_36

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    :goto_1a
    if-ge v2, v3, :cond_30

    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lmiui/animation/controller/FolmeState;->addConfigToLink(Lmiui/animation/base/AnimConfigLink;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v5, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v5, v1

    :goto_2c
    move v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_30
    return v0

    :cond_31
    invoke-direct {p0, p1, p2}, Lmiui/animation/controller/FolmeState;->addConfigToLink(Lmiui/animation/base/AnimConfigLink;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_36
    :goto_36
    invoke-virtual {p1}, Lmiui/animation/base/AnimConfigLink;->getHead()Lmiui/animation/base/AnimConfig;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiui/animation/controller/FolmeState;->setTempConfig(Lmiui/animation/base/AnimConfig;Ljava/lang/Object;)V

    return v1
.end method

.method private clearDefaultState(Lmiui/animation/controller/AnimState;)V
    .registers 3

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mSetToState:Lmiui/animation/controller/AnimState;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mToState:Lmiui/animation/controller/AnimState;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mAutoSetToState:Lmiui/animation/controller/AnimState;

    if-ne p1, v0, :cond_f

    :cond_c
    invoke-virtual {p1}, Lmiui/animation/controller/AnimState;->clear()V

    :cond_f
    return-void
.end method

.method public static varargs composeStyle([Lmiui/animation/IAnimTarget;)Lmiui/animation/controller/IFolmeStateStyle;
    .registers 5

    if-eqz p0, :cond_31

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_31

    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    new-instance v0, Lmiui/animation/controller/FolmeState;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lmiui/animation/controller/FolmeState;-><init>(Lmiui/animation/IAnimTarget;)V

    return-object v0

    :cond_13
    array-length v0, p0

    new-array v0, v0, [Lmiui/animation/controller/FolmeState;

    const/4 v1, 0x0

    :goto_17
    array-length v2, p0

    if-ge v1, v2, :cond_26

    new-instance v2, Lmiui/animation/controller/FolmeState;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lmiui/animation/controller/FolmeState;-><init>(Lmiui/animation/IAnimTarget;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_26
    const-class v1, Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiui/animation/controller/FolmeState;->sInterceptor:Lmiui/animation/utils/StyleComposer$IInterceptor;

    invoke-static {v1, v2, v0}, Lmiui/animation/utils/StyleComposer;->compose(Ljava/lang/Class;Lmiui/animation/utils/StyleComposer$IInterceptor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/controller/IFolmeStateStyle;

    return-object v1

    :cond_31
    :goto_31
    const/4 v0, 0x0

    return-object v0
.end method

.method private fromTo(Ljava/lang/Object;Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/IStateStyle;
    .registers 8

    iget-boolean v0, p0, Lmiui/animation/controller/FolmeState;->mEnableAnim:Z

    if-eqz v0, :cond_26

    iput-object p2, p0, Lmiui/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeState;->mToState:Lmiui/animation/controller/AnimState;

    if-eq v0, v1, :cond_11

    invoke-virtual {v1, p3}, Lmiui/animation/controller/AnimState;->getAllConfig(Lmiui/animation/base/AnimConfigLink;)V

    :cond_11
    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeState;->mTarget:Lmiui/animation/IAnimTarget;

    if-eqz p1, :cond_1e

    invoke-virtual {p0, p1}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v2

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {p0, p2}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p3}, Lmiui/animation/internal/AnimRunner;->run(Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)V

    :cond_26
    return-object p0
.end method

.method private getProperty(Ljava/lang/Object;Ljava/lang/Object;)Lmiui/animation/property/FloatProperty;
    .registers 7

    const/4 v0, 0x0

    instance-of v1, p1, Lmiui/animation/property/FloatProperty;

    if-eqz v1, :cond_9

    move-object v0, p1

    check-cast v0, Lmiui/animation/property/FloatProperty;

    goto :goto_3f

    :cond_9
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_21

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lmiui/animation/IAnimTarget;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiui/animation/property/FloatProperty;

    move-result-object v0

    goto :goto_3f

    :cond_21
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_28

    sget-object v0, Lmiui/animation/controller/FolmeState;->DEFAULT_PROPERTY:Lmiui/animation/property/ValueProperty;

    goto :goto_3f

    :cond_28
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/animation/IAnimTarget;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v0

    if-nez v0, :cond_3f

    sget-object v0, Lmiui/animation/controller/FolmeState;->DEFAULT_INT_PROPERTY:Lmiui/animation/property/IntValueProperty;

    :cond_3f
    :goto_3f
    return-object v0
.end method

.method private varargs getPropertyValue(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    array-length v0, p2

    if-ge p1, v0, :cond_6

    aget-object v0, p2, p1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0
.end method

.method private getState(Ljava/lang/Object;Z)Lmiui/animation/controller/AnimState;
    .registers 5

    instance-of v0, p1, Lmiui/animation/controller/AnimState;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lmiui/animation/controller/AnimState;

    goto :goto_1d

    :cond_8
    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/controller/AnimState;

    if-nez v0, :cond_1d

    if-eqz p2, :cond_1d

    new-instance v1, Lmiui/animation/controller/AnimState;

    invoke-direct {v1, p1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    invoke-virtual {p0, v0}, Lmiui/animation/controller/FolmeState;->addState(Lmiui/animation/controller/AnimState;)V

    :cond_1d
    :goto_1d
    return-object v0
.end method

.method private varargs getStateByArgs(Ljava/lang/Object;[Ljava/lang/Object;)Lmiui/animation/controller/AnimState;
    .registers 6

    const/4 v0, 0x0

    array-length v1, p2

    if-lez v1, :cond_11

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-direct {p0, v2, v1}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;Z)Lmiui/animation/controller/AnimState;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-direct {p0, p2}, Lmiui/animation/controller/FolmeState;->getStateByName([Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    :cond_11
    if-nez v0, :cond_17

    invoke-virtual {p0, p1}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    :cond_17
    return-object v0
.end method

.method private varargs getStateByName([Ljava/lang/Object;)Lmiui/animation/controller/AnimState;
    .registers 7

    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_b

    aget-object v1, p1, v3

    goto :goto_c

    :cond_b
    move-object v1, v2

    :goto_c
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_19

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_19

    invoke-direct {p0, v0, v3}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;Z)Lmiui/animation/controller/AnimState;

    move-result-object v2

    return-object v2

    :cond_19
    return-object v2
.end method

.method private handleFloatProperty(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V
    .registers 7

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mAutoSetToState:Lmiui/animation/controller/AnimState;

    invoke-virtual {v0, p1, p2}, Lmiui/animation/controller/AnimState;->get(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)F

    move-result v0

    invoke-virtual {p1, p2}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result v1

    sub-float v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p1, p2}, Lmiui/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_27

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [J

    invoke-virtual {v2, p2, v0, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    iget-object v2, p0, Lmiui/animation/controller/FolmeState;->mDelList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    return-void
.end method

.method private handleIntProperty(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V
    .registers 7

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mAutoSetToState:Lmiui/animation/controller/AnimState;

    invoke-virtual {v0, p2}, Lmiui/animation/controller/AnimState;->getInt(Lmiui/animation/property/FloatProperty;)I

    move-result v0

    move-object v1, p2

    check-cast v1, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {p1, v1}, Lmiui/animation/IAnimTarget;->getIntValue(Lmiui/animation/property/IIntValueProperty;)I

    move-result v1

    sub-int v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2}, Lmiui/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2b

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [J

    invoke-virtual {v2, p2, v0, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    iget-object v2, p0, Lmiui/animation/controller/FolmeState;->mDelList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    return-void
.end method

.method private initPredictTarget()V
    .registers 6

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mPredictTarget:Lmiui/animation/IAnimTarget;

    if-nez v0, :cond_1f

    const-string v0, "predictTarget"

    invoke-static {v0}, Lmiui/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiui/animation/ValueTarget;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/controller/FolmeState;->mPredictTarget:Lmiui/animation/IAnimTarget;

    new-instance v0, Lmiui/animation/controller/AnimState;

    const-string v1, "predictFrom"

    invoke-direct {v0, v1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/animation/controller/FolmeState;->mPredictFrom:Lmiui/animation/controller/AnimState;

    new-instance v0, Lmiui/animation/controller/AnimState;

    const-string v1, "predictTo"

    invoke-direct {v0, v1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/animation/controller/FolmeState;->mPredictTo:Lmiui/animation/controller/AnimState;

    goto :goto_29

    :cond_1f
    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mPredictFrom:Lmiui/animation/controller/AnimState;

    invoke-virtual {v0}, Lmiui/animation/controller/AnimState;->clear()V

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mPredictTo:Lmiui/animation/controller/AnimState;

    invoke-virtual {v0}, Lmiui/animation/controller/AnimState;->clear()V

    :goto_29
    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeState;->mPredictTo:Lmiui/animation/controller/AnimState;

    invoke-virtual {v1}, Lmiui/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v2}, Lmiui/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result v3

    iget-object v4, p0, Lmiui/animation/controller/FolmeState;->mPredictTarget:Lmiui/animation/IAnimTarget;

    invoke-virtual {v4, v2, v3}, Lmiui/animation/IAnimTarget;->setMinVisibleChange(Ljava/lang/Object;F)Lmiui/animation/IAnimTarget;

    goto :goto_37

    :cond_4d
    return-void
.end method

.method private isDefaultProperty(Lmiui/animation/property/FloatProperty;)Z
    .registers 3

    sget-object v0, Lmiui/animation/controller/FolmeState;->DEFAULT_PROPERTY:Lmiui/animation/property/ValueProperty;

    if-eq p1, v0, :cond_b

    sget-object v0, Lmiui/animation/controller/FolmeState;->DEFAULT_INT_PROPERTY:Lmiui/animation/property/IntValueProperty;

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private varargs nameToProperty([Ljava/lang/String;)[Lmiui/animation/property/FloatProperty;
    .registers 6

    array-length v0, p1

    new-array v0, v0, [Lmiui/animation/property/FloatProperty;

    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_13

    new-instance v2, Lmiui/animation/property/ValueProperty;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    return-object v0
.end method

.method private varargs parse(Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;[Ljava/lang/Object;)V
    .registers 13

    array-length v0, p3

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Lmiui/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_f
    array-length v1, p3

    if-ge v0, v1, :cond_2b

    aget-object v8, p3, v0

    add-int/lit8 v1, v0, 0x1

    array-length v2, p3

    if-ge v1, v2, :cond_1e

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p3, v1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    move-object v5, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    move v6, v0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lmiui/animation/controller/FolmeState;->setPropertyAndValue(Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;Ljava/lang/Object;Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result v0

    goto :goto_f

    :cond_2b
    return-void
.end method

.method private varargs setAnimState(Lmiui/animation/controller/AnimState;[Ljava/lang/Object;)Lmiui/animation/base/AnimConfigLink;
    .registers 5

    new-instance v0, Lmiui/animation/base/AnimConfigLink;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfigLink;-><init>()V

    new-instance v1, Lmiui/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiui/animation/base/AnimConfig;-><init>()V

    invoke-virtual {v0, v1}, Lmiui/animation/base/AnimConfigLink;->add(Lmiui/animation/base/AnimConfig;)V

    invoke-direct {p0, p1}, Lmiui/animation/controller/FolmeState;->clearDefaultState(Lmiui/animation/controller/AnimState;)V

    invoke-direct {p0, p1, v0, p2}, Lmiui/animation/controller/FolmeState;->parse(Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private varargs setInitVelocity(Lmiui/animation/property/FloatProperty;I[Ljava/lang/Object;)Z
    .registers 8

    array-length v0, p3

    const/4 v1, 0x0

    if-lt p2, v0, :cond_5

    return v1

    :cond_5
    aget-object v0, p3, p2

    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lmiui/animation/IAnimTarget;->setVelocity(Lmiui/animation/property/FloatProperty;D)V

    const/4 v1, 0x1

    return v1

    :cond_1c
    return v1
.end method

.method private varargs setPropertyAndValue(Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;Ljava/lang/Object;Ljava/lang/Object;I[Ljava/lang/Object;)I
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3}, Lmiui/animation/controller/FolmeState;->checkAndSetAnimConfig(Lmiui/animation/base/AnimConfigLink;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-direct {p0, p3, p4}, Lmiui/animation/controller/FolmeState;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Lmiui/animation/property/FloatProperty;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1d

    invoke-direct {p0, v2}, Lmiui/animation/controller/FolmeState;->isDefaultProperty(Lmiui/animation/property/FloatProperty;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, p5

    goto :goto_18

    :cond_16
    add-int/lit8 v1, p5, 0x1

    :goto_18
    move p5, v1

    invoke-direct {p0, p1, v2, p5, p6}, Lmiui/animation/controller/FolmeState;->addProperty(Lmiui/animation/controller/AnimState;Lmiui/animation/property/FloatProperty;I[Ljava/lang/Object;)I

    move-result v0

    :cond_1d
    if-lez v0, :cond_22

    add-int v1, p5, v0

    goto :goto_24

    :cond_22
    add-int/lit8 v1, p5, 0x1

    :goto_24
    return v1
.end method

.method private setTempConfig(Lmiui/animation/base/AnimConfig;Ljava/lang/Object;)V
    .registers 6

    instance-of v0, p2, Lmiui/animation/listener/TransitionListener;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Lmiui/animation/listener/TransitionListener;

    const/4 v1, 0x0

    move-object v2, p2

    check-cast v2, Lmiui/animation/listener/TransitionListener;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lmiui/animation/base/AnimConfig;->addListeners([Lmiui/animation/listener/TransitionListener;)Lmiui/animation/base/AnimConfig;

    goto :goto_1b

    :cond_11
    instance-of v0, p2, Lmiui/animation/utils/EaseManager$EaseStyle;

    if-eqz v0, :cond_1b

    move-object v0, p2

    check-cast v0, Lmiui/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p1, v0}, Lmiui/animation/base/AnimConfig;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/base/AnimConfig;

    :cond_1b
    :goto_1b
    return-void
.end method

.method private setTo(Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/IStateStyle;
    .registers 5

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mTarget:Lmiui/animation/IAnimTarget;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_17

    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_e

    goto :goto_17

    :cond_e
    new-instance v1, Lmiui/animation/controller/FolmeState$2;

    invoke-direct {v1, p0, p1, p2}, Lmiui/animation/controller/FolmeState$2;-><init>(Lmiui/animation/controller/FolmeState;Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)V

    invoke-virtual {v0, v1}, Lmiui/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    return-object p0

    :cond_17
    :goto_17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lmiui/animation/controller/FolmeState;->setTo([Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object v0

    return-object v0
.end method

.method private toFloat(Ljava/lang/Object;Z)F
    .registers 4

    if-eqz p2, :cond_b

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    goto :goto_12

    :cond_b
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_12
    return v0
.end method

.method private toInt(Ljava/lang/Object;Z)I
    .registers 4

    if-eqz p2, :cond_a

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_12

    :cond_a
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    :goto_12
    return v0
.end method


# virtual methods
.method public varargs add(Ljava/lang/String;Ljava/lang/Object;[J)Lmiui/animation/IStateStyle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;[J)",
            "Lmiui/animation/IStateStyle;"
        }
    .end annotation

    new-instance v0, Lmiui/animation/property/ValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lmiui/animation/controller/FolmeState;->add(Lmiui/animation/property/FloatProperty;Ljava/lang/Object;[J)Lmiui/animation/IStateStyle;

    move-result-object v0

    return-object v0
.end method

.method public varargs add(Lmiui/animation/property/FloatProperty;Ljava/lang/Object;[J)Lmiui/animation/IStateStyle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/animation/property/FloatProperty;",
            "TT;[J)",
            "Lmiui/animation/IStateStyle;"
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/animation/controller/FolmeState;->addProperty(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;[J)V

    return-object p0
.end method

.method public varargs addConfig(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)V
    .registers 4

    invoke-virtual {p0, p1}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/animation/controller/AnimState;->addConfig([Lmiui/animation/base/AnimConfig;)V

    return-void
.end method

.method public addInitProperty(Ljava/lang/String;Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lmiui/animation/IStateStyle;"
        }
    .end annotation

    new-instance v0, Lmiui/animation/property/ValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lmiui/animation/controller/FolmeState;->addInitProperty(Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object v0

    return-object v0
.end method

.method public addInitProperty(Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/animation/property/FloatProperty;",
            "TT;)",
            "Lmiui/animation/IStateStyle;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x2

    aput-wide v3, v1, v2

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/animation/controller/FolmeState;->addProperty(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;[J)V

    return-object p0
.end method

.method public addListener(Lmiui/animation/listener/TransitionListener;)Lmiui/animation/IStateStyle;
    .registers 5

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/controller/AnimState;->getGlobalConfig()Lmiui/animation/base/AnimConfig;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lmiui/animation/listener/TransitionListener;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lmiui/animation/base/AnimConfig;->addListeners([Lmiui/animation/listener/TransitionListener;)Lmiui/animation/base/AnimConfig;

    return-object p0
.end method

.method public addState(Lmiui/animation/controller/AnimState;)V
    .registers 4

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lmiui/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs autoSetTo([Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .registers 7

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeState;->mAutoSetToState:Lmiui/animation/controller/AnimState;

    invoke-direct {p0, v1, p1}, Lmiui/animation/controller/FolmeState;->setAnimState(Lmiui/animation/controller/AnimState;[Ljava/lang/Object;)Lmiui/animation/base/AnimConfigLink;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/animation/controller/AnimState;->clear()V

    iget-object v2, p0, Lmiui/animation/controller/FolmeState;->mDelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lmiui/animation/controller/FolmeState;->mAutoSetToState:Lmiui/animation/controller/AnimState;

    invoke-virtual {v2}, Lmiui/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/animation/property/FloatProperty;

    instance-of v4, v3, Lmiui/animation/property/IIntValueProperty;

    if-eqz v4, :cond_34

    invoke-direct {p0, v0, v3}, Lmiui/animation/controller/FolmeState;->handleIntProperty(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V

    goto :goto_37

    :cond_34
    invoke-direct {p0, v0, v3}, Lmiui/animation/controller/FolmeState;->handleFloatProperty(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V

    :goto_37
    goto :goto_20

    :cond_38
    iget-object v2, p0, Lmiui/animation/controller/FolmeState;->mDelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/animation/property/FloatProperty;

    iget-object v4, p0, Lmiui/animation/controller/FolmeState;->mAutoSetToState:Lmiui/animation/controller/AnimState;

    invoke-virtual {v4, v3}, Lmiui/animation/controller/AnimState;->remove(Lmiui/animation/property/FloatProperty;)Lmiui/animation/controller/AnimState;

    goto :goto_3e

    :cond_50
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lmiui/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    iget-object v2, p0, Lmiui/animation/controller/FolmeState;->mAutoSetToState:Lmiui/animation/controller/AnimState;

    invoke-direct {p0, v2, v1}, Lmiui/animation/controller/FolmeState;->setTo(Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/IStateStyle;

    return-object p0
.end method

.method public cancel()V
    .registers 4

    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeState;->mTarget:Lmiui/animation/IAnimTarget;

    const/4 v2, 0x0

    new-array v2, v2, [Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v1, v2}, Lmiui/animation/internal/AnimRunner;->cancel(Lmiui/animation/IAnimTarget;[Lmiui/animation/property/FloatProperty;)V

    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/animation/controller/FolmeState;->nameToProperty([Ljava/lang/String;)[Lmiui/animation/property/FloatProperty;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/animation/controller/FolmeState;->cancel([Lmiui/animation/property/FloatProperty;)V

    return-void
.end method

.method public varargs cancel([Lmiui/animation/property/FloatProperty;)V
    .registers 4

    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeState;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-virtual {v0, v1, p1}, Lmiui/animation/internal/AnimRunner;->cancel(Lmiui/animation/IAnimTarget;[Lmiui/animation/property/FloatProperty;)V

    return-void
.end method

.method public clean()V
    .registers 1

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->cancel()V

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public enableDefaultAnim(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/animation/controller/FolmeState;->mEnableAnim:Z

    return-void
.end method

.method public varargs end([Ljava/lang/Object;)V
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_29

    aget-object v4, p1, v3

    instance-of v5, v4, Lmiui/animation/property/FloatProperty;

    if-eqz v5, :cond_17

    move-object v5, v4

    check-cast v5, Lmiui/animation/property/FloatProperty;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_17
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_26

    new-instance v5, Lmiui/animation/property/ValueProperty;

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_29
    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v1

    iget-object v3, p0, Lmiui/animation/controller/FolmeState;->mTarget:Lmiui/animation/IAnimTarget;

    new-array v2, v2, [Lmiui/animation/property/FloatProperty;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1, v3, v2}, Lmiui/animation/internal/AnimRunner;->end(Lmiui/animation/IAnimTarget;[Lmiui/animation/property/FloatProperty;)V

    return-void
.end method

.method public varargs fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
    .registers 5

    invoke-static {p3}, Lmiui/animation/base/AnimConfigLink;->linkConfig([Lmiui/animation/base/AnimConfig;)Lmiui/animation/base/AnimConfigLink;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lmiui/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/IStateStyle;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentState()Lmiui/animation/controller/AnimState;
    .registers 2

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    if-nez v0, :cond_8

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mToState:Lmiui/animation/controller/AnimState;

    iput-object v0, p0, Lmiui/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    return-object v0
.end method

.method public getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;Z)Lmiui/animation/controller/AnimState;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Lmiui/animation/IAnimTarget;
    .registers 2

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mTarget:Lmiui/animation/IAnimTarget;

    return-object v0
.end method

.method public varargs predictDuration([Ljava/lang/Object;)J
    .registers 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lmiui/animation/controller/FolmeState;->initPredictTarget()V

    iget-object v1, v0, Lmiui/animation/controller/FolmeState;->mPredictTo:Lmiui/animation/controller/AnimState;

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lmiui/animation/controller/FolmeState;->setAnimState(Lmiui/animation/controller/AnimState;[Ljava/lang/Object;)Lmiui/animation/base/AnimConfigLink;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lmiui/animation/controller/FolmeState;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object v3

    iget-object v4, v0, Lmiui/animation/controller/FolmeState;->mPredictFrom:Lmiui/animation/controller/AnimState;

    iget-object v5, v0, Lmiui/animation/controller/FolmeState;->mPredictTo:Lmiui/animation/controller/AnimState;

    invoke-static {v3, v4, v5}, Lmiui/animation/controller/AnimState;->alignState(Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;)V

    const-wide/16 v9, 0x0

    iget-object v3, v0, Lmiui/animation/controller/FolmeState;->mPredictTarget:Lmiui/animation/IAnimTarget;

    iget-object v6, v0, Lmiui/animation/controller/FolmeState;->mPredictFrom:Lmiui/animation/controller/AnimState;

    iget-object v7, v0, Lmiui/animation/controller/FolmeState;->mPredictTo:Lmiui/animation/controller/AnimState;

    move-wide v4, v9

    move-object v8, v1

    invoke-static/range {v3 .. v8}, Lmiui/animation/internal/AnimRunner;->getAnimTask(Lmiui/animation/IAnimTarget;JLmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/internal/AnimTask;

    move-result-object v3

    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v4

    const-wide/16 v5, 0x10

    invoke-virtual {v4, v5, v6}, Lmiui/animation/internal/AnimRunner;->getAverageDelta(J)J

    move-result-wide v4

    :goto_30
    invoke-virtual {v3}, Lmiui/animation/internal/AnimTask;->isValid()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-virtual {v3}, Lmiui/animation/internal/AnimTask;->isFinished()Z

    move-result v6

    if-nez v6, :cond_49

    const/4 v6, 0x0

    new-array v6, v6, [J

    move-object v11, v3

    move-wide v12, v9

    move-wide v14, v4

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Lmiui/animation/internal/AnimTask;->run(JJ[J)V

    add-long/2addr v9, v4

    goto :goto_30

    :cond_49
    return-wide v9
.end method

.method public removeListener(Lmiui/animation/listener/TransitionListener;)Lmiui/animation/IStateStyle;
    .registers 5

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/controller/AnimState;->getGlobalConfig()Lmiui/animation/base/AnimConfig;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lmiui/animation/listener/TransitionListener;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lmiui/animation/base/AnimConfig;->removeListeners([Lmiui/animation/listener/TransitionListener;)Lmiui/animation/base/AnimConfig;

    return-object p0
.end method

.method public set(Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/animation/controller/FolmeState;->setup(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object v0

    return-object v0
.end method

.method public varargs setConfig(Lmiui/animation/base/AnimConfig;[Lmiui/animation/property/FloatProperty;)Lmiui/animation/IStateStyle;
    .registers 7

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    array-length v1, p2

    if-lez v1, :cond_18

    new-instance v1, Lmiui/animation/base/AnimConfig;

    invoke-direct {v1, p1}, Lmiui/animation/base/AnimConfig;-><init>(Lmiui/animation/base/AnimConfig;)V

    iput-object p2, v1, Lmiui/animation/base/AnimConfig;->relatedProperty:[Lmiui/animation/property/FloatProperty;

    const/4 v2, 0x1

    new-array v2, v2, [Lmiui/animation/base/AnimConfig;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lmiui/animation/controller/AnimState;->addConfig([Lmiui/animation/base/AnimConfig;)V

    goto :goto_1b

    :cond_18
    invoke-virtual {v0, p1}, Lmiui/animation/controller/AnimState;->setGlobalConfig(Lmiui/animation/base/AnimConfig;)V

    :goto_1b
    return-object p0
.end method

.method public varargs setEase(I[F)Lmiui/animation/IStateStyle;
    .registers 5

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/controller/AnimState;->getGlobalConfig()Lmiui/animation/base/AnimConfig;

    move-result-object v0

    invoke-static {p1, p2}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    iput-object v1, v0, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    return-object p0
.end method

.method public varargs setEase(Lmiui/animation/property/FloatProperty;I[F)Lmiui/animation/IStateStyle;
    .registers 6

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/animation/controller/AnimState;->getConfig(Lmiui/animation/property/FloatProperty;)Lmiui/animation/base/AnimConfig;

    move-result-object v0

    invoke-static {p2, p3}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    iput-object v1, v0, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    return-object p0
.end method

.method public varargs setEase(Lmiui/animation/utils/EaseManager$EaseStyle;[Lmiui/animation/property/FloatProperty;)Lmiui/animation/IStateStyle;
    .registers 5

    array-length v0, p2

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/controller/AnimState;->getGlobalConfig()Lmiui/animation/base/AnimConfig;

    move-result-object v0

    iput-object p1, v0, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    goto :goto_1b

    :cond_e
    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Lmiui/animation/controller/AnimState;->getConfig(Lmiui/animation/property/FloatProperty;)Lmiui/animation/base/AnimConfig;

    move-result-object v0

    iput-object p1, v0, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    :goto_1b
    return-object p0
.end method

.method public setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Lmiui/animation/base/AnimConfig;

    invoke-virtual {p0, p1, v0}, Lmiui/animation/controller/FolmeState;->setTo(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object v0

    return-object v0
.end method

.method public varargs setTo(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
    .registers 4

    invoke-static {p2}, Lmiui/animation/base/AnimConfigLink;->linkConfig([Lmiui/animation/base/AnimConfig;)Lmiui/animation/base/AnimConfigLink;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiui/animation/controller/FolmeState;->setTo(Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/IStateStyle;

    move-result-object v0

    return-object v0
.end method

.method public varargs setTo([Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .registers 4

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mSetToState:Lmiui/animation/controller/AnimState;

    invoke-direct {p0, v0, p1}, Lmiui/animation/controller/FolmeState;->getStateByArgs(Ljava/lang/Object;[Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lmiui/animation/controller/FolmeState;->setAnimState(Lmiui/animation/controller/AnimState;[Ljava/lang/Object;)Lmiui/animation/base/AnimConfigLink;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmiui/animation/controller/FolmeState;->setTo(Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/IStateStyle;

    return-object p0
.end method

.method public varargs setTransitionFlags(J[Lmiui/animation/property/FloatProperty;)Lmiui/animation/IStateStyle;
    .registers 6

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    array-length v1, p3

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lmiui/animation/controller/AnimState;->getGlobalConfig()Lmiui/animation/base/AnimConfig;

    move-result-object v1

    goto :goto_13

    :cond_c
    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Lmiui/animation/controller/AnimState;->getConfig(Lmiui/animation/property/FloatProperty;)Lmiui/animation/base/AnimConfig;

    move-result-object v1

    :goto_13
    nop

    iput-wide p1, v1, Lmiui/animation/base/AnimConfig;->flags:J

    return-object p0
.end method

.method public setup(Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .registers 2

    iput-object p1, p0, Lmiui/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    return-object p0
.end method

.method public varargs then(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
    .registers 6

    new-instance v0, Lmiui/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfig;-><init>()V

    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lmiui/animation/base/AnimConfig;->flags:J

    const/4 v1, 0x1

    new-array v1, v1, [Lmiui/animation/base/AnimConfig;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Lmiui/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmiui/animation/base/AnimConfig;

    invoke-virtual {p0, p1, v1}, Lmiui/animation/controller/FolmeState;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object v1

    return-object v1
.end method

.method public varargs then([Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .registers 5

    new-instance v0, Lmiui/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfig;-><init>()V

    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lmiui/animation/base/AnimConfig;->flags:J

    const/4 v1, 0x1

    new-array v1, v1, [Lmiui/animation/base/AnimConfig;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Lmiui/animation/controller/FolmeState;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object v1

    return-object v1
.end method

.method public varargs to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
    .registers 7

    instance-of v0, p1, Lmiui/animation/controller/AnimState;

    if-nez v0, :cond_39

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_39

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    array-length v2, p2

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p2

    invoke-static {p2, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v2}, Lmiui/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object v1

    return-object v1

    :cond_2c
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lmiui/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object v0

    return-object v0

    :cond_39
    :goto_39
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lmiui/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object v0

    return-object v0
.end method

.method public varargs to([Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .registers 5

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lmiui/animation/controller/FolmeState;->getStateByArgs(Ljava/lang/Object;[Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lmiui/animation/controller/FolmeState;->setAnimState(Lmiui/animation/controller/AnimState;[Ljava/lang/Object;)Lmiui/animation/base/AnimConfigLink;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lmiui/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/IStateStyle;

    move-result-object v1

    return-object v1
.end method

.method public varargs to([Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
    .registers 3

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lmiui/animation/controller/FolmeState;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object v0

    return-object v0
.end method
