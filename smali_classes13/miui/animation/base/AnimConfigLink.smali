.class public Lmiui/animation/base/AnimConfigLink;
.super Ljava/lang/Object;
.source "AnimConfigLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/base/AnimConfigLink$IMapOperation;
    }
.end annotation


# static fields
.field private static mDelayOp:Lmiui/animation/base/AnimConfigLink$IMapOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/base/AnimConfigLink$IMapOperation<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mFlagsOp:Lmiui/animation/base/AnimConfigLink$IMapOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/base/AnimConfigLink$IMapOperation<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mFromSpeedOp:Lmiui/animation/base/AnimConfigLink$IMapOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/base/AnimConfigLink$IMapOperation<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static mMinDurationOp:Lmiui/animation/base/AnimConfigLink$IMapOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/base/AnimConfigLink$IMapOperation<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mTintModeOp:Lmiui/animation/base/AnimConfigLink$IMapOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/base/AnimConfigLink$IMapOperation<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public configList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/animation/base/AnimConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/animation/base/AnimConfigLink$1;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfigLink$1;-><init>()V

    sput-object v0, Lmiui/animation/base/AnimConfigLink;->mDelayOp:Lmiui/animation/base/AnimConfigLink$IMapOperation;

    new-instance v0, Lmiui/animation/base/AnimConfigLink$2;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfigLink$2;-><init>()V

    sput-object v0, Lmiui/animation/base/AnimConfigLink;->mTintModeOp:Lmiui/animation/base/AnimConfigLink$IMapOperation;

    new-instance v0, Lmiui/animation/base/AnimConfigLink$3;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfigLink$3;-><init>()V

    sput-object v0, Lmiui/animation/base/AnimConfigLink;->mFlagsOp:Lmiui/animation/base/AnimConfigLink$IMapOperation;

    new-instance v0, Lmiui/animation/base/AnimConfigLink$4;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfigLink$4;-><init>()V

    sput-object v0, Lmiui/animation/base/AnimConfigLink;->mFromSpeedOp:Lmiui/animation/base/AnimConfigLink$IMapOperation;

    new-instance v0, Lmiui/animation/base/AnimConfigLink$5;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfigLink$5;-><init>()V

    sput-object v0, Lmiui/animation/base/AnimConfigLink;->mMinDurationOp:Lmiui/animation/base/AnimConfigLink$IMapOperation;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    return-void
.end method

.method private static canNotApply(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;)Z
    .registers 3

    iget-object v0, p0, Lmiui/animation/base/AnimConfig;->relatedProperty:[Lmiui/animation/property/FloatProperty;

    invoke-static {v0}, Lmiui/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lmiui/animation/base/AnimConfig;->relatedProperty:[Lmiui/animation/property/FloatProperty;

    invoke-static {v0, p1}, Lmiui/animation/utils/CommonUtils;->inArray([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private isSameTag(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static varargs linkConfig([Lmiui/animation/base/AnimConfig;)Lmiui/animation/base/AnimConfigLink;
    .registers 5

    new-instance v0, Lmiui/animation/base/AnimConfigLink;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfigLink;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Lmiui/animation/base/AnimConfigLink;->add(Lmiui/animation/base/AnimConfig;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    return-object v0
.end method

.method private mapLink(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Lmiui/animation/base/AnimConfigLink$IMapOperation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lmiui/animation/property/FloatProperty;",
            "Lmiui/animation/base/AnimConfigLink$IMapOperation<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/base/AnimConfig;

    if-eqz p1, :cond_21

    iget-object v2, v1, Lmiui/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    if-eqz v2, :cond_21

    iget-object v2, v1, Lmiui/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    invoke-direct {p0, v2, p1}, Lmiui/animation/base/AnimConfigLink;->isSameTag(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_6

    :cond_21
    iget-object v2, v1, Lmiui/animation/base/AnimConfig;->relatedProperty:[Lmiui/animation/property/FloatProperty;

    invoke-static {v2}, Lmiui/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2, p4}, Lmiui/animation/base/AnimConfigLink$IMapOperation;->process(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_3b

    :cond_2f
    iget-object v2, v1, Lmiui/animation/base/AnimConfig;->relatedProperty:[Lmiui/animation/property/FloatProperty;

    invoke-static {v2, p2}, Lmiui/animation/utils/CommonUtils;->inArray([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p3, v1, p2, p4}, Lmiui/animation/base/AnimConfigLink$IMapOperation;->process(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    :cond_3b
    :goto_3b
    goto :goto_6

    :cond_3c
    return-object p4
.end method

.method private static srcPreferProperty(Lmiui/animation/base/AnimConfig;Lmiui/animation/base/AnimConfig;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_9

    if-eqz p1, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    return v0

    :cond_9
    iget-object v2, p0, Lmiui/animation/base/AnimConfig;->relatedProperty:[Lmiui/animation/property/FloatProperty;

    invoke-static {v2}, Lmiui/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p1, Lmiui/animation/base/AnimConfig;->relatedProperty:[Lmiui/animation/property/FloatProperty;

    invoke-static {v2}, Lmiui/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    return v0
.end method


# virtual methods
.method public add(Lmiui/animation/base/AnimConfig;)V
    .registers 4

    if-eqz p1, :cond_14

    iget-object v0, p0, Lmiui/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lmiui/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    new-instance v1, Lmiui/animation/base/AnimConfig;

    invoke-direct {v1, p1}, Lmiui/animation/base/AnimConfig;-><init>(Lmiui/animation/base/AnimConfig;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-void
.end method

.method public add(Lmiui/animation/base/AnimConfigLink;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p1, Lmiui/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/base/AnimConfig;

    invoke-virtual {p0, v1}, Lmiui/animation/base/AnimConfigLink;->add(Lmiui/animation/base/AnimConfig;)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lmiui/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getDelay(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J
    .registers 6

    sget-object v0, Lmiui/animation/base/AnimConfigLink;->mDelayOp:Lmiui/animation/base/AnimConfigLink$IMapOperation;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lmiui/animation/base/AnimConfigLink;->mapLink(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Lmiui/animation/base/AnimConfigLink$IMapOperation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEase(Lmiui/animation/property/FloatProperty;)Lmiui/animation/utils/EaseManager$EaseStyle;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/animation/base/AnimConfig;

    iget-object v4, v3, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    if-eqz v4, :cond_8

    iget-wide v4, v3, Lmiui/animation/base/AnimConfig;->effectFromValue:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_8

    invoke-static {v3, p1}, Lmiui/animation/base/AnimConfigLink;->canNotApply(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_8

    :cond_27
    if-eqz v0, :cond_39

    invoke-static {v1, v3}, Lmiui/animation/base/AnimConfigLink;->srcPreferProperty(Lmiui/animation/base/AnimConfig;Lmiui/animation/base/AnimConfig;)Z

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, v3, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    iget v4, v4, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v4}, Lmiui/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    :cond_39
    iget-object v0, v3, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    move-object v1, v3

    :cond_3c
    goto :goto_8

    :cond_3d
    if-nez v0, :cond_41

    sget-object v0, Lmiui/animation/utils/CommonUtils;->sDefEase:Lmiui/animation/utils/EaseManager$EaseStyle;

    :cond_41
    return-object v0
.end method

.method public getEaseEffectFromValue(Lmiui/animation/property/FloatProperty;DD)Lmiui/animation/utils/EaseManager$EaseStyle;
    .registers 12

    iget-object v0, p0, Lmiui/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/base/AnimConfig;

    iget-object v2, v1, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    if-eqz v2, :cond_6

    iget-wide v2, v1, Lmiui/animation/base/AnimConfig;->effectFromValue:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_6

    invoke-static {v1, p1}, Lmiui/animation/base/AnimConfigLink;->canNotApply(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_6

    :cond_25
    iget-wide v2, v1, Lmiui/animation/base/AnimConfig;->effectFromValue:D

    cmpl-double v2, v2, p2

    if-lez v2, :cond_34

    iget-wide v2, v1, Lmiui/animation/base/AnimConfig;->effectFromValue:D

    cmpg-double v2, v2, p4

    if-gtz v2, :cond_34

    iget-object v0, v1, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    return-object v0

    :cond_34
    goto :goto_6

    :cond_35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlags(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J
    .registers 6

    sget-object v0, Lmiui/animation/base/AnimConfigLink;->mFlagsOp:Lmiui/animation/base/AnimConfigLink$IMapOperation;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lmiui/animation/base/AnimConfigLink;->mapLink(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Lmiui/animation/base/AnimConfigLink$IMapOperation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFromSpeed(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)F
    .registers 5

    sget-object v0, Lmiui/animation/base/AnimConfigLink;->mFromSpeedOp:Lmiui/animation/base/AnimConfigLink$IMapOperation;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lmiui/animation/base/AnimConfigLink;->mapLink(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Lmiui/animation/base/AnimConfigLink$IMapOperation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getHead()Lmiui/animation/base/AnimConfig;
    .registers 3

    iget-object v0, p0, Lmiui/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/base/AnimConfig;

    return-object v0
.end method

.method public getMinDuration(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J
    .registers 6

    sget-object v0, Lmiui/animation/base/AnimConfigLink;->mMinDurationOp:Lmiui/animation/base/AnimConfigLink$IMapOperation;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lmiui/animation/base/AnimConfigLink;->mapLink(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Lmiui/animation/base/AnimConfigLink$IMapOperation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTintMode(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)I
    .registers 5

    sget-object v0, Lmiui/animation/base/AnimConfigLink;->mTintModeOp:Lmiui/animation/base/AnimConfigLink$IMapOperation;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lmiui/animation/base/AnimConfigLink;->mapLink(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Lmiui/animation/base/AnimConfigLink$IMapOperation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public remove(Lmiui/animation/base/AnimConfig;)V
    .registers 3

    iget-object v0, p0, Lmiui/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lmiui/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
