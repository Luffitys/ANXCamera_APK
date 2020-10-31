.class public Landroid/os/HidlSupport;
.super Ljava/lang/Object;
.source "HidlSupport.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HidlSupport$Mutable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_7e

    if-nez p1, :cond_b

    goto/16 :goto_7e

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_16

    return v1

    :cond_16
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_27

    return v1

    :cond_27
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_32
    move-object v5, p0

    check-cast v5, [Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, [Ljava/lang/Object;

    array-length v7, v5

    array-length v8, v6

    if-ne v7, v8, :cond_4d

    array-length v7, v5

    invoke-static {v1, v7}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v7

    new-instance v8, Landroid/os/-$$Lambda$HidlSupport$4ktYtLCfMafhYI23iSXUQOH_hxo;

    invoke-direct {v8, v5, v6}, Landroid/os/-$$Lambda$HidlSupport$4ktYtLCfMafhYI23iSXUQOH_hxo;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v7

    if-eqz v7, :cond_4d

    goto :goto_4e

    :cond_4d
    move v0, v1

    :goto_4e
    return v0

    :cond_4f
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_76

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    move-object v4, p1

    check-cast v4, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_64

    return v1

    :cond_64
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Landroid/os/-$$Lambda$HidlSupport$oV2DlGQSAfcavBj7TK20nYhwS0U;

    invoke-direct {v6, v1}, Landroid/os/-$$Lambda$HidlSupport$oV2DlGQSAfcavBj7TK20nYhwS0U;-><init>(Ljava/util/Iterator;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    return v5

    :cond_76
    invoke-static {p0}, Landroid/os/HidlSupport;->throwErrorIfUnsupportedType(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_7e
    :goto_7e
    return v1
.end method

.method public static deepHashCode(Ljava/lang/Object;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {p0}, Landroid/os/HidlSupport;->primitiveArrayHashCode(Ljava/lang/Object;)I

    move-result v2

    return v2

    :cond_1d
    move-object v2, p0

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Landroid/os/-$$Lambda$HidlSupport$GHxmwrIWiKN83tl6aMQt_nV5hiw;->INSTANCE:Landroid/os/-$$Lambda$HidlSupport$GHxmwrIWiKN83tl6aMQt_nV5hiw;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    return v2

    :cond_33
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_4d

    move-object v1, p0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Landroid/os/-$$Lambda$HidlSupport$CwwfmHPEvZaybUxpLzKdwrpQRfA;->INSTANCE:Landroid/os/-$$Lambda$HidlSupport$CwwfmHPEvZaybUxpLzKdwrpQRfA;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    return v1

    :cond_4d
    invoke-static {p0}, Landroid/os/HidlSupport;->throwErrorIfUnsupportedType(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    return v1
.end method

.method public static native getPidIfSharable()I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public static interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    if-nez p1, :cond_a

    goto :goto_1f

    :cond_a
    instance-of v1, p1, Landroid/os/IHwInterface;

    if-nez v1, :cond_f

    return v0

    :cond_f
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/os/IHwInterface;

    invoke-interface {v1}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1f
    :goto_1f
    return v0
.end method

.method static synthetic lambda$deepEquals$0([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 5

    aget-object v0, p0, p2

    aget-object v1, p1, p2

    invoke-static {v0, v1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$deepEquals$1(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .registers 3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$deepHashCode$2(Ljava/lang/Object;)I
    .registers 2

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$deepHashCode$3(Ljava/lang/Object;)I
    .registers 2

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static primitiveArrayHashCode(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_14

    move-object v1, p0

    check-cast v1, [Z

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    return v1

    :cond_14
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_20

    move-object v1, p0

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    return v1

    :cond_20
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2c

    move-object v1, p0

    check-cast v1, [C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    return v1

    :cond_2c
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_38

    move-object v1, p0

    check-cast v1, [D

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    return v1

    :cond_38
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_44

    move-object v1, p0

    check-cast v1, [F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    return v1

    :cond_44
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_50

    move-object v1, p0

    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    return v1

    :cond_50
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5c

    move-object v1, p0

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    return v1

    :cond_5c
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_68

    move-object v1, p0

    check-cast v1, [S

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([S)I

    move-result v1

    return v1

    :cond_68
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method private static throwErrorIfUnsupportedType(Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_28

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_9

    goto :goto_28

    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot check equality on collections other than lists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_28
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_2d

    return-void

    :cond_2d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot check equality on maps"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
