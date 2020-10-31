.class Lmiui/animation/internal/TransitionInfo;
.super Ljava/lang/Object;
.source "TransitionInfo.java"


# static fields
.field private static sIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field config:Lmiui/animation/base/AnimConfigLink;

.field fromPropValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lmiui/animation/property/FloatProperty;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field target:Lmiui/animation/IAnimTarget;

.field toFlags:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lmiui/animation/property/FloatProperty;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field toPropValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lmiui/animation/property/FloatProperty;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field toTag:Ljava/lang/Object;

.field transitionId:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lmiui/animation/internal/TransitionInfo;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/TransitionInfo;->fromPropValues:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/TransitionInfo;->toFlags:Landroid/util/ArrayMap;

    sget-object v0, Lmiui/animation/internal/TransitionInfo;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/animation/internal/TransitionInfo;->transitionId:J

    iput-object p1, p0, Lmiui/animation/internal/TransitionInfo;->target:Lmiui/animation/IAnimTarget;

    iget-object v0, p0, Lmiui/animation/internal/TransitionInfo;->fromPropValues:Landroid/util/ArrayMap;

    invoke-direct {p0, v0, p2}, Lmiui/animation/internal/TransitionInfo;->toPropValues(Landroid/util/ArrayMap;Lmiui/animation/controller/AnimState;)V

    iget-object v0, p0, Lmiui/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    invoke-direct {p0, v0, p3}, Lmiui/animation/internal/TransitionInfo;->toPropValues(Landroid/util/ArrayMap;Lmiui/animation/controller/AnimState;)V

    invoke-virtual {p3}, Lmiui/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/internal/TransitionInfo;->toTag:Ljava/lang/Object;

    iput-object p4, p0, Lmiui/animation/internal/TransitionInfo;->config:Lmiui/animation/base/AnimConfigLink;

    invoke-virtual {p3, p4}, Lmiui/animation/controller/AnimState;->getAllConfig(Lmiui/animation/base/AnimConfigLink;)V

    return-void
.end method

.method private getValue(Lmiui/animation/controller/AnimState;Lmiui/animation/property/FloatProperty;)Ljava/lang/Number;
    .registers 4

    instance-of v0, p2, Lmiui/animation/property/IIntValueProperty;

    if-eqz v0, :cond_d

    invoke-virtual {p1, p2}, Lmiui/animation/controller/AnimState;->getInt(Lmiui/animation/property/FloatProperty;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-virtual {p1, p2}, Lmiui/animation/controller/AnimState;->getFloat(Lmiui/animation/property/FloatProperty;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private toPropValues(Landroid/util/ArrayMap;Lmiui/animation/controller/AnimState;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Lmiui/animation/property/FloatProperty;",
            "Ljava/lang/Number;",
            ">;",
            "Lmiui/animation/controller/AnimState;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Lmiui/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/property/FloatProperty;

    invoke-direct {p0, p2, v1}, Lmiui/animation/internal/TransitionInfo;->getValue(Lmiui/animation/controller/AnimState;Lmiui/animation/property/FloatProperty;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lmiui/animation/controller/AnimState;->getFlags(Lmiui/animation/property/FloatProperty;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_31

    iget-object v4, p0, Lmiui/animation/internal/TransitionInfo;->toFlags:Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    goto :goto_b

    :cond_32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionInfo{target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/internal/TransitionInfo;->target:Lmiui/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/internal/TransitionInfo;->fromPropValues:Landroid/util/ArrayMap;

    const-string v2, "    "

    invoke-static {v1, v2}, Lmiui/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Lmiui/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/internal/TransitionInfo;->config:Lmiui/animation/base/AnimConfigLink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
