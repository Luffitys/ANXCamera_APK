.class final Lcom/android/framework/protobuf/FloatArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "FloatArrayList.java"

# interfaces
.implements Lcom/android/framework/protobuf/Internal$FloatList;
.implements Ljava/util/RandomAccess;
.implements Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "Ljava/lang/Float;",
        ">;",
        "Lcom/android/framework/protobuf/Internal$FloatList;",
        "Ljava/util/RandomAccess;",
        "Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/android/framework/protobuf/FloatArrayList;


# instance fields
.field private array:[F

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/framework/protobuf/FloatArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [F

    invoke-direct {v0, v2, v1}, Lcom/android/framework/protobuf/FloatArrayList;-><init>([FI)V

    sput-object v0, Lcom/android/framework/protobuf/FloatArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/FloatArrayList;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FloatArrayList;->makeImmutable()V

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/FloatArrayList;-><init>([FI)V

    return-void
.end method

.method private constructor <init>([FI)V
    .registers 3

    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iput p2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    return-void
.end method

.method private addFloat(IF)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    if-ltz p1, :cond_3e

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-gt p1, v0, :cond_3e

    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    array-length v2, v1

    if-ge v0, v2, :cond_15

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    :cond_15
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [F

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    :goto_2d
    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aput p2, v0, p1

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    return-void

    :cond_3e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyList()Lcom/android/framework/protobuf/FloatArrayList;
    .registers 1

    sget-object v0, Lcom/android/framework/protobuf/FloatArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/FloatArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .registers 4

    if-ltz p1, :cond_7

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-ge p1, v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Float;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(IF)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/FloatArrayList;->add(ILjava/lang/Float;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    invoke-static {p1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/framework/protobuf/FloatArrayList;

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    :cond_f
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/FloatArrayList;

    iget v1, v0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_18

    return v2

    :cond_18
    const v3, 0x7fffffff

    iget v4, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int/2addr v3, v4

    if-lt v3, v1, :cond_40

    add-int/2addr v4, v1

    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    array-length v5, v1

    if-le v4, v5, :cond_2c

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    :cond_2c
    iget-object v1, v0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iget-object v5, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iget v6, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v7, v0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    invoke-static {v1, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    return v2

    :cond_40
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1
.end method

.method public addFloat(F)V
    .registers 3

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    invoke-direct {p0, v0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(IF)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/framework/protobuf/FloatArrayList;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_d
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/FloatArrayList;

    iget v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v3, v1, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_18

    return v4

    :cond_18
    iget-object v2, v1, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    const/4 v3, 0x0

    :goto_1b
    iget v5, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-ge v3, v5, :cond_33

    iget-object v5, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    aget v6, v2, v3

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    if-eq v5, v6, :cond_30

    return v4

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_33
    return v0
.end method

.method public get(I)Ljava/lang/Float;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->get(I)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(I)F
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-ge v1, v2, :cond_15

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return v0
.end method

.method public mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$FloatList;
    .registers 5

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-lt p1, v0, :cond_12

    new-instance v0, Lcom/android/framework/protobuf/FloatArrayList;

    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iget v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/FloatArrayList;-><init>([FI)V

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$FloatList;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Float;
    .registers 6

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v1, v0, p1

    iget v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_18

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_18
    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->remove(I)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    return v4

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method protected removeRange(II)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    if-lt p2, p1, :cond_1b

    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Float;)Ljava/lang/Float;
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/FloatArrayList;->setFloat(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/FloatArrayList;->set(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setFloat(IF)F
    .registers 5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v1, v0, p1

    aput p2, v0, p1

    return v1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    return v0
.end method
