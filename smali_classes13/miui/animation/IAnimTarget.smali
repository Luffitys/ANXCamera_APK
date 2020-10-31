.class public abstract Lmiui/animation/IAnimTarget;
.super Ljava/lang/Object;
.source "IAnimTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/IAnimTarget$MonitorInfo;,
        Lmiui/animation/IAnimTarget$ResetRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FLAT_ONESHOT:J = 0x1L

.field private static sPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mAnimRunnable:Lmiui/animation/internal/AnimRunnable;

.field private mAnimTask:Lmiui/animation/internal/AnimTask;

.field private mDefaultMinVisible:F

.field private mFlags:J

.field private mHandler:Landroid/os/Handler;

.field private final mId:Ljava/lang/Integer;

.field private mMinVisibleChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiui/animation/property/FloatProperty;",
            "Lmiui/animation/IAnimTarget$MonitorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mValueMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmiui/animation/IAnimTarget;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmiui/animation/IAnimTarget;->sPropertyMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/animation/IAnimTarget;->mDefaultMinVisible:F

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/IAnimTarget;->mValueMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/animation/IAnimTarget;->mHandler:Landroid/os/Handler;

    sget-object v0, Lmiui/animation/IAnimTarget;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/IAnimTarget;->mId:Ljava/lang/Integer;

    new-instance v0, Lmiui/animation/internal/AnimRunnable;

    invoke-direct {v0}, Lmiui/animation/internal/AnimRunnable;-><init>()V

    iput-object v0, p0, Lmiui/animation/IAnimTarget;->mAnimRunnable:Lmiui/animation/internal/AnimRunnable;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/IAnimTarget;->mMonitors:Ljava/util/Map;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_5c

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v1, v0}, Lmiui/animation/IAnimTarget;->setMinVisibleChange(F[I)Lmiui/animation/IAnimTarget;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_66

    const/high16 v1, 0x3b800000    # 0.00390625f

    invoke-virtual {p0, v1, v0}, Lmiui/animation/IAnimTarget;->setMinVisibleChange(F[I)Lmiui/animation/IAnimTarget;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_72

    const v1, 0x3b03126f    # 0.002f

    invoke-virtual {p0, v1, v0}, Lmiui/animation/IAnimTarget;->setMinVisibleChange(F[I)Lmiui/animation/IAnimTarget;

    return-void

    nop

    :array_5c
    .array-data 4
        0x9
        0xa
        0xb
    .end array-data

    :array_66
    .array-data 4
        0x4
        0xe
        0x7
        0x8
    .end array-data

    :array_72
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method static synthetic access$000(Lmiui/animation/IAnimTarget;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/animation/IAnimTarget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getMonitor(Lmiui/animation/property/FloatProperty;)Lmiui/animation/IAnimTarget$MonitorInfo;
    .registers 5

    iget-object v0, p0, Lmiui/animation/IAnimTarget;->mMonitors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/IAnimTarget$MonitorInfo;

    if-nez v0, :cond_16

    new-instance v1, Lmiui/animation/IAnimTarget$MonitorInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiui/animation/IAnimTarget$MonitorInfo;-><init>(Lmiui/animation/IAnimTarget$1;)V

    move-object v0, v1

    iget-object v1, p0, Lmiui/animation/IAnimTarget;->mMonitors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object v0
.end method


# virtual methods
.method public allowAnimRun()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiui/animation/property/FloatProperty;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lmiui/animation/property/FloatProperty;"
        }
    .end annotation

    sget-object v0, Lmiui/animation/IAnimTarget;->sPropertyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/property/FloatProperty;

    if-nez v0, :cond_24

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_19

    const-class v1, Ljava/lang/Integer;

    if-ne p2, v1, :cond_13

    goto :goto_19

    :cond_13
    new-instance v1, Lmiui/animation/property/ValueProperty;

    invoke-direct {v1, p1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    goto :goto_1e

    :cond_19
    :goto_19
    new-instance v1, Lmiui/animation/property/IntValueProperty;

    invoke-direct {v1, p1}, Lmiui/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    :goto_1e
    move-object v0, v1

    sget-object v1, Lmiui/animation/IAnimTarget;->sPropertyMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-object v0
.end method

.method public executeAnim(JJ)V
    .registers 11

    iget-object v0, p0, Lmiui/animation/IAnimTarget;->mAnimRunnable:Lmiui/animation/internal/AnimRunnable;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/animation/internal/AnimRunnable;->init(Lmiui/animation/IAnimTarget;JJ)V

    iget-object v0, p0, Lmiui/animation/IAnimTarget;->mAnimRunnable:Lmiui/animation/internal/AnimRunnable;

    invoke-virtual {p0, v0}, Lmiui/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnimTask()Lmiui/animation/internal/AnimTask;
    .registers 2

    iget-object v0, p0, Lmiui/animation/IAnimTarget;->mAnimTask:Lmiui/animation/internal/AnimTask;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/animation/internal/AnimTask;

    invoke-direct {v0, p0}, Lmiui/animation/internal/AnimTask;-><init>(Lmiui/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiui/animation/IAnimTarget;->mAnimTask:Lmiui/animation/internal/AnimTask;

    :cond_b
    iget-object v0, p0, Lmiui/animation/IAnimTarget;->mAnimTask:Lmiui/animation/internal/AnimTask;

    return-object v0
.end method

.method public getDefaultMinVisible()F
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getId()I
    .registers 2

    iget-object v0, p0, Lmiui/animation/IAnimTarget;->mId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIntValue(Lmiui/animation/property/IIntValueProperty;)I
    .registers 4

    invoke-virtual {p0}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {p1, v0}, Lmiui/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    move-result v1

    return v1

    :cond_b
    const v1, 0x7fffffff

    return v1
.end method

.method public getLocationOnScreen([I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    aput v1, p1, v1

    return-void
.end method

.method public getMinVisibleChange(Ljava/lang/Object;)F
    .registers 6

    iget-object v0, p0, Lmiui/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_25

    instance-of v1, p1, Lmiui/animation/property/FloatProperty;

    if-eqz v1, :cond_25

    move-object v1, p1

    check-cast v1, Lmiui/animation/property/FloatProperty;

    invoke-virtual {p0, v1}, Lmiui/animation/IAnimTarget;->getType(Lmiui/animation/property/FloatProperty;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_25

    iget-object v2, p0, Lmiui/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Float;

    :cond_25
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    :cond_2c
    iget v1, p0, Lmiui/animation/IAnimTarget;->mDefaultMinVisible:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_36

    return v1

    :cond_36
    invoke-virtual {p0}, Lmiui/animation/IAnimTarget;->getDefaultMinVisible()F

    move-result v1

    return v1
.end method

.method public abstract getProperty(I)Lmiui/animation/property/FloatProperty;
.end method

.method public abstract getTargetObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getType(Lmiui/animation/property/FloatProperty;)I
.end method

.method public getValue(I)F
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/animation/IAnimTarget;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result v0

    return v0
.end method

.method public getValue(Lmiui/animation/property/FloatProperty;)F
    .registers 4

    invoke-virtual {p0}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1, v0}, Lmiui/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result v1

    return v1

    :cond_b
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    return v1
.end method

.method public getVelocity(Lmiui/animation/property/FloatProperty;)D
    .registers 5

    iget-object v0, p0, Lmiui/animation/IAnimTarget;->mValueMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    :cond_f
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public hasFlags(J)Z
    .registers 5

    iget-wide v0, p0, Lmiui/animation/IAnimTarget;->mFlags:J

    invoke-static {v0, v1, p1, p2}, Lmiui/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onFrameEnd(Z)V
    .registers 2

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public setDefaultMinVisibleChange(F)Lmiui/animation/IAnimTarget;
    .registers 2

    iput p1, p0, Lmiui/animation/IAnimTarget;->mDefaultMinVisible:F

    return-object p0
.end method

.method public setFlags(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/animation/IAnimTarget;->mFlags:J

    return-void
.end method

.method public setIntValue(Lmiui/animation/property/IIntValueProperty;I)V
    .registers 5

    invoke-virtual {p0}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const v1, 0x7fffffff

    if-eq p2, v1, :cond_e

    invoke-interface {p1, v0, p2}, Lmiui/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    :cond_e
    return-void
.end method

.method public varargs setMinVisibleChange(F[I)Lmiui/animation/IAnimTarget;
    .registers 9

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_16

    aget v2, p2, v1

    iget-object v3, p0, Lmiui/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    return-object p0
.end method

.method public varargs setMinVisibleChange(F[Ljava/lang/String;)Lmiui/animation/IAnimTarget;
    .registers 7

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget-object v2, p2, v1

    new-instance v3, Lmiui/animation/property/ValueProperty;

    invoke-direct {v3, v2}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lmiui/animation/IAnimTarget;->setMinVisibleChange(Ljava/lang/Object;F)Lmiui/animation/IAnimTarget;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return-object p0
.end method

.method public setMinVisibleChange(Ljava/lang/Object;F)Lmiui/animation/IAnimTarget;
    .registers 5

    iget-object v0, p0, Lmiui/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setValue(Lmiui/animation/property/FloatProperty;F)V
    .registers 5

    invoke-virtual {p0}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_10

    invoke-virtual {p1, v0, p2}, Lmiui/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    :cond_10
    return-void
.end method

.method public setVelocity(Lmiui/animation/property/FloatProperty;D)V
    .registers 6

    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiui/animation/IAnimTarget;->mValueMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-void
.end method

.method public shouldUseIntValue(Lmiui/animation/property/FloatProperty;)Z
    .registers 3

    instance-of v0, p1, Lmiui/animation/property/IIntValueProperty;

    return v0
.end method

.method public trackVelocity(Lmiui/animation/property/FloatProperty;D)V
    .registers 8

    invoke-direct {p0, p1}, Lmiui/animation/IAnimTarget;->getMonitor(Lmiui/animation/property/FloatProperty;)Lmiui/animation/IAnimTarget$MonitorInfo;

    move-result-object v0

    iget-object v1, v0, Lmiui/animation/IAnimTarget$MonitorInfo;->monitor:Lmiui/animation/utils/VelocityMonitor;

    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p2, v2, v3

    invoke-virtual {v1, v2}, Lmiui/animation/utils/VelocityMonitor;->update([D)V

    iget-object v1, v0, Lmiui/animation/IAnimTarget$MonitorInfo;->monitor:Lmiui/animation/utils/VelocityMonitor;

    invoke-virtual {v1, v3}, Lmiui/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_23

    iget-object v2, v0, Lmiui/animation/IAnimTarget$MonitorInfo;->resetTask:Lmiui/animation/IAnimTarget$ResetRunnable;

    invoke-virtual {v2, p0, p1}, Lmiui/animation/IAnimTarget$ResetRunnable;->post(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V

    float-to-double v2, v1

    invoke-virtual {p0, p1, v2, v3}, Lmiui/animation/IAnimTarget;->setVelocity(Lmiui/animation/property/FloatProperty;D)V

    :cond_23
    return-void
.end method
