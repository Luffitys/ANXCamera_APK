.class public Lcom/miui/internal/vip/utils/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# static fields
.field private static final sCompatibleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final sPrimToBoxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sPrimToBoxMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sPrimToBoxMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Short;

    aput-object v4, v3, v5

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sPrimToBoxMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const-class v6, Ljava/lang/Integer;

    aput-object v6, v4, v2

    const-class v6, Ljava/lang/Long;

    const/4 v7, 0x2

    aput-object v6, v4, v7

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sPrimToBoxMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Float;

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sPrimToBoxMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const-class v6, Ljava/lang/Float;

    aput-object v6, v4, v2

    const-class v6, Ljava/lang/Double;

    aput-object v6, v4, v7

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sCompatibleMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const-class v6, Ljava/lang/Integer;

    aput-object v6, v4, v2

    const-class v6, Ljava/lang/Long;

    aput-object v6, v4, v7

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sCompatibleMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Float;

    aput-object v4, v3, v2

    const-class v2, Ljava/lang/Double;

    aput-object v2, v3, v7

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 13

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_73

    if-eqz p1, :cond_73

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_e

    goto :goto_73

    :cond_e
    const/4 v2, 0x0

    :goto_f
    array-length v3, p0

    if-ge v2, v3, :cond_72

    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-static {v3}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/internal/vip/utils/ReflectionUtils;->arrayEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    goto :goto_6c

    :cond_38
    const/4 v8, 0x2

    if-eq v5, v6, :cond_4e

    invoke-static {v5, v6}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isTypeMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_42

    goto :goto_4e

    :cond_42
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v1

    aput-object v6, v8, v0

    const-string v9, "arrayEquals, class not matched, c1 = %s, c2 = %s"

    invoke-static {v9, v8}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6c

    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-static {v4, v5}, Lcom/miui/internal/vip/utils/ReflectionUtils;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_56} :catch_58

    move v7, v8

    goto :goto_6b

    :catch_58
    move-exception v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v1

    aput-object v5, v10, v0

    aput-object v6, v10, v8

    const/4 v8, 0x3

    aput-object v9, v10, v8

    const-string v8, "arrayEquals, convert failed, a2 = %s, c1 = %s, c2 = %s, %s"

    invoke-static {v8, v10}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x0

    :goto_6b
    nop

    :goto_6c
    if-nez v7, :cond_6f

    return v1

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_72
    return v0

    :cond_73
    :goto_73
    return v1
.end method

.method public static convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq p1, v0, :cond_24

    invoke-static {p1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isBuiltIn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "valueOf"

    invoke-static {v0, p1, v3, v2, v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_24
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static convertArray([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_13

    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toIntArray([Ljava/lang/Object;)[I

    move-result-object v0

    return-object v0

    :cond_13
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1c

    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toLongArray([Ljava/lang/Object;)[J

    move-result-object v0

    return-object v0

    :cond_1c
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_25

    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toFloatArray([Ljava/lang/Object;)[F

    move-result-object v0

    return-object v0

    :cond_25
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2e

    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toDoubleArray([Ljava/lang/Object;)[D

    move-result-object v0

    return-object v0

    :cond_2e
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_37

    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toShorteArray([Ljava/lang/Object;)[S

    move-result-object v0

    return-object v0

    :cond_37
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_40

    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toByteArray([Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    :cond_40
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_49

    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toCharArray([Ljava/lang/Object;)[C

    move-result-object v0

    return-object v0

    :cond_49
    return-object p0
.end method

.method public static createArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "I)[TT;"
        }
    .end annotation

    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static createInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "createInstance for %s, %s"

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v1

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getUnboxedClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    :cond_7
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_e

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    :cond_e
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_15

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v0

    :cond_15
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_1c

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0

    :cond_1c
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_23

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object v0

    :cond_23
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_2a

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0

    :cond_2a
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_31

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v0

    :cond_31
    return-object p0
.end method

.method private static getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_d

    const-class v0, Ljava/lang/Integer;

    return-object v0

    :cond_d
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_14

    const-class v0, Ljava/lang/Long;

    return-object v0

    :cond_14
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1b

    const-class v0, Ljava/lang/Float;

    return-object v0

    :cond_1b
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_22

    const-class v0, Ljava/lang/Double;

    return-object v0

    :cond_22
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_29

    const-class v0, Ljava/lang/Short;

    return-object v0

    :cond_29
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_30

    const-class v0, Ljava/lang/Byte;

    return-object v0

    :cond_30
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_37

    const-class v0, Ljava/lang/Character;

    return-object v0

    :cond_37
    return-object p0
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-string v0, "ReflectionUtils.invokeMethod failed, funcName = %s, args = %s, %s"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_6
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v5, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_10} :catch_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_12

    return-object v0

    :cond_11
    goto :goto_37

    :catch_12
    move-exception v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_38

    :catch_23
    move-exception v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_37
    nop

    :goto_38
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isBuiltIn(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-class v0, Ljava/lang/Short;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    goto :goto_6b

    :cond_69
    const/4 v0, 0x0

    goto :goto_6c

    :cond_6b
    :goto_6b
    const/4 v0, 0x1

    :goto_6c
    return v0
.end method

.method public static isCompatibleClass(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3

    sget-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sCompatibleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/miui/internal/vip/utils/Utils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInnerClass(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static isTypeMatched(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eq p0, p1, :cond_3c

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {p0, p1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isCompatibleClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_3c

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    return v0

    :cond_24
    :goto_24
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object v0, p0

    move-object v1, p1

    goto :goto_2f

    :cond_2d
    move-object v0, p1

    move-object v1, p0

    :goto_2f
    sget-object v2, Lcom/miui/internal/vip/utils/ReflectionUtils;->sPrimToBoxMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_3c
    :goto_3c
    const/4 v0, 0x1

    return v0
.end method

.method private static toByteArray([Ljava/lang/Object;)[B
    .registers 4

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_14

    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-object v0
.end method

.method private static toCharArray([Ljava/lang/Object;)[C
    .registers 4

    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_14

    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-object v0
.end method

.method private static toDoubleArray([Ljava/lang/Object;)[D
    .registers 5

    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_14

    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-object v0
.end method

.method private static toFloatArray([Ljava/lang/Object;)[F
    .registers 4

    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_14

    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-object v0
.end method

.method private static toIntArray([Ljava/lang/Object;)[I
    .registers 4

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_14

    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-object v0
.end method

.method private static toLongArray([Ljava/lang/Object;)[J
    .registers 5

    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_14

    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-object v0
.end method

.method public static toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_66

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1e

    move-object v1, p0

    check-cast v1, [I

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray([I)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1e
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2a

    move-object v1, p0

    check-cast v1, [J

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray([J)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_2a
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_36

    move-object v1, p0

    check-cast v1, [F

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray([F)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_36
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_42

    move-object v1, p0

    check-cast v1, [D

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray([D)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_42
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4e

    move-object v1, p0

    check-cast v1, [S

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray([S)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_4e
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5a

    move-object v1, p0

    check-cast v1, [B

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray([B)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_5a
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_66

    move-object v1, p0

    check-cast v1, [C

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray([C)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_66
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method

.method private static toObjectArray([B)[Ljava/lang/Object;
    .registers 4

    const-class v0, Ljava/lang/Byte;

    array-length v1, p0

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_16

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method private static toObjectArray([C)[Ljava/lang/Object;
    .registers 4

    const-class v0, Ljava/lang/Character;

    array-length v1, p0

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_16

    aget-char v2, p0, v1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method private static toObjectArray([D)[Ljava/lang/Object;
    .registers 5

    const-class v0, Ljava/lang/Double;

    array-length v1, p0

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_16

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method private static toObjectArray([F)[Ljava/lang/Object;
    .registers 4

    const-class v0, Ljava/lang/Float;

    array-length v1, p0

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_16

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method private static toObjectArray([I)[Ljava/lang/Object;
    .registers 4

    const-class v0, Ljava/lang/Integer;

    array-length v1, p0

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_16

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method private static toObjectArray([J)[Ljava/lang/Object;
    .registers 5

    const-class v0, Ljava/lang/Long;

    array-length v1, p0

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_16

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method private static toObjectArray([S)[Ljava/lang/Object;
    .registers 4

    const-class v0, Ljava/lang/Short;

    array-length v1, p0

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_16

    aget-short v2, p0, v1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method private static toShorteArray([Ljava/lang/Object;)[S
    .registers 4

    array-length v0, p0

    new-array v0, v0, [S

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_14

    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-object v0
.end method
