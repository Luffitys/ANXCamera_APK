.class public Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
.super Ljava/lang/Object;
.source "CompareToBuilder.java"

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


# instance fields
.field private comparison:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v1, 0x0

    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_57

    iget v2, p3, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v2, :cond_57

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3}, Lorg/apache/miui/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_54

    if-nez p4, :cond_35

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_54

    :cond_35
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_54

    :try_start_3f
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    :try_end_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_3f .. :try_end_4a} :catch_4b

    goto :goto_54

    :catch_4b
    move-exception v3

    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_54
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_57
    return-void
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    if-eqz p0, :cond_40

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    new-instance v4, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    invoke-direct {v4}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v5, p2

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_35

    if-eq v0, p3, :cond_35

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, v0

    move-object v8, v4

    move v9, p2

    move-object v10, p4

    invoke-static/range {v5 .. v10}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    goto :goto_1f

    :cond_35
    invoke-virtual {v4}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v1

    return v1

    :cond_3a
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_40
    const/4 v0, 0x0

    throw v0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ge p1, p2, :cond_9

    const/4 v0, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(CC)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ge p1, p2, :cond_9

    const/4 v0, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(DD)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 6

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(FF)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(II)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ge p1, p2, :cond_9

    const/4 v0, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(JJ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 6

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    cmp-long v0, p1, p3

    if-gez v0, :cond_b

    const/4 v0, -0x1

    goto :goto_12

    :cond_b
    cmp-long v0, p1, p3

    if-lez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)",
            "Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    if-nez p1, :cond_e

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    if-nez p2, :cond_14

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9a

    instance-of v0, p1, [J

    if-eqz v0, :cond_2d

    move-object v0, p1

    check-cast v0, [J

    move-object v1, p2

    check-cast v1, [J

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([J[J)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto/16 :goto_ad

    :cond_2d
    instance-of v0, p1, [I

    if-eqz v0, :cond_3c

    move-object v0, p1

    check-cast v0, [I

    move-object v1, p2

    check-cast v1, [I

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([I[I)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto/16 :goto_ad

    :cond_3c
    instance-of v0, p1, [S

    if-eqz v0, :cond_4a

    move-object v0, p1

    check-cast v0, [S

    move-object v1, p2

    check-cast v1, [S

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([S[S)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    :cond_4a
    instance-of v0, p1, [C

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, [C

    move-object v1, p2

    check-cast v1, [C

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([C[C)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    :cond_58
    instance-of v0, p1, [B

    if-eqz v0, :cond_66

    move-object v0, p1

    check-cast v0, [B

    move-object v1, p2

    check-cast v1, [B

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([B[B)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    :cond_66
    instance-of v0, p1, [D

    if-eqz v0, :cond_74

    move-object v0, p1

    check-cast v0, [D

    move-object v1, p2

    check-cast v1, [D

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([D[D)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    :cond_74
    instance-of v0, p1, [F

    if-eqz v0, :cond_82

    move-object v0, p1

    check-cast v0, [F

    move-object v1, p2

    check-cast v1, [F

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([F[F)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    :cond_82
    instance-of v0, p1, [Z

    if-eqz v0, :cond_90

    move-object v0, p1

    check-cast v0, [Z

    move-object v1, p2

    check-cast v1, [Z

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([Z[Z)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    :cond_90
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    :cond_9a
    if-nez p3, :cond_a6

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_ad

    :cond_a6
    move-object v0, p3

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    :goto_ad
    return-object p0
.end method

.method public append(SS)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ge p1, p2, :cond_9

    const/4 v0, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(ZZ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    if-nez p1, :cond_e

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_11

    :cond_e
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    :goto_11
    return-object p0
.end method

.method public append([B[B)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 7

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(BB)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([C[C)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 7

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(CC)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([D[D)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 8

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(DD)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([F[F)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 7

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(FF)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([I[I)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 7

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(II)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([J[J)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 8

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(JJ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)",
            "Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([S[S)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 7

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(SS)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([Z[Z)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 7

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(ZZ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public appendSuper(I)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 3

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    iput p1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public build()Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toComparison()I
    .registers 2

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return v0
.end method
