.class Lmiuix/animation/internal/TransitionInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field config:Lmiuix/animation/base/AnimConfigLink;

.field fromPropValues:Landroid/util/ArrayMap;

.field target:Lmiuix/animation/IAnimTarget;

.field toFlags:Landroid/util/ArrayMap;

.field toPropValues:Landroid/util/ArrayMap;

.field toTag:Ljava/lang/Object;

.field transitionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lmiuix/animation/internal/TransitionInfo;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->fromPropValues:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->toFlags:Landroid/util/ArrayMap;

    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/animation/internal/TransitionInfo;->transitionId:J

    iput-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->fromPropValues:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, p2}, Lmiuix/animation/internal/TransitionInfo;->toPropValues(Landroid/util/ArrayMap;Lmiuix/animation/controller/AnimState;)V

    iget-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, p3}, Lmiuix/animation/internal/TransitionInfo;->toPropValues(Landroid/util/ArrayMap;Lmiuix/animation/controller/AnimState;)V

    invoke-virtual {p3}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->toTag:Ljava/lang/Object;

    iput-object p4, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfigLink;

    invoke-virtual {p3, p4}, Lmiuix/animation/controller/AnimState;->getAllConfig(Lmiuix/animation/base/AnimConfigLink;)V

    return-void
.end method

.method private getValue(Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;)Ljava/lang/Number;
    .locals 0

    instance-of p0, p2, Lmiuix/animation/property/IIntValueProperty;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Lmiuix/animation/controller/AnimState;->getInt(Lmiuix/animation/property/FloatProperty;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Lmiuix/animation/controller/AnimState;->getFloat(Lmiuix/animation/property/FloatProperty;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private toPropValues(Landroid/util/ArrayMap;Lmiuix/animation/controller/AnimState;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/property/FloatProperty;

    invoke-direct {p0, p2, v1}, Lmiuix/animation/internal/TransitionInfo;->getValue(Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lmiuix/animation/controller/AnimState;->getFlags(Lmiuix/animation/property/FloatProperty;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiuix/animation/internal/TransitionInfo;->toFlags:Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionInfo{target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->fromPropValues:Landroid/util/ArrayMap;

    const-string v2, "    "

    invoke-static {v1, v2}, Lmiuix/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Lmiuix/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfigLink;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
