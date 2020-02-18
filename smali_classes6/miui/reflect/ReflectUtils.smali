.class public Lmiui/reflect/ReflectUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OBJECT_CONSTRUCTOR:Ljava/lang/String; = "<init>"

.field private static final iP:Ljava/lang/String; = "this$0"

.field private static jP:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static kP:[Ljava/lang/String;

.field private static final lP:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    .line 1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lmiui/reflect/ReflectUtils;->jP:[Ljava/lang/Class;

    const-string v3, "Z"

    const-string v4, "B"

    const-string v5, "C"

    const-string v6, "S"

    const-string v7, "I"

    const-string v8, "J"

    const-string v9, "F"

    const-string v10, "D"

    const-string v11, "V"

    .line 2
    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/reflect/ReflectUtils;->kP:[Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmiui/reflect/ReflectUtils;->lP:Ljava/util/WeakHashMap;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p0, Ljava/lang/InstantiationException;

    const-string v0, "Cannot instantiate utility class"

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAdditionalField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    if-eqz p0, :cond_2a

    if-eqz p1, :cond_22

    .line 1
    sget-object v0, Lmiui/reflect/ReflectUtils;->lP:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 2
    :try_start_7
    sget-object v1, Lmiui/reflect/ReflectUtils;->lP:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_14

    const/4 p0, 0x0

    .line 3
    monitor-exit v0

    return-object p0

    .line 4
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1f

    .line 5
    monitor-enter p0

    .line 6
    :try_start_16
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_1c
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1c

    throw p1

    :catchall_1f
    move-exception p0

    .line 8
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    .line 9
    :cond_22
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "fieldName must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "object must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSignature(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    sget-object v1, Lmiui/reflect/ReflectUtils;->jP:[Ljava/lang/Class;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 2
    aget-object v1, v1, v0

    if-ne p0, v1, :cond_f

    .line 3
    sget-object p0, Lmiui/reflect/ReflectUtils;->kP:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiui/reflect/ReflectUtils;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSignature(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 5
    :goto_1
    sget-object v1, Lmiui/reflect/ReflectUtils;->jP:[Ljava/lang/Class;

    array-length v2, v1

    if-ge v0, v2, :cond_19

    .line 6
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 7
    sget-object p0, Lmiui/reflect/ReflectUtils;->kP:[Ljava/lang/String;

    aget-object p0, p0, v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const-string v0, "."

    const-string v1, "/"

    .line 8
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "["

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_40

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_40
    return-object p0
.end method

.method public static getSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1c

    .line 12
    array-length v1, p0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1c

    aget-object v3, p0, v2

    .line 13
    invoke-static {v3}, Lmiui/reflect/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1c
    const/16 p0, 0x29

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {p1}, Lmiui/reflect/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSurroundingThis(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lmiui/reflect/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this$0"

    .line 3
    invoke-static {v0, v2, v1}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static removeAdditionalField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    if-eqz p0, :cond_2a

    if-eqz p1, :cond_22

    .line 1
    sget-object v0, Lmiui/reflect/ReflectUtils;->lP:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 2
    :try_start_7
    sget-object v1, Lmiui/reflect/ReflectUtils;->lP:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_14

    const/4 p0, 0x0

    .line 3
    monitor-exit v0

    return-object p0

    .line 4
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1f

    .line 5
    monitor-enter p0

    .line 6
    :try_start_16
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_1c
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1c

    throw p1

    :catchall_1f
    move-exception p0

    .line 8
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    .line 9
    :cond_22
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "fieldName must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "object must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setAdditionalField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    if-eqz p0, :cond_31

    if-eqz p1, :cond_29

    .line 1
    sget-object v0, Lmiui/reflect/ReflectUtils;->lP:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 2
    :try_start_7
    sget-object v1, Lmiui/reflect/ReflectUtils;->lP:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_1b

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    sget-object v2, Lmiui/reflect/ReflectUtils;->lP:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_26

    .line 6
    monitor-enter v1

    .line 7
    :try_start_1d
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_23
    move-exception p0

    .line 8
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_23

    throw p0

    :catchall_26
    move-exception p0

    .line 9
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0

    .line 10
    :cond_29
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "fieldName must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_31
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "object must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static updateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/reflect/IllegalArgumentException;
        }
    .end annotation

    if-nez p0, :cond_d

    if-eqz p1, :cond_5

    goto :goto_d

    .line 1
    :cond_5
    new-instance p0, Lmiui/reflect/IllegalArgumentException;

    const-string p1, "clazz and holder cannot be all null"

    invoke-direct {p0, p1}, Lmiui/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_d
    if-nez p0, :cond_13

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :cond_13
    :goto_13
    if-eqz p0, :cond_3b

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_36

    aget-object v3, v0, v2

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    :try_start_23
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_2c

    .line 6
    invoke-virtual {v3, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_2c} :catch_2f

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :catch_2f
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 8
    :cond_36
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_13

    :cond_3b
    return-void
.end method
