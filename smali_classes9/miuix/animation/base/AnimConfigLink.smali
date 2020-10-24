.class public Lmiuix/animation/base/AnimConfigLink;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static mDelayOp:Lmiuix/animation/base/AnimConfigLink$IMapOperation;

.field private static mFlagsOp:Lmiuix/animation/base/AnimConfigLink$IMapOperation;

.field private static mFromSpeedOp:Lmiuix/animation/base/AnimConfigLink$IMapOperation;

.field private static mMinDurationOp:Lmiuix/animation/base/AnimConfigLink$IMapOperation;

.field private static mTintModeOp:Lmiuix/animation/base/AnimConfigLink$IMapOperation;


# instance fields
.field public configList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiuix/animation/base/AnimConfigLink$1;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfigLink$1;-><init>()V

    sput-object v0, Lmiuix/animation/base/AnimConfigLink;->mDelayOp:Lmiuix/animation/base/AnimConfigLink$IMapOperation;

    new-instance v0, Lmiuix/animation/base/AnimConfigLink$2;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfigLink$2;-><init>()V

    sput-object v0, Lmiuix/animation/base/AnimConfigLink;->mTintModeOp:Lmiuix/animation/base/AnimConfigLink$IMapOperation;

    new-instance v0, Lmiuix/animation/base/AnimConfigLink$3;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfigLink$3;-><init>()V

    sput-object v0, Lmiuix/animation/base/AnimConfigLink;->mFlagsOp:Lmiuix/animation/base/AnimConfigLink$IMapOperation;

    new-instance v0, Lmiuix/animation/base/AnimConfigLink$4;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfigLink$4;-><init>()V

    sput-object v0, Lmiuix/animation/base/AnimConfigLink;->mFromSpeedOp:Lmiuix/animation/base/AnimConfigLink$IMapOperation;

    new-instance v0, Lmiuix/animation/base/AnimConfigLink$5;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfigLink$5;-><init>()V

    sput-object v0, Lmiuix/animation/base/AnimConfigLink;->mMinDurationOp:Lmiuix/animation/base/AnimConfigLink$IMapOperation;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    return-void
.end method

.method private static canNotApply(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    invoke-static {v0}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lmiuix/animation/base/AnimConfig;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    invoke-static {p0, p1}, Lmiuix/animation/utils/CommonUtils;->inArray([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSameTag(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs linkConfig([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/base/AnimConfigLink;
    .locals 4

    new-instance v0, Lmiuix/animation/base/AnimConfigLink;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfigLink;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private mapLink(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfigLink$IMapOperation;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/base/AnimConfig;

    if-eqz p1, :cond_1

    iget-object v2, v1, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-direct {p0, v2, p1}, Lmiuix/animation/base/AnimConfigLink;->isSameTag(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lmiuix/animation/base/AnimConfig;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    invoke-static {v2}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2, p4}, Lmiuix/animation/base/AnimConfigLink$IMapOperation;->process(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lmiuix/animation/base/AnimConfig;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    invoke-static {v2, p2}, Lmiuix/animation/utils/CommonUtils;->inArray([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3, v1, p2, p4}, Lmiuix/animation/base/AnimConfigLink$IMapOperation;->process(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_0

    :cond_3
    return-object p4
.end method

.method private static srcPreferProperty(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimConfig;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object p0, p0, Lmiuix/animation/base/AnimConfig;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lmiuix/animation/base/AnimConfig;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method


# virtual methods
.method public add(Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0, p1}, Lmiuix/animation/base/AnimConfig;-><init>(Lmiuix/animation/base/AnimConfig;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public add(Lmiuix/animation/base/AnimConfigLink;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0, v0}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getDelay(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)J
    .locals 3

    sget-object v0, Lmiuix/animation/base/AnimConfigLink;->mDelayOp:Lmiuix/animation/base/AnimConfigLink$IMapOperation;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lmiuix/animation/base/AnimConfigLink;->mapLink(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfigLink$IMapOperation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getEase(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .locals 7

    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/base/AnimConfig;

    iget-object v3, v2, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eqz v3, :cond_0

    iget-wide v3, v2, Lmiuix/animation/base/AnimConfig;->effectFromValue:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_0

    invoke-static {v2, p1}, Lmiuix/animation/base/AnimConfigLink;->canNotApply(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v1, v2}, Lmiuix/animation/base/AnimConfigLink;->srcPreferProperty(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimConfig;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget v3, v3, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v3}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iget-object v0, v2, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-object v1, v2

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    sget-object v0, Lmiuix/animation/utils/CommonUtils;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    :cond_4
    return-object v0
.end method

.method public getEaseEffectFromValue(Lmiuix/animation/property/FloatProperty;DD)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .locals 5

    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/base/AnimConfig;

    iget-object v1, v0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lmiuix/animation/base/AnimConfig;->effectFromValue:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Lmiuix/animation/base/AnimConfigLink;->canNotApply(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, v0, Lmiuix/animation/base/AnimConfig;->effectFromValue:D

    cmpl-double v3, v1, p2

    if-lez v3, :cond_0

    cmpg-double v1, v1, p4

    if-gtz v1, :cond_0

    iget-object p0, v0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFlags(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)J
    .locals 3

    sget-object v0, Lmiuix/animation/base/AnimConfigLink;->mFlagsOp:Lmiuix/animation/base/AnimConfigLink$IMapOperation;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lmiuix/animation/base/AnimConfigLink;->mapLink(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfigLink$IMapOperation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getFromSpeed(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)F
    .locals 2

    sget-object v0, Lmiuix/animation/base/AnimConfigLink;->mFromSpeedOp:Lmiuix/animation/base/AnimConfigLink$IMapOperation;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lmiuix/animation/base/AnimConfigLink;->mapLink(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfigLink$IMapOperation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getHead()Lmiuix/animation/base/AnimConfig;
    .locals 1

    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method public getMinDuration(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)J
    .locals 3

    sget-object v0, Lmiuix/animation/base/AnimConfigLink;->mMinDurationOp:Lmiuix/animation/base/AnimConfigLink$IMapOperation;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lmiuix/animation/base/AnimConfigLink;->mapLink(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfigLink$IMapOperation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getTintMode(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)I
    .locals 2

    sget-object v0, Lmiuix/animation/base/AnimConfigLink;->mTintModeOp:Lmiuix/animation/base/AnimConfigLink$IMapOperation;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lmiuix/animation/base/AnimConfigLink;->mapLink(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfigLink$IMapOperation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public remove(Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
