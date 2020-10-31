.class Lmiui/animation/internal/AnimCompositor;
.super Ljava/lang/Object;
.source "AnimCompositor.java"


# static fields
.field private static final MAP_PREFIX:Ljava/lang/String; = "    "


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAnimInfo(Lmiui/animation/IAnimTarget;Lmiui/animation/internal/TransitionInfo;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/animation/IAnimTarget;",
            "Lmiui/animation/internal/TransitionInfo;",
            ")",
            "Ljava/util/Map<",
            "Lmiui/animation/property/FloatProperty;",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAnimInfo, target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lmiui/animation/internal/TransitionInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lmiui/animation/internal/TransitionInfo;->fromPropValues:Landroid/util/ArrayMap;

    const-string v5, "    "

    invoke-static {v4, v5}, Lmiui/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "to = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lmiui/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Lmiui/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6d
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p1, Lmiui/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/property/FloatProperty;

    invoke-static {p0, v2, p1}, Lmiui/animation/internal/AnimCompositor;->createRunningInfo(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;Lmiui/animation/internal/TransitionInfo;)Lmiui/animation/internal/AnimRunningInfo;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    :cond_90
    return-object v0
.end method

.method private static createRunningInfo(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;Lmiui/animation/internal/TransitionInfo;)Lmiui/animation/internal/AnimRunningInfo;
    .registers 8

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAnimInfo for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lmiui/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toTag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lmiui/animation/internal/TransitionInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3e
    new-instance v0, Lmiui/animation/internal/AnimRunningInfo;

    invoke-direct {v0}, Lmiui/animation/internal/AnimRunningInfo;-><init>()V

    iget-wide v1, p2, Lmiui/animation/internal/TransitionInfo;->transitionId:J

    iput-wide v1, v0, Lmiui/animation/internal/AnimRunningInfo;->transId:J

    iput-object p0, v0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    iput-object p1, v0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, p2}, Lmiui/animation/internal/AnimRunningInfo;->setFromInfo(Lmiui/animation/internal/TransitionInfo;)V

    invoke-virtual {v0, p2}, Lmiui/animation/internal/AnimRunningInfo;->setToInfo(Lmiui/animation/internal/TransitionInfo;)V

    iget-object v1, p2, Lmiui/animation/internal/TransitionInfo;->config:Lmiui/animation/base/AnimConfigLink;

    invoke-virtual {v0, v1}, Lmiui/animation/internal/AnimRunningInfo;->setConfig(Lmiui/animation/base/AnimConfigLink;)V

    return-object v0
.end method
