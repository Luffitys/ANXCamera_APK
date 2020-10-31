.class public Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/builder/Builder<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lorg/apache/miui/commons/lang3/tuple/Pair<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private isEquals:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-void
.end method

.method static getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/miui/commons/lang3/tuple/Pair<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v0, p0}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v1, p1}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v2

    return-object v2
.end method

.method static getRegistry()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/miui/commons/lang3/tuple/Pair<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-virtual {v1}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-static {v2, v3}, Lorg/apache/miui/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v2

    if-eqz v0, :cond_28

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    :cond_26
    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    return v3
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->register(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v1, 0x0

    :goto_13
    array-length v2, v0

    if-ge v1, v2, :cond_61

    iget-boolean v2, p3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v2, :cond_61

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3}, Lorg/apache/miui/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5e

    if-nez p4, :cond_3f

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_5e

    :cond_3f
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_66

    if-nez v3, :cond_5e

    :try_start_49
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    :try_end_54
    .catch Ljava/lang/IllegalAccessException; {:try_start_49 .. :try_end_54} :catch_55
    .catchall {:try_start_49 .. :try_end_54} :catchall_66

    goto :goto_5e

    :catch_55
    move-exception v3

    :try_start_56
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_66

    :cond_5e
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_61
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    nop

    return-void

    :catchall_66
    move-exception v0

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    if-ne v11, v12, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v13, 0x0

    if-eqz v11, :cond_7a

    if-nez v12, :cond_11

    move-object/from16 v1, p3

    goto/16 :goto_7c

    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v12}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move-object v0, v14

    invoke-virtual {v15, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    move-object v0, v15

    move-object v7, v0

    goto :goto_3c

    :cond_29
    move-object v7, v0

    goto :goto_3c

    :cond_2b
    invoke-virtual {v15, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    move-object v0, v15

    invoke-virtual {v14, v12}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    move-object v0, v14

    move-object v7, v0

    goto :goto_3c

    :cond_3b
    move-object v7, v0

    :goto_3c
    new-instance v4, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v4}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;-><init>()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move/from16 v5, p2

    move-object/from16 v6, p4

    :try_start_4a
    invoke-static/range {v1 .. v6}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V

    :goto_4d
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_51} :catch_73

    if-eqz v0, :cond_6b

    move-object/from16 v1, p3

    if-eq v7, v1, :cond_6d

    :try_start_57
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v4

    move/from16 v9, p2

    move-object/from16 v10, p4

    invoke-static/range {v5 .. v10}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_68} :catch_69

    goto :goto_4d

    :catch_69
    move-exception v0

    goto :goto_76

    :cond_6b
    move-object/from16 v1, p3

    :cond_6d
    nop

    invoke-virtual {v4}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0

    :catch_73
    move-exception v0

    move-object/from16 v1, p3

    :goto_76
    return v13

    :cond_77
    move-object/from16 v1, p3

    return v13

    :cond_7a
    move-object/from16 v1, p3

    :goto_7c
    return v13
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static register(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    const-class v0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_13

    sget-object v1, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_20

    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method static unregister(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-class v2, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    monitor-enter v2

    :try_start_10
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    sget-object v3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    :cond_22
    monitor-exit v2

    goto :goto_27

    :catchall_24
    move-exception v3

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_24

    throw v3

    :cond_27
    :goto_27
    return-void
.end method


# virtual methods
.method public append(BB)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(CC)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(DD)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 9

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(FF)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 5

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(JJ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    cmp-long v0, p1, p3

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 7

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_ab

    if-nez p2, :cond_f

    goto/16 :goto_ab

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto/16 :goto_aa

    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_30

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto/16 :goto_aa

    :cond_30
    instance-of v0, p1, [J

    if-eqz v0, :cond_3f

    move-object v0, p1

    check-cast v0, [J

    move-object v2, p2

    check-cast v2, [J

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([J[J)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto/16 :goto_aa

    :cond_3f
    instance-of v0, p1, [I

    if-eqz v0, :cond_4d

    move-object v0, p1

    check-cast v0, [I

    move-object v2, p2

    check-cast v2, [I

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([I[I)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_aa

    :cond_4d
    instance-of v0, p1, [S

    if-eqz v0, :cond_5b

    move-object v0, p1

    check-cast v0, [S

    move-object v2, p2

    check-cast v2, [S

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([S[S)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_aa

    :cond_5b
    instance-of v0, p1, [C

    if-eqz v0, :cond_69

    move-object v0, p1

    check-cast v0, [C

    move-object v2, p2

    check-cast v2, [C

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([C[C)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_aa

    :cond_69
    instance-of v0, p1, [B

    if-eqz v0, :cond_77

    move-object v0, p1

    check-cast v0, [B

    move-object v2, p2

    check-cast v2, [B

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([B[B)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_aa

    :cond_77
    instance-of v0, p1, [D

    if-eqz v0, :cond_85

    move-object v0, p1

    check-cast v0, [D

    move-object v2, p2

    check-cast v2, [D

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([D[D)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_aa

    :cond_85
    instance-of v0, p1, [F

    if-eqz v0, :cond_93

    move-object v0, p1

    check-cast v0, [F

    move-object v2, p2

    check-cast v2, [F

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([F[F)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_aa

    :cond_93
    instance-of v0, p1, [Z

    if-eqz v0, :cond_a1

    move-object v0, p1

    check-cast v0, [Z

    move-object v2, p2

    check-cast v2, [Z

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([Z[Z)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_aa

    :cond_a1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    :goto_aa
    return-object p0

    :cond_ab
    :goto_ab
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append(SS)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(ZZ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append([B[B)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_16
    const/4 v0, 0x0

    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(BB)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_28
    return-object p0

    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([C[C)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_16
    const/4 v0, 0x0

    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(CC)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_28
    return-object p0

    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([D[D)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 8

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_16
    const/4 v0, 0x0

    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(DD)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_28
    return-object p0

    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([F[F)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_16
    const/4 v0, 0x0

    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(FF)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_28
    return-object p0

    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([I[I)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_16
    const/4 v0, 0x0

    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_28
    return-object p0

    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([J[J)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 8

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_16
    const/4 v0, 0x0

    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_28
    return-object p0

    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_16
    const/4 v0, 0x0

    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_28
    return-object p0

    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([S[S)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_16
    const/4 v0, 0x0

    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(SS)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_28
    return-object p0

    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([Z[Z)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_16
    const/4 v0, 0x0

    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(ZZ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_28
    return-object p0

    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public appendSuper(Z)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 3

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public build()Ljava/lang/Boolean;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->build()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isEquals()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-void
.end method

.method protected setEquals(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-void
.end method
