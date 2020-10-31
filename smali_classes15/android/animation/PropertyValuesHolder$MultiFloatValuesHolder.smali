.class Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;
.super Landroid/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiFloatValuesHolder"
.end annotation


# static fields
.field private static final sJNISetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mJniSetter:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder$1;)V

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    iput-object p4, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder$1;)V

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    invoke-virtual {p0, p4}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-void
.end method


# virtual methods
.method setAnimatedValue(Ljava/lang/Object;)V
    .registers 13

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    array-length v1, v0

    iget-wide v3, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-eqz v2, :cond_3c

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_37

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2f

    const/4 v7, 0x4

    if-eq v1, v7, :cond_1d

    # invokes: Landroid/animation/PropertyValuesHolder;->nCallMultipleFloatMethod(Ljava/lang/Object;J[F)V
    invoke-static {p1, v3, v4, v0}, Landroid/animation/PropertyValuesHolder;->access$800(Ljava/lang/Object;J[F)V

    goto :goto_3c

    :cond_1d
    aget v7, v0, v2

    aget v8, v0, v5

    aget v9, v0, v6

    const/4 v2, 0x3

    aget v10, v0, v2

    move-object v2, p1

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    # invokes: Landroid/animation/PropertyValuesHolder;->nCallFourFloatMethod(Ljava/lang/Object;JFFFF)V
    invoke-static/range {v2 .. v8}, Landroid/animation/PropertyValuesHolder;->access$700(Ljava/lang/Object;JFFFF)V

    goto :goto_3c

    :cond_2f
    aget v2, v0, v2

    aget v5, v0, v5

    # invokes: Landroid/animation/PropertyValuesHolder;->nCallTwoFloatMethod(Ljava/lang/Object;JFF)V
    invoke-static {p1, v3, v4, v2, v5}, Landroid/animation/PropertyValuesHolder;->access$600(Ljava/lang/Object;JFF)V

    goto :goto_3c

    :cond_37
    aget v2, v0, v2

    # invokes: Landroid/animation/PropertyValuesHolder;->nCallFloatMethod(Ljava/lang/Object;JF)V
    invoke-static {p1, v3, v4, v2}, Landroid/animation/PropertyValuesHolder;->access$400(Ljava/lang/Object;JF)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .registers 11

    iget-wide v0, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_c
    sget-object v1, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    if-eqz v2, :cond_30

    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    :cond_30
    if-nez v2, :cond_70

    const-string/jumbo v3, "set"

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->calculateValue(F)V

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    array-length v5, v4
    :try_end_46
    .catchall {:try_start_c .. :try_end_46} :catchall_72

    :try_start_46
    # invokes: Landroid/animation/PropertyValuesHolder;->nGetMultipleFloatMethod(Ljava/lang/Class;Ljava/lang/String;I)J
    invoke-static {p1, v3, v5}, Landroid/animation/PropertyValuesHolder;->access$900(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J
    :try_end_4c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_46 .. :try_end_4c} :catch_4d
    .catchall {:try_start_46 .. :try_end_4c} :catchall_72

    goto :goto_58

    :catch_4d
    move-exception v6

    :try_start_4e
    iget-object v7, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    # invokes: Landroid/animation/PropertyValuesHolder;->nGetMultipleFloatMethod(Ljava/lang/Class;Ljava/lang/String;I)J
    invoke-static {p1, v7, v5}, Landroid/animation/PropertyValuesHolder;->access$900(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v7

    iput-wide v7, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J
    :try_end_56
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4e .. :try_end_56} :catch_57
    .catchall {:try_start_4e .. :try_end_56} :catchall_72

    goto :goto_58

    :catch_57
    move-exception v7

    :goto_58
    if-nez v1, :cond_65

    :try_start_5a
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v1, v6

    sget-object v6, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    iget-object v6, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-wide v7, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_70
    monitor-exit v0

    return-void

    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_72

    throw v1
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setupSetter(Ljava/lang/Class;)V

    return-void
.end method
