.class public Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/builder/Builder<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final iConstant:I

.field private iTotal:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    const/16 v0, 0x25

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    if-eqz p1, :cond_2f

    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_27

    if-eqz p2, :cond_1f

    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_17

    iput p2, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    iput p1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-void

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires an odd multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires a non zero multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires an odd initial value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires a non zero initial value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getRegistry()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v1, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->register(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_59

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, v4}, Lorg/apache/miui/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_56

    if-nez p3, :cond_3b

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_56

    :cond_3b
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_5e

    if-nez v4, :cond_56

    :try_start_45
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    :try_end_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_4c} :catch_4d
    .catchall {:try_start_45 .. :try_end_4c} :catchall_5e

    goto :goto_56

    :catch_4d
    move-exception v1

    :try_start_4e
    new-instance v2, Ljava/lang/InternalError;

    const-string v4, "Unexpected IllegalAccessException"

    invoke-direct {v2, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_5e

    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_59
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_5e
    move-exception v0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    throw v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;)I
    .registers 10

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;Z)I
    .registers 11

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IITT;Z",
            "Ljava/lang/Class<",
            "-TT;>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-eqz p2, :cond_23

    new-instance v0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p2, v1, v0, p3, p5}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    :goto_e
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1e

    if-eq v1, p4, :cond_1e

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p2, v1, v0, p3, p5}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    goto :goto_e

    :cond_1e
    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v2

    return v2

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The object to build a hash code for must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Z)I
    .registers 9

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/16 v1, 0x11

    const/16 v2, 0x25

    const/4 v5, 0x0

    move-object v3, p0

    move v4, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I
    .registers 8

    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static register(Ljava/lang/Object;)V
    .registers 4

    const-class v0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_13

    sget-object v1, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_21

    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method static unregister(Ljava/lang/Object;)V
    .registers 4

    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_28

    new-instance v1, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-class v1, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    monitor-enter v1

    :try_start_11
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    sget-object v2, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    :cond_23
    monitor-exit v1

    goto :goto_28

    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_25

    throw v2

    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public append(B)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(C)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(D)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(J)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(I)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(J)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 6

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v1, p1, v1

    xor-long/2addr v1, p1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4

    if-nez p1, :cond_b

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto/16 :goto_80

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_74

    instance-of v0, p1, [J

    if-eqz v0, :cond_20

    move-object v0, p1

    check-cast v0, [J

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([J)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    :cond_20
    instance-of v0, p1, [I

    if-eqz v0, :cond_2b

    move-object v0, p1

    check-cast v0, [I

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([I)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    :cond_2b
    instance-of v0, p1, [S

    if-eqz v0, :cond_36

    move-object v0, p1

    check-cast v0, [S

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([S)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    :cond_36
    instance-of v0, p1, [C

    if-eqz v0, :cond_41

    move-object v0, p1

    check-cast v0, [C

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([C)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    :cond_41
    instance-of v0, p1, [B

    if-eqz v0, :cond_4c

    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([B)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    :cond_4c
    instance-of v0, p1, [D

    if-eqz v0, :cond_57

    move-object v0, p1

    check-cast v0, [D

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([D)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    :cond_57
    instance-of v0, p1, [F

    if-eqz v0, :cond_62

    move-object v0, p1

    check-cast v0, [F

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([F)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    :cond_62
    instance-of v0, p1, [Z

    if-eqz v0, :cond_6d

    move-object v0, p1

    check-cast v0, [Z

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([Z)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    :cond_6d
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    :cond_74
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    :goto_80
    return-object p0
.end method

.method public append(S)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(Z)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    xor-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append([B)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5

    if-nez p1, :cond_a

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(B)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    :goto_16
    return-object p0
.end method

.method public append([C)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5

    if-nez p1, :cond_a

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(C)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    :goto_16
    return-object p0
.end method

.method public append([D)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 6

    if-nez p1, :cond_a

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(D)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    :goto_16
    return-object p0
.end method

.method public append([F)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5

    if-nez p1, :cond_a

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(F)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    :goto_16
    return-object p0
.end method

.method public append([I)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5

    if-nez p1, :cond_a

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(I)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    :goto_16
    return-object p0
.end method

.method public append([J)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 6

    if-nez p1, :cond_a

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(J)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    :goto_16
    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5

    if-nez p1, :cond_a

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    :goto_16
    return-object p0
.end method

.method public append([S)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5

    if-nez p1, :cond_a

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(S)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    :goto_16
    return-object p0
.end method

.method public append([Z)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5

    if-nez p1, :cond_a

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-boolean v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(Z)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    :goto_16
    return-object p0
.end method

.method public appendSuper(I)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public build()Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toHashCode()I
    .registers 2

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return v0
.end method
