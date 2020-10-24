.class public Lmiui/animation/controller/FolmeState;
.super Ljava/lang/Object;
.source ""

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


# instance fields
.field private mAutoSetToState:Lmiui/animation/controller/AnimState;

.field private mCurTag:Ljava/lang/Object;

.field private mDelList:Ljava/util/List;

.field private mEnableAnim:Z

.field private mPredictFrom:Lmiui/animation/controller/AnimState;

.field private mPredictTarget:Lmiui/animation/IAnimTarget;

.field private mPredictTo:Lmiui/animation/controller/AnimState;

.field private mSetToState:Lmiui/animation/controller/AnimState;

.field private mStateMap:Ljava/util/Map;

.field private mTarget:Lmiui/animation/IAnimTarget;

.field private mToState:Lmiui/animation/controller/AnimState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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
    .locals 2

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
    .locals 0

    iget-object p0, p0, Lmiui/animation/controller/FolmeState;->mTarget:Lmiui/animation/IAnimTarget;

    return-object p0
.end method

.method private addConfigToLink(Lmiui/animation/base/AnimConfigLink;Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p2, Lmiui/animation/base/AnimConfig;

    if-eqz p0, :cond_0

    check-cast p2, Lmiui/animation/base/AnimConfig;

    invoke-virtual {p1, p2}, Lmiui/animation/base/AnimConfigLink;->add(Lmiui/animation/base/AnimConfig;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of p0, p2, Lmiui/animation/base/AnimConfigLink;

    if-eqz p0, :cond_1

    check-cast p2, Lmiui/animation/base/AnimConfigLink;

    invoke-virtual {p1, p2}, Lmiui/animation/base/AnimConfigLink;->add(Lmiui/animation/base/AnimConfigLink;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private varargs addProperty(Lmiui/animation/controller/AnimState;Lmiui/animation/property/FloatProperty;I[Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-direct {p0, p3, p4}, Lmiui/animation/controller/FolmeState;->getPropertyValue(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, v1}, Lmiui/animation/controller/FolmeState;->addPropertyValue(Lmiui/animation/controller/AnimState;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr p3, v0

    invoke-direct {p0, p2, p3, p4}, Lmiui/animation/controller/FolmeState;->setInitVelocity(Lmiui/animation/property/FloatProperty;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private varargs addProperty(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;[J)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object p0

    instance-of p1, p2, Lmiui/animation/property/IIntValueProperty;

    if-eqz p1, :cond_0

    invoke-static {p3}, Lmiui/animation/utils/CommonUtils;->toIntValue(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p2, p1, p4}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lmiui/animation/utils/CommonUtils;->toFloatValue(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0, p2, p1, p4}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    :goto_0
    return-void
.end method

.method private addPropertyValue(Lmiui/animation/controller/AnimState;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p3, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v2, p3, Ljava/lang/Float;

    if-nez v2, :cond_1

    instance-of v2, p3, Ljava/lang/Double;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    instance-of v2, p2, Lmiui/animation/property/IIntValueProperty;

    if-eqz v2, :cond_2

    invoke-direct {p0, p3, v0}, Lmiui/animation/controller/FolmeState;->toInt(Ljava/lang/Object;Z)I

    move-result p0

    new-array p3, v1, [J

    invoke-virtual {p1, p2, p0, p3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    goto :goto_1

    :cond_2
    invoke-direct {p0, p3, v0}, Lmiui/animation/controller/FolmeState;->toFloat(Ljava/lang/Object;Z)F

    move-result p0

    new-array p3, v1, [J

    invoke-virtual {p1, p2, p0, p3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private checkAndSetAnimConfig(Lmiui/animation/base/AnimConfigLink;Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p2, Lmiui/animation/listener/TransitionListener;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    instance-of v0, p2, Lmiui/animation/utils/EaseManager$EaseStyle;

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lmiui/animation/controller/FolmeState;->addConfigToLink(Lmiui/animation/base/AnimConfigLink;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    invoke-direct {p0, p1, p2}, Lmiui/animation/controller/FolmeState;->addConfigToLink(Lmiui/animation/base/AnimConfigLink;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    :goto_3
    invoke-virtual {p1}, Lmiui/animation/base/AnimConfigLink;->getHead()Lmiui/animation/base/AnimConfig;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lmiui/animation/controller/FolmeState;->setTempConfig(Lmiui/animation/base/AnimConfig;Ljava/lang/Object;)V

    return v1
.end method

.method private clearDefaultState(Lmiui/animation/controller/AnimState;)V
    .locals 1

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mSetToState:Lmiui/animation/controller/AnimState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mToState:Lmiui/animation/controller/AnimState;

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lmiui/animation/controller/FolmeState;->mAutoSetToState:Lmiui/animation/controller/AnimState;

    if-ne p1, p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lmiui/animation/controller/AnimState;->clear()V

    :cond_1
    return-void
.end method

.method public static varargs composeStyle([Lmiui/animation/IAnimTarget;)Lmiui/animation/controller/IFolmeStateStyle;
    .locals 4

    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    new-instance v0, Lmiui/animation/controller/FolmeState;

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lmiui/animation/controller/FolmeState;-><init>(Lmiui/animation/IAnimTarget;)V

    return-object v0

    :cond_1
    array-length v0, p0

    new-array v0, v0, [Lmiui/animation/controller/FolmeState;

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    new-instance v2, Lmiui/animation/controller/FolmeState;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lmiui/animation/controller/FolmeState;-><init>(Lmiui/animation/IAnimTarget;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-class p0, Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/controller/FolmeState;->sInterceptor:Lmiui/animation/utils/StyleComposer$IInterceptor;

    invoke-static {p0, v1, v0}, Lmiui/animation/utils/StyleComposer;->compose(Ljava/lang/Class;Lmiui/animation/utils/StyleComposer$IInterceptor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/animation/controller/IFolmeStateStyle;

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private fromTo(Ljava/lang/Object;Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/IStateStyle;
    .locals 2

    iget-boolean v0, p0, Lmiui/animation/controller/FolmeState;->mEnableAnim:Z

    if-eqz v0, :cond_2

    iput-object p2, p0, Lmiui/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeState;->mToState:Lmiui/animation/controller/AnimState;

    if-eq v0, v1, :cond_0

    invoke-virtual {v1, p3}, Lmiui/animation/controller/AnimState;->getAllConfig(Lmiui/animation/base/AnimConfigLink;)V

    :cond_0
    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeState;->mTarget:Lmiui/animation/IAnimTarget;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2, p3}, Lmiui/animation/internal/AnimRunner;->run(Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)V

    :cond_2
    return-object p0
.end method

.method private getProperty(Ljava/lang/Object;Ljava/lang/Object;)Lmiui/animation/property/FloatProperty;
    .locals 2

    instance-of v0, p1, Lmiui/animation/property/FloatProperty;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lmiui/animation/property/FloatProperty;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object p0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lmiui/animation/IAnimTarget;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiui/animation/property/FloatProperty;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of p2, p1, Ljava/lang/Float;

    if-eqz p2, :cond_3

    sget-object v1, Lmiui/animation/controller/FolmeState;->DEFAULT_PROPERTY:Lmiui/animation/property/ValueProperty;

    goto :goto_0

    :cond_3
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object p0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiui/animation/IAnimTarget;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v1, Lmiui/animation/controller/FolmeState;->DEFAULT_INT_PROPERTY:Lmiui/animation/property/IntValueProperty;

    :cond_4
    :goto_0
    return-object v1
.end method

.method private varargs getPropertyValue(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    array-length p0, p2

    if-ge p1, p0, :cond_0

    aget-object p0, p2, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getState(Ljava/lang/Object;Z)Lmiui/animation/controller/AnimState;
    .locals 1

    instance-of v0, p1, Lmiui/animation/controller/AnimState;

    if-eqz v0, :cond_0

    check-cast p1, Lmiui/animation/controller/AnimState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/controller/AnimState;

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    new-instance p2, Lmiui/animation/controller/AnimState;

    invoke-direct {p2, p1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lmiui/animation/controller/FolmeState;->addState(Lmiui/animation/controller/AnimState;)V

    move-object p1, p2

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private varargs getStateByArgs(Ljava/lang/Object;[Ljava/lang/Object;)Lmiui/animation/controller/AnimState;
    .locals 2

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-direct {p0, v1, v0}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;Z)Lmiui/animation/controller/AnimState;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lmiui/animation/controller/FolmeState;->getStateByName([Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private varargs getStateByName([Ljava/lang/Object;)Lmiui/animation/controller/AnimState;
    .locals 4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    aget-object p1, p1, v3

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-direct {p0, v0, v3}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;Z)Lmiui/animation/controller/AnimState;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method private handleFloatProperty(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V
    .locals 2

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mAutoSetToState:Lmiui/animation/controller/AnimState;

    invoke-virtual {v0, p1, p2}, Lmiui/animation/controller/AnimState;->get(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)F

    move-result v0

    invoke-virtual {p1, p2}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result v1

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1, p2}, Lmiui/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result p1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-virtual {p1, p2, v0, v1}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    iget-object p0, p0, Lmiui/animation/controller/FolmeState;->mDelList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private handleIntProperty(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V
    .locals 2

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mAutoSetToState:Lmiui/animation/controller/AnimState;

    invoke-virtual {v0, p2}, Lmiui/animation/controller/AnimState;->getInt(Lmiui/animation/property/FloatProperty;)I

    move-result v0

    move-object v1, p2

    check-cast v1, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {p1, v1}, Lmiui/animation/IAnimTarget;->getIntValue(Lmiui/animation/property/IIntValueProperty;)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2}, Lmiui/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result p1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-virtual {p1, p2, v0, v1}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    iget-object p0, p0, Lmiui/animation/controller/FolmeState;->mDelList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private initPredictTarget()V
    .locals 5

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mPredictTarget:Lmiui/animation/IAnimTarget;

    if-nez v0, :cond_0

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

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mPredictFrom:Lmiui/animation/controller/AnimState;

    invoke-virtual {v0}, Lmiui/animation/controller/AnimState;->clear()V

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mPredictTo:Lmiui/animation/controller/AnimState;

    invoke-virtual {v0}, Lmiui/animation/controller/AnimState;->clear()V

    :goto_0
    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeState;->mPredictTo:Lmiui/animation/controller/AnimState;

    invoke-virtual {v1}, Lmiui/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v2}, Lmiui/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result v3

    iget-object v4, p0, Lmiui/animation/controller/FolmeState;->mPredictTarget:Lmiui/animation/IAnimTarget;

    invoke-virtual {v4, v2, v3}, Lmiui/animation/IAnimTarget;->setMinVisibleChange(Ljava/lang/Object;F)Lmiui/animation/IAnimTarget;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private isDefaultProperty(Lmiui/animation/property/FloatProperty;)Z
    .locals 0

    sget-object p0, Lmiui/animation/controller/FolmeState;->DEFAULT_PROPERTY:Lmiui/animation/property/ValueProperty;

    if-eq p1, p0, :cond_1

    sget-object p0, Lmiui/animation/controller/FolmeState;->DEFAULT_INT_PROPERTY:Lmiui/animation/property/IntValueProperty;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private varargs nameToProperty([Ljava/lang/String;)[Lmiui/animation/property/FloatProperty;
    .locals 3

    array-length p0, p1

    new-array p0, p0, [Lmiui/animation/property/FloatProperty;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    new-instance v1, Lmiui/animation/property/ValueProperty;

    aget-object v2, p1, v0

    invoke-direct {v1, v2}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private varargs parse(Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;[Ljava/lang/Object;)V
    .locals 8

    array-length v0, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lmiui/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v6, v0

    :goto_0
    array-length v0, p3

    if-ge v6, v0, :cond_2

    aget-object v4, p3, v6

    add-int/lit8 v0, v6, 0x1

    array-length v1, p3

    if-ge v0, v1, :cond_1

    aget-object v0, p3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lmiui/animation/controller/FolmeState;->setPropertyAndValue(Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;Ljava/lang/Object;Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result v6

    goto :goto_0

    :cond_2
    return-void
.end method

.method private varargs setAnimState(Lmiui/animation/controller/AnimState;[Ljava/lang/Object;)Lmiui/animation/base/AnimConfigLink;
    .locals 2

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
    .locals 2

    array-length v0, p3

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    return v1

    :cond_0
    aget-object p2, p3, p2

    instance-of p3, p2, Ljava/lang/Float;

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object p0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double p2, p2

    invoke-virtual {p0, p1, p2, p3}, Lmiui/animation/IAnimTarget;->setVelocity(Lmiui/animation/property/FloatProperty;D)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private varargs setPropertyAndValue(Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;Ljava/lang/Object;Ljava/lang/Object;I[Ljava/lang/Object;)I
    .locals 0

    invoke-direct {p0, p2, p3}, Lmiui/animation/controller/FolmeState;->checkAndSetAnimConfig(Lmiui/animation/base/AnimConfigLink;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0, p3, p4}, Lmiui/animation/controller/FolmeState;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Lmiui/animation/property/FloatProperty;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lmiui/animation/controller/FolmeState;->isDefaultProperty(Lmiui/animation/property/FloatProperty;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p5, p5, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, p5, p6}, Lmiui/animation/controller/FolmeState;->addProperty(Lmiui/animation/controller/AnimState;Lmiui/animation/property/FloatProperty;I[Ljava/lang/Object;)I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-lez p0, :cond_2

    add-int/2addr p5, p0

    goto :goto_2

    :cond_2
    add-int/lit8 p5, p5, 0x1

    :goto_2
    return p5
.end method

.method private setTempConfig(Lmiui/animation/base/AnimConfig;Ljava/lang/Object;)V
    .locals 1

    instance-of p0, p2, Lmiui/animation/listener/TransitionListener;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Lmiui/animation/listener/TransitionListener;

    const/4 v0, 0x0

    check-cast p2, Lmiui/animation/listener/TransitionListener;

    aput-object p2, p0, v0

    invoke-virtual {p1, p0}, Lmiui/animation/base/AnimConfig;->addListeners([Lmiui/animation/listener/TransitionListener;)Lmiui/animation/base/AnimConfig;

    goto :goto_0

    :cond_0
    instance-of p0, p2, Lmiui/animation/utils/EaseManager$EaseStyle;

    if-eqz p0, :cond_1

    check-cast p2, Lmiui/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p1, p2}, Lmiui/animation/base/AnimConfig;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/base/AnimConfig;

    :cond_1
    :goto_0
    return-void
.end method

.method private setTo(Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/IStateStyle;
    .locals 2

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mTarget:Lmiui/animation/IAnimTarget;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lmiui/animation/controller/FolmeState$2;

    invoke-direct {v1, p0, p1, p2}, Lmiui/animation/controller/FolmeState$2;-><init>(Lmiui/animation/controller/FolmeState;Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)V

    invoke-virtual {v0, v1}, Lmiui/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    return-object p0

    :cond_2
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Lmiui/animation/controller/FolmeState;->setTo([Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method private toFloat(Ljava/lang/Object;Z)F
    .locals 0

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method private toInt(Ljava/lang/Object;Z)I
    .locals 0

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-int p0, p0

    :goto_0
    return p0
.end method


# virtual methods
.method public varargs add(Ljava/lang/String;Ljava/lang/Object;[J)Lmiui/animation/IStateStyle;
    .locals 1

    new-instance v0, Lmiui/animation/property/ValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lmiui/animation/controller/FolmeState;->add(Lmiui/animation/property/FloatProperty;Ljava/lang/Object;[J)Lmiui/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs add(Lmiui/animation/property/FloatProperty;Ljava/lang/Object;[J)Lmiui/animation/IStateStyle;
    .locals 1

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/animation/controller/FolmeState;->addProperty(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;[J)V

    return-object p0
.end method

.method public varargs addConfig(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lmiui/animation/controller/AnimState;->addConfig([Lmiui/animation/base/AnimConfig;)V

    return-void
.end method

.method public addInitProperty(Ljava/lang/String;Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .locals 1

    new-instance v0, Lmiui/animation/property/ValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lmiui/animation/controller/FolmeState;->addInitProperty(Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public addInitProperty(Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .locals 5

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
    .locals 3

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
    .locals 1

    iget-object p0, p0, Lmiui/animation/controller/FolmeState;->mStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lmiui/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs autoSetTo([Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .locals 4

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeState;->mAutoSetToState:Lmiui/animation/controller/AnimState;

    invoke-direct {p0, v1, p1}, Lmiui/animation/controller/FolmeState;->setAnimState(Lmiui/animation/controller/AnimState;[Ljava/lang/Object;)Lmiui/animation/base/AnimConfigLink;

    move-result-object p1

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/animation/controller/AnimState;->clear()V

    iget-object v1, p0, Lmiui/animation/controller/FolmeState;->mDelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lmiui/animation/controller/FolmeState;->mAutoSetToState:Lmiui/animation/controller/AnimState;

    invoke-virtual {v1}, Lmiui/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/property/FloatProperty;

    instance-of v3, v2, Lmiui/animation/property/IIntValueProperty;

    if-eqz v3, :cond_0

    invoke-direct {p0, v0, v2}, Lmiui/animation/controller/FolmeState;->handleIntProperty(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v2}, Lmiui/animation/controller/FolmeState;->handleFloatProperty(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mDelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/property/FloatProperty;

    iget-object v2, p0, Lmiui/animation/controller/FolmeState;->mAutoSetToState:Lmiui/animation/controller/AnimState;

    invoke-virtual {v2, v1}, Lmiui/animation/controller/AnimState;->remove(Lmiui/animation/property/FloatProperty;)Lmiui/animation/controller/AnimState;

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lmiui/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mAutoSetToState:Lmiui/animation/controller/AnimState;

    invoke-direct {p0, v0, p1}, Lmiui/animation/controller/FolmeState;->setTo(Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/IStateStyle;

    return-object p0
.end method

.method public cancel()V
    .locals 2

    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v0

    iget-object p0, p0, Lmiui/animation/controller/FolmeState;->mTarget:Lmiui/animation/IAnimTarget;

    const/4 v1, 0x0

    new-array v1, v1, [Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, p0, v1}, Lmiui/animation/internal/AnimRunner;->cancel(Lmiui/animation/IAnimTarget;[Lmiui/animation/property/FloatProperty;)V

    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/animation/controller/FolmeState;->nameToProperty([Ljava/lang/String;)[Lmiui/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/animation/controller/FolmeState;->cancel([Lmiui/animation/property/FloatProperty;)V

    return-void
.end method

.method public varargs cancel([Lmiui/animation/property/FloatProperty;)V
    .locals 1

    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v0

    iget-object p0, p0, Lmiui/animation/controller/FolmeState;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-virtual {v0, p0, p1}, Lmiui/animation/internal/AnimRunner;->cancel(Lmiui/animation/IAnimTarget;[Lmiui/animation/property/FloatProperty;)V

    return-void
.end method

.method public clean()V
    .locals 0

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->cancel()V

    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lmiui/animation/controller/FolmeState;->mStateMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public enableDefaultAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/animation/controller/FolmeState;->mEnableAnim:Z

    return-void
.end method

.method public varargs end([Ljava/lang/Object;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    instance-of v5, v4, Lmiui/animation/property/FloatProperty;

    if-eqz v5, :cond_0

    check-cast v4, Lmiui/animation/property/FloatProperty;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    new-instance v5, Lmiui/animation/property/ValueProperty;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object p1

    iget-object p0, p0, Lmiui/animation/controller/FolmeState;->mTarget:Lmiui/animation/IAnimTarget;

    new-array v1, v2, [Lmiui/animation/property/FloatProperty;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/animation/property/FloatProperty;

    invoke-virtual {p1, p0, v0}, Lmiui/animation/internal/AnimRunner;->end(Lmiui/animation/IAnimTarget;[Lmiui/animation/property/FloatProperty;)V

    return-void
.end method

.method public varargs fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
    .locals 0

    invoke-static {p3}, Lmiui/animation/base/AnimConfigLink;->linkConfig([Lmiui/animation/base/AnimConfig;)Lmiui/animation/base/AnimConfigLink;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lmiui/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentState()Lmiui/animation/controller/AnimState;
    .locals 1

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mToState:Lmiui/animation/controller/AnimState;

    iput-object v0, p0, Lmiui/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method public getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;Z)Lmiui/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method public getTarget()Lmiui/animation/IAnimTarget;
    .locals 0

    iget-object p0, p0, Lmiui/animation/controller/FolmeState;->mTarget:Lmiui/animation/IAnimTarget;

    return-object p0
.end method

.method public varargs predictDuration([Ljava/lang/Object;)J
    .locals 13

    invoke-direct {p0}, Lmiui/animation/controller/FolmeState;->initPredictTarget()V

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mPredictTo:Lmiui/animation/controller/AnimState;

    invoke-direct {p0, v0, p1}, Lmiui/animation/controller/FolmeState;->setAnimState(Lmiui/animation/controller/AnimState;[Ljava/lang/Object;)Lmiui/animation/base/AnimConfigLink;

    move-result-object v6

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object p1

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mPredictFrom:Lmiui/animation/controller/AnimState;

    iget-object v1, p0, Lmiui/animation/controller/FolmeState;->mPredictTo:Lmiui/animation/controller/AnimState;

    invoke-static {p1, v0, v1}, Lmiui/animation/controller/AnimState;->alignState(Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;)V

    iget-object v1, p0, Lmiui/animation/controller/FolmeState;->mPredictTarget:Lmiui/animation/IAnimTarget;

    iget-object v4, p0, Lmiui/animation/controller/FolmeState;->mPredictFrom:Lmiui/animation/controller/AnimState;

    iget-object v5, p0, Lmiui/animation/controller/FolmeState;->mPredictTo:Lmiui/animation/controller/AnimState;

    const-wide/16 p0, 0x0

    move-wide v2, p0

    invoke-static/range {v1 .. v6}, Lmiui/animation/internal/AnimRunner;->getAnimTask(Lmiui/animation/IAnimTarget;JLmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/internal/AnimTask;

    move-result-object v0

    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Lmiui/animation/internal/AnimRunner;->getAverageDelta(J)J

    move-result-wide v1

    :goto_0
    invoke-virtual {v0}, Lmiui/animation/internal/AnimTask;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lmiui/animation/internal/AnimTask;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    new-array v12, v3, [J

    move-object v7, v0

    move-wide v8, p0

    move-wide v10, v1

    invoke-virtual/range {v7 .. v12}, Lmiui/animation/internal/AnimTask;->run(JJ[J)V

    add-long/2addr p0, v1

    goto :goto_0

    :cond_0
    return-wide p0
.end method

.method public removeListener(Lmiui/animation/listener/TransitionListener;)Lmiui/animation/IStateStyle;
    .locals 3

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
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/animation/controller/FolmeState;->setup(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs setConfig(Lmiui/animation/base/AnimConfig;[Lmiui/animation/property/FloatProperty;)Lmiui/animation/IStateStyle;
    .locals 2

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    array-length v1, p2

    if-lez v1, :cond_0

    new-instance v1, Lmiui/animation/base/AnimConfig;

    invoke-direct {v1, p1}, Lmiui/animation/base/AnimConfig;-><init>(Lmiui/animation/base/AnimConfig;)V

    iput-object p2, v1, Lmiui/animation/base/AnimConfig;->relatedProperty:[Lmiui/animation/property/FloatProperty;

    const/4 p1, 0x1

    new-array p1, p1, [Lmiui/animation/base/AnimConfig;

    const/4 p2, 0x0

    aput-object v1, p1, p2

    invoke-virtual {v0, p1}, Lmiui/animation/controller/AnimState;->addConfig([Lmiui/animation/base/AnimConfig;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lmiui/animation/controller/AnimState;->setGlobalConfig(Lmiui/animation/base/AnimConfig;)V

    :goto_0
    return-object p0
.end method

.method public varargs setEase(I[F)Lmiui/animation/IStateStyle;
    .locals 1

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/controller/AnimState;->getGlobalConfig()Lmiui/animation/base/AnimConfig;

    move-result-object v0

    invoke-static {p1, p2}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    iput-object p1, v0, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    return-object p0
.end method

.method public varargs setEase(Lmiui/animation/property/FloatProperty;I[F)Lmiui/animation/IStateStyle;
    .locals 1

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/animation/controller/AnimState;->getConfig(Lmiui/animation/property/FloatProperty;)Lmiui/animation/base/AnimConfig;

    move-result-object p1

    invoke-static {p2, p3}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object p2

    iput-object p2, p1, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    return-object p0
.end method

.method public varargs setEase(Lmiui/animation/utils/EaseManager$EaseStyle;[Lmiui/animation/property/FloatProperty;)Lmiui/animation/IStateStyle;
    .locals 2

    array-length v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object p2

    invoke-virtual {p2}, Lmiui/animation/controller/AnimState;->getGlobalConfig()Lmiui/animation/base/AnimConfig;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-virtual {v0, p2}, Lmiui/animation/controller/AnimState;->getConfig(Lmiui/animation/property/FloatProperty;)Lmiui/animation/base/AnimConfig;

    move-result-object p2

    :goto_0
    iput-object p1, p2, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    return-object p0
.end method

.method public setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lmiui/animation/base/AnimConfig;

    invoke-virtual {p0, p1, v0}, Lmiui/animation/controller/FolmeState;->setTo(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs setTo(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
    .locals 0

    invoke-static {p2}, Lmiui/animation/base/AnimConfigLink;->linkConfig([Lmiui/animation/base/AnimConfig;)Lmiui/animation/base/AnimConfigLink;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lmiui/animation/controller/FolmeState;->setTo(Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs setTo([Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mSetToState:Lmiui/animation/controller/AnimState;

    invoke-direct {p0, v0, p1}, Lmiui/animation/controller/FolmeState;->getStateByArgs(Ljava/lang/Object;[Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lmiui/animation/controller/FolmeState;->setAnimState(Lmiui/animation/controller/AnimState;[Ljava/lang/Object;)Lmiui/animation/base/AnimConfigLink;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmiui/animation/controller/FolmeState;->setTo(Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/IStateStyle;

    return-object p0
.end method

.method public varargs setTransitionFlags(J[Lmiui/animation/property/FloatProperty;)Lmiui/animation/IStateStyle;
    .locals 2

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    array-length v1, p3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lmiui/animation/controller/AnimState;->getGlobalConfig()Lmiui/animation/base/AnimConfig;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object p3, p3, v1

    invoke-virtual {v0, p3}, Lmiui/animation/controller/AnimState;->getConfig(Lmiui/animation/property/FloatProperty;)Lmiui/animation/base/AnimConfig;

    move-result-object p3

    :goto_0
    iput-wide p1, p3, Lmiui/animation/base/AnimConfig;->flags:J

    return-object p0
.end method

.method public setup(Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .locals 0

    iput-object p1, p0, Lmiui/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    return-object p0
.end method

.method public varargs then(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
    .locals 3

    new-instance v0, Lmiui/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfig;-><init>()V

    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lmiui/animation/base/AnimConfig;->flags:J

    const/4 v1, 0x1

    new-array v1, v1, [Lmiui/animation/base/AnimConfig;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Lmiui/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lmiui/animation/base/AnimConfig;

    invoke-virtual {p0, p1, p2}, Lmiui/animation/controller/FolmeState;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs then([Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .locals 3

    new-instance v0, Lmiui/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfig;-><init>()V

    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lmiui/animation/base/AnimConfig;->flags:J

    const/4 v1, 0x1

    new-array v1, v1, [Lmiui/animation/base/AnimConfig;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Lmiui/animation/controller/FolmeState;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
    .locals 3

    instance-of v0, p1, Lmiui/animation/controller/AnimState;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/animation/controller/FolmeState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    array-length v2, p2

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    invoke-static {p2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v2}, Lmiui/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Lmiui/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lmiui/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lmiui/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs to([Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .locals 2

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lmiui/animation/controller/FolmeState;->getStateByArgs(Ljava/lang/Object;[Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lmiui/animation/controller/FolmeState;->setAnimState(Lmiui/animation/controller/AnimState;[Ljava/lang/Object;)Lmiui/animation/base/AnimConfigLink;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lmiui/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs to([Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
    .locals 1

    invoke-virtual {p0}, Lmiui/animation/controller/FolmeState;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lmiui/animation/controller/FolmeState;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method
