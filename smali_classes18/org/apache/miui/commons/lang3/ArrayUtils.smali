.class public Lorg/apache/miui/commons/lang3/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v1, v0, [J

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    new-array v1, v0, [Ljava/lang/Long;

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    new-array v1, v0, [I

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    new-array v1, v0, [Ljava/lang/Integer;

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    new-array v1, v0, [S

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    new-array v1, v0, [Ljava/lang/Short;

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    new-array v1, v0, [B

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    new-array v1, v0, [Ljava/lang/Byte;

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    new-array v1, v0, [D

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    new-array v1, v0, [Ljava/lang/Double;

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    new-array v1, v0, [F

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    new-array v1, v0, [Ljava/lang/Float;

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    new-array v1, v0, [Z

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    new-array v1, v0, [Ljava/lang/Boolean;

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    new-array v1, v0, [C

    sput-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    new-array v0, v0, [Ljava/lang/Character;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "Index: "

    const/4 v1, 0x0

    if-nez p0, :cond_2a

    if-nez p1, :cond_10

    const/4 v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v0

    :cond_10
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Length: 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gt p1, v2, :cond_48

    if-ltz p1, :cond_48

    add-int/lit8 v0, v2, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    if-ge p1, v2, :cond_47

    add-int/lit8 v1, p1, 0x1

    sub-int v3, v2, p1

    invoke-static {p0, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_47
    return-object v0

    :cond_48
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Length: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static add([BB)[B
    .registers 4

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    return-object v0
.end method

.method public static add([BIB)[B
    .registers 5

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static add([CC)[C
    .registers 4

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    return-object v0
.end method

.method public static add([CIC)[C
    .registers 5

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static add([DD)[D
    .registers 5

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    return-object v0
.end method

.method public static add([DID)[D
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static add([FF)[F
    .registers 4

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-object v0
.end method

.method public static add([FIF)[F
    .registers 5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static add([II)[I
    .registers 4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-object v0
.end method

.method public static add([III)[I
    .registers 5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static add([JIJ)[J
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JJ)[J
    .registers 5

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    return-object v0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_12

    :cond_c
    if-eqz p2, :cond_19

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_12
    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    return-object v1

    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Array and element cannot both be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_d

    :cond_7
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_d
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    return-object v1

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments cannot both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add([SIS)[S
    .registers 5

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SS)[S
    .registers 4

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-short p1, v0, v1

    return-object v0
.end method

.method public static add([ZIZ)[Z
    .registers 5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZZ)[Z
    .registers 4

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-boolean p1, v0, v1

    return-object v0
.end method

.method public static varargs addAll([B[B)[B
    .registers 6

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    return-object v0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    return-object v0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs addAll([C[C)[C
    .registers 6

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    return-object v0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    return-object v0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs addAll([D[D)[D
    .registers 6

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    return-object v0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    return-object v0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [D

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs addAll([F[F)[F
    .registers 6

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    return-object v0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    return-object v0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs addAll([I[I)[I
    .registers 6

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    return-object v0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    return-object v0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs addAll([J[J)[J
    .registers 6

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    return-object v0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    return-object v0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [J

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_24
    array-length v2, p0

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_29
    .catch Ljava/lang/ArrayStoreException; {:try_start_24 .. :try_end_29} :catch_2b

    nop

    return-object v1

    :catch_2b
    move-exception v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_61

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot store "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in an array of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_61
    throw v2
.end method

.method public static varargs addAll([S[S)[S
    .registers 6

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    return-object v0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    return-object v0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs addAll([Z[Z)[Z
    .registers 6

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    return-object v0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    return-object v0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static clone([B)[B
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static clone([C)[C
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static clone([D)[D
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static clone([F)[F
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static clone([I)[I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static clone([J)[J
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static clone([S)[S
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static clone([Z)[Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static contains([BB)Z
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([CC)Z
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([DD)Z
    .registers 5

    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([DDD)Z
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static contains([FF)Z
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([II)Z
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([JJ)Z
    .registers 5

    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([SS)Z
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static contains([ZZ)Z
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p0, :cond_19

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_19
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static extractIndices(Ljava/util/HashSet;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    move v1, v4

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 2

    new-instance v0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([BB)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static indexOf([BBI)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    move v1, p2

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_13

    aget-byte v2, p0, v1

    if-ne p1, v2, :cond_10

    return v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    return v0
.end method

.method public static indexOf([CC)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static indexOf([CCI)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    move v1, p2

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_13

    aget-char v2, p0, v1

    if-ne p1, v2, :cond_10

    return v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    return v0
.end method

.method public static indexOf([DD)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDD)I
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDI)I
    .registers 8

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p3, :cond_b

    const/4 p3, 0x0

    :cond_b
    move v0, p3

    :goto_c
    array-length v2, p0

    if-ge v0, v2, :cond_19

    aget-wide v2, p0, v0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_19
    return v1
.end method

.method public static indexOf([DDID)I
    .registers 14

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p3, :cond_b

    const/4 p3, 0x0

    :cond_b
    sub-double v2, p1, p4

    add-double v4, p1, p4

    move v0, p3

    :goto_10
    array-length v6, p0

    if-ge v0, v6, :cond_23

    aget-wide v6, p0, v0

    cmpl-double v6, v6, v2

    if-ltz v6, :cond_20

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v4

    if-gtz v6, :cond_20

    return v0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_23
    return v1
.end method

.method public static indexOf([FF)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static indexOf([FFI)I
    .registers 6

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p2, :cond_b

    const/4 p2, 0x0

    :cond_b
    move v0, p2

    :goto_c
    array-length v2, p0

    if-ge v0, v2, :cond_19

    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_19
    return v1
.end method

.method public static indexOf([II)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    move v1, p2

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_13

    aget v2, p0, v1

    if-ne p1, v2, :cond_10

    return v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    return v0
.end method

.method public static indexOf([JJ)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static indexOf([JJI)I
    .registers 8

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p3, :cond_7

    const/4 p3, 0x0

    :cond_7
    move v1, p3

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_15

    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-nez v2, :cond_12

    return v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_15
    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    if-nez p1, :cond_16

    move v1, p2

    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_15

    aget-object v2, p0, v1

    if-nez v2, :cond_12

    return v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    goto :goto_34

    :cond_16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, p2

    :goto_25
    array-length v2, p0

    if-ge v1, v2, :cond_34

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    return v1

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_34
    :goto_34
    return v0
.end method

.method public static indexOf([SS)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static indexOf([SSI)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    move v1, p2

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_13

    aget-short v2, p0, v1

    if-ne p1, v2, :cond_10

    return v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    return v0
.end method

.method public static indexOf([ZZ)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .registers 6

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p2, :cond_b

    const/4 p2, 0x0

    :cond_b
    move v0, p2

    :goto_c
    array-length v2, p0

    if-ge v0, v2, :cond_17

    aget-boolean v2, p0, v0

    if-ne p1, v2, :cond_14

    return v0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_17
    return v1
.end method

.method public static isEmpty([B)Z
    .registers 2

    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([C)Z
    .registers 2

    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([D)Z
    .registers 2

    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([F)Z
    .registers 2

    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([I)Z
    .registers 2

    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([J)Z
    .registers 2

    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .registers 2

    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([S)Z
    .registers 2

    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([Z)Z
    .registers 2

    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    new-instance v0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0
.end method

.method public static isNotEmpty([B)Z
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([C)Z
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([D)Z
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([F)Z
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([I)Z
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([J)Z
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([S)Z
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNotEmpty([Z)Z
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isSameLength([B[B)Z
    .registers 4

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([C[C)Z
    .registers 4

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([D[D)Z
    .registers 4

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([F[F)Z
    .registers 4

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([I[I)Z
    .registers 4

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([J[J)Z
    .registers 4

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 4

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([S[S)Z
    .registers 4

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([Z[Z)Z
    .registers 4

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lastIndexOf([BB)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BBI)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    return v0

    :cond_7
    array-length v1, p0

    if-lt p2, v1, :cond_d

    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_d
    move v1, p2

    :goto_e
    if-ltz v1, :cond_18

    aget-byte v2, p0, v1

    if-ne p1, v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_18
    return v0
.end method

.method public static lastIndexOf([CC)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([CCI)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    return v0

    :cond_7
    array-length v1, p0

    if-lt p2, v1, :cond_d

    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_d
    move v1, p2

    :goto_e
    if-ltz v1, :cond_18

    aget-char v2, p0, v1

    if-ne p1, v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_18
    return v0
.end method

.method public static lastIndexOf([DD)I
    .registers 4

    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDD)I
    .registers 11

    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDI)I
    .registers 8

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p3, :cond_b

    return v1

    :cond_b
    array-length v0, p0

    if-lt p3, v0, :cond_11

    array-length v0, p0

    add-int/lit8 p3, v0, -0x1

    :cond_11
    move v0, p3

    :goto_12
    if-ltz v0, :cond_1e

    aget-wide v2, p0, v0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_1b

    return v0

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_1e
    return v1
.end method

.method public static lastIndexOf([DDID)I
    .registers 14

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p3, :cond_b

    return v1

    :cond_b
    array-length v0, p0

    if-lt p3, v0, :cond_11

    array-length v0, p0

    add-int/lit8 p3, v0, -0x1

    :cond_11
    sub-double v2, p1, p4

    add-double v4, p1, p4

    move v0, p3

    :goto_16
    if-ltz v0, :cond_28

    aget-wide v6, p0, v0

    cmpl-double v6, v6, v2

    if-ltz v6, :cond_25

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v4

    if-gtz v6, :cond_25

    return v0

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_28
    return v1
.end method

.method public static lastIndexOf([FF)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([FFI)I
    .registers 6

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p2, :cond_b

    return v1

    :cond_b
    array-length v0, p0

    if-lt p2, v0, :cond_11

    array-length v0, p0

    add-int/lit8 p2, v0, -0x1

    :cond_11
    move v0, p2

    :goto_12
    if-ltz v0, :cond_1e

    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1b

    return v0

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_1e
    return v1
.end method

.method public static lastIndexOf([II)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([III)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([III)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    return v0

    :cond_7
    array-length v1, p0

    if-lt p2, v1, :cond_d

    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_d
    move v1, p2

    :goto_e
    if-ltz v1, :cond_18

    aget v2, p0, v1

    if-ne p1, v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_18
    return v0
.end method

.method public static lastIndexOf([JJ)I
    .registers 4

    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([JJI)I
    .registers 8

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p3, :cond_7

    return v0

    :cond_7
    array-length v1, p0

    if-lt p3, v1, :cond_d

    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    :cond_d
    move v1, p3

    :goto_e
    if-ltz v1, :cond_1a

    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-nez v2, :cond_17

    return v1

    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_1a
    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    return v0

    :cond_7
    array-length v1, p0

    if-lt p2, v1, :cond_d

    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_d
    if-nez p1, :cond_1b

    move v1, p2

    :goto_10
    if-ltz v1, :cond_1a

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    return v1

    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_1a
    goto :goto_38

    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    move v1, p2

    :goto_2a
    if-ltz v1, :cond_38

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    return v1

    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    :cond_38
    :goto_38
    return v0
.end method

.method public static lastIndexOf([SS)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([SSI)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    return v0

    :cond_7
    array-length v1, p0

    if-lt p2, v1, :cond_d

    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_d
    move v1, p2

    :goto_e
    if-ltz v1, :cond_18

    aget-short v2, p0, v1

    if-ne p1, v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_18
    return v0
.end method

.method public static lastIndexOf([ZZ)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([ZZI)I
    .registers 6

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p2, :cond_b

    return v1

    :cond_b
    array-length v0, p0

    if-lt p2, v0, :cond_11

    array-length v0, p0

    add-int/lit8 p2, v0, -0x1

    :cond_11
    move v0, p2

    :goto_12
    if-ltz v0, :cond_1c

    aget-boolean v2, p0, v0

    if-ne p1, v2, :cond_19

    return v0

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_1c
    return v1
.end method

.method public static nullToEmpty([B)[B
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method public static nullToEmpty([C)[C
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v0
.end method

.method public static nullToEmpty([D)[D
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0
.end method

.method public static nullToEmpty([F)[F
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v0
.end method

.method public static nullToEmpty([I)[I
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v0
.end method

.method public static nullToEmpty([J)[J
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Byte;)[Ljava/lang/Byte;
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Character;)[Ljava/lang/Character;
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Double;)[Ljava/lang/Double;
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Float;)[Ljava/lang/Float;
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Integer;)[Ljava/lang/Integer;
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Long;)[Ljava/lang/Long;
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Short;)[Ljava/lang/Short;
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method public static nullToEmpty([S)[S
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v0
.end method

.method public static nullToEmpty([Z)[Z
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    return-object p0

    :cond_7
    :goto_7
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v0
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ltz p1, :cond_28

    if-ge p1, v0, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_27

    add-int/lit8 v2, p1, 0x1

    sub-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_27
    return-object v1

    :cond_28
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static remove([BI)[B
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static remove([CI)[C
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static remove([DI)[D
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static remove([FI)[F
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static remove([II)[I
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static remove([JI)[J
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static remove([SI)[S
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static remove([ZI)[Z
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method private static varargs removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;
    .registers 12

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isNotEmpty([I)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    array-length v2, p1

    move v3, v0

    :goto_10
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_40

    aget v4, p1, v2

    if-ltz v4, :cond_21

    if-ge v4, v0, :cond_21

    if-lt v4, v3, :cond_1d

    goto :goto_10

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_10

    :cond_21
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sub-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    if-ge v1, v0, :cond_71

    move v3, v0

    sub-int v4, v0, v1

    array-length v5, p1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_56
    if-ltz v5, :cond_6b

    aget v7, p1, v5

    sub-int v8, v3, v7

    if-le v8, v6, :cond_67

    sub-int v8, v3, v7

    sub-int/2addr v8, v6

    sub-int/2addr v4, v8

    add-int/lit8 v9, v7, 0x1

    invoke-static {p0, v9, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_67
    move v3, v7

    add-int/lit8 v5, v5, -0x1

    goto :goto_56

    :cond_6b
    if-lez v3, :cond_71

    const/4 v5, 0x0

    invoke-static {p0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_71
    return-object v2
.end method

.method public static varargs removeAll([B[I)[B
    .registers 3

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static varargs removeAll([C[I)[C
    .registers 3

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static varargs removeAll([D[I)[D
    .registers 3

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static varargs removeAll([F[I)[F
    .registers 3

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static varargs removeAll([I[I)[I
    .registers 3

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static varargs removeAll([J[I)[J
    .registers 3

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I)[TT;"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs removeAll([S[I)[S
    .registers 3

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static varargs removeAll([Z[I)[Z
    .registers 3

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeElement([BB)[B
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v1

    return-object v1

    :cond_c
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([BI)[B

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([CC)[C
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v1

    return-object v1

    :cond_c
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([CI)[C

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([DD)[D
    .registers 5

    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v1

    return-object v1

    :cond_c
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([DI)[D

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([FF)[F
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v1

    return-object v1

    :cond_c
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([FI)[F

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([II)[I
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v1

    return-object v1

    :cond_c
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([II)[I

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([JJ)[J
    .registers 5

    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v1

    return-object v1

    :cond_c
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([JI)[J

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_c
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([SS)[S
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v1

    return-object v1

    :cond_c
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([SI)[S

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([ZZ)[Z
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v1

    return-object v1

    :cond_c
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([ZI)[Z

    move-result-object v1

    return-object v1
.end method

.method public static varargs removeElements([B[B)[B
    .registers 11

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_30

    new-instance v6, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v5}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    :goto_61
    if-ge v6, v7, :cond_7b

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    invoke-static {p0, v8, v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v5

    if-gez v5, :cond_6e

    goto :goto_7b

    :cond_6e
    add-int/lit8 v8, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    :cond_7b
    :goto_7b
    goto :goto_43

    :cond_7c
    invoke-static {v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([B[I)[B

    move-result-object v2

    return-object v2

    :cond_85
    :goto_85
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([C[C)[C
    .registers 11

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget-char v3, p1, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_30

    new-instance v6, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v5}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    :goto_61
    if-ge v6, v7, :cond_7b

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v8

    invoke-static {p0, v8, v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v5

    if-gez v5, :cond_6e

    goto :goto_7b

    :cond_6e
    add-int/lit8 v8, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    :cond_7b
    :goto_7b
    goto :goto_43

    :cond_7c
    invoke-static {v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([C[I)[C

    move-result-object v2

    return-object v2

    :cond_85
    :goto_85
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([D[D)[D
    .registers 12

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    if-nez v6, :cond_30

    new-instance v7, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v6}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    :goto_61
    if-ge v6, v7, :cond_7b

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {p0, v8, v9, v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v5

    if-gez v5, :cond_6e

    goto :goto_7b

    :cond_6e
    add-int/lit8 v8, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    :cond_7b
    :goto_7b
    goto :goto_43

    :cond_7c
    invoke-static {v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([D[I)[D

    move-result-object v2

    return-object v2

    :cond_85
    :goto_85
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([F[F)[F
    .registers 11

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_30

    new-instance v6, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v5}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    :goto_61
    if-ge v6, v7, :cond_7b

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-static {p0, v8, v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v5

    if-gez v5, :cond_6e

    goto :goto_7b

    :cond_6e
    add-int/lit8 v8, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    :cond_7b
    :goto_7b
    goto :goto_43

    :cond_7c
    invoke-static {v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([F[I)[F

    move-result-object v2

    return-object v2

    :cond_85
    :goto_85
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([I[I)[I
    .registers 11

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_30

    new-instance v6, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v5}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    :goto_61
    if-ge v6, v7, :cond_7b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p0, v8, v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v5

    if-gez v5, :cond_6e

    goto :goto_7b

    :cond_6e
    add-int/lit8 v8, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    :cond_7b
    :goto_7b
    goto :goto_43

    :cond_7c
    invoke-static {v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([I[I)[I

    move-result-object v2

    return-object v2

    :cond_85
    :goto_85
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([J[J)[J
    .registers 12

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    if-nez v6, :cond_30

    new-instance v7, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v6}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    :goto_61
    if-ge v6, v7, :cond_7b

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9, v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v5

    if-gez v5, :cond_6e

    goto :goto_7b

    :cond_6e
    add-int/lit8 v8, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    :cond_7b
    :goto_7b
    goto :goto_43

    :cond_7c
    invoke-static {v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([J[I)[J

    move-result-object v2

    return-object v2

    :cond_85
    :goto_85
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_7b

    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_32

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    if-nez v4, :cond_2c

    new-instance v5, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_2c
    invoke-virtual {v4}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_32
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    :goto_5b
    if-ge v6, v7, :cond_71

    invoke-static {p0, v4, v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v5

    if-gez v5, :cond_64

    goto :goto_71

    :cond_64
    add-int/lit8 v8, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_5b

    :cond_71
    :goto_71
    goto :goto_3f

    :cond_72
    invoke-static {v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_7b
    :goto_7b
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([S[S)[S
    .registers 11

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget-short v3, p1, v2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_30

    new-instance v6, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v5}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    :goto_61
    if-ge v6, v7, :cond_7b

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v8

    invoke-static {p0, v8, v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v5

    if-gez v5, :cond_6e

    goto :goto_7b

    :cond_6e
    add-int/lit8 v8, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    :cond_7b
    :goto_7b
    goto :goto_43

    :cond_7c
    invoke-static {v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([S[I)[S

    move-result-object v2

    return-object v2

    :cond_85
    :goto_85
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([Z[Z)[Z
    .registers 11

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    :cond_e
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_36

    aget-boolean v3, p1, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_30

    new-instance v6, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v5}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    :goto_61
    if-ge v6, v7, :cond_7b

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {p0, v8, v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v5

    if-gez v5, :cond_6e

    goto :goto_7b

    :cond_6e
    add-int/lit8 v8, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_61

    :cond_7b
    :goto_7b
    goto :goto_43

    :cond_7c
    invoke-static {v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v2

    invoke-static {p0, v2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([Z[I)[Z

    move-result-object v2

    return-object v2

    :cond_85
    :goto_85
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    return-object v0
.end method

.method public static reverse([B)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-le v1, v0, :cond_16

    aget-byte v2, p0, v1

    aget-byte v3, p0, v0

    aput-byte v3, p0, v1

    aput-byte v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method

.method public static reverse([C)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-le v1, v0, :cond_16

    aget-char v2, p0, v1

    aget-char v3, p0, v0

    aput-char v3, p0, v1

    aput-char v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method

.method public static reverse([D)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-le v1, v0, :cond_16

    aget-wide v2, p0, v1

    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    aput-wide v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method

.method public static reverse([F)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-le v1, v0, :cond_16

    aget v2, p0, v1

    aget v3, p0, v0

    aput v3, p0, v1

    aput v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method

.method public static reverse([I)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-le v1, v0, :cond_16

    aget v2, p0, v1

    aget v3, p0, v0

    aput v3, p0, v1

    aput v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method

.method public static reverse([J)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-le v1, v0, :cond_16

    aget-wide v2, p0, v1

    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    aput-wide v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method

.method public static reverse([Ljava/lang/Object;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-le v1, v0, :cond_16

    aget-object v2, p0, v1

    aget-object v3, p0, v0

    aput-object v3, p0, v1

    aput-object v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method

.method public static reverse([S)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-le v1, v0, :cond_16

    aget-short v2, p0, v1

    aget-short v3, p0, v0

    aput-short v3, p0, v1

    aput-short v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method

.method public static reverse([Z)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-le v1, v0, :cond_16

    aget-boolean v2, p0, v1

    aget-boolean v3, p0, v0

    aput-boolean v3, p0, v1

    aput-boolean v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method

.method public static subarray([BII)[B
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    if-gez p1, :cond_7

    const/4 p1, 0x0

    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    array-length p2, p0

    :cond_b
    sub-int v0, p2, p1

    if-gtz v0, :cond_12

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v1

    :cond_12
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static subarray([CII)[C
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    if-gez p1, :cond_7

    const/4 p1, 0x0

    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    array-length p2, p0

    :cond_b
    sub-int v0, p2, p1

    if-gtz v0, :cond_12

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v1

    :cond_12
    new-array v1, v0, [C

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static subarray([DII)[D
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    if-gez p1, :cond_7

    const/4 p1, 0x0

    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    array-length p2, p0

    :cond_b
    sub-int v0, p2, p1

    if-gtz v0, :cond_12

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v1

    :cond_12
    new-array v1, v0, [D

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static subarray([FII)[F
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    if-gez p1, :cond_7

    const/4 p1, 0x0

    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    array-length p2, p0

    :cond_b
    sub-int v0, p2, p1

    if-gtz v0, :cond_12

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v1

    :cond_12
    new-array v1, v0, [F

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static subarray([III)[I
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    if-gez p1, :cond_7

    const/4 p1, 0x0

    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    array-length p2, p0

    :cond_b
    sub-int v0, p2, p1

    if-gtz v0, :cond_12

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v1

    :cond_12
    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static subarray([JII)[J
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    if-gez p1, :cond_7

    const/4 p1, 0x0

    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    array-length p2, p0

    :cond_b
    sub-int v0, p2, p1

    if-gtz v0, :cond_12

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v1

    :cond_12
    new-array v1, v0, [J

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    if-gez p1, :cond_7

    const/4 p1, 0x0

    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    array-length p2, p0

    :cond_b
    sub-int v0, p2, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-gtz v0, :cond_1f

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    return-object v2

    :cond_1f
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public static subarray([SII)[S
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    if-gez p1, :cond_7

    const/4 p1, 0x0

    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    array-length p2, p0

    :cond_b
    sub-int v0, p2, p1

    if-gtz v0, :cond_12

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v1

    :cond_12
    new-array v1, v0, [S

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static subarray([ZII)[Z
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    if-gez p1, :cond_7

    const/4 p1, 0x0

    :cond_7
    array-length v0, p0

    if-le p2, v0, :cond_b

    array-length p2, p0

    :cond_b
    sub-int v0, p2, p1

    if-gtz v0, :cond_12

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v1

    :cond_12
    new-array v1, v0, [Z

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static varargs toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    return-object p0
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p0

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_10
    array-length v2, p0

    if-ge v1, v2, :cond_84

    aget-object v2, p0, v1

    instance-of v3, v2, Ljava/util/Map$Entry;

    if-eqz v3, :cond_28

    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    :cond_28
    instance-of v3, v2, [Ljava/lang/Object;

    const-string v4, ", \'"

    const-string v5, "Array element "

    if-eqz v3, :cond_64

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    array-length v6, v3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_44

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_44
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\', has a length less than 2"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_64
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\', is neither of type Map.Entry nor an Array"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_84
    return-object v0
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1f

    aget-boolean v2, p0, v1

    if-eqz v2, :cond_18

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1a

    :cond_18
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1a
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1f
    return-object v0
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Byte;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Character;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-char v2, p0, v1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Float;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Short;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-short v2, p0, v1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    :goto_1b
    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v3

    :goto_1b
    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .registers 8

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move-wide v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :goto_1b
    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_1b
    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1b
    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .registers 8

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move-wide v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_1b
    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [S

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [S

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v3

    :goto_1b
    aput-short v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move v3, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_1b
    aput-boolean v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    const-string v0, "{}"

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;

    sget-object v1, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)V

    invoke-virtual {v0, p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
