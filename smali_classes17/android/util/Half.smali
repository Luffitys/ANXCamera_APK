.class public final Landroid/util/Half;
.super Ljava/lang/Number;
.source "Half.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Landroid/util/Half;",
        ">;"
    }
.end annotation


# static fields
.field public static final EPSILON:S = 0x1400s

.field public static final LOWEST_VALUE:S = -0x401s

.field public static final MAX_EXPONENT:I = 0xf

.field public static final MAX_VALUE:S = 0x7bffs

.field public static final MIN_EXPONENT:I = -0xe

.field public static final MIN_NORMAL:S = 0x400s

.field public static final MIN_VALUE:S = 0x1s

.field public static final NEGATIVE_INFINITY:S = -0x400s

.field public static final NEGATIVE_ZERO:S = -0x8000s

.field public static final NaN:S = 0x7e00s

.field public static final POSITIVE_INFINITY:S = 0x7c00s

.field public static final POSITIVE_ZERO:S = 0x0s

.field public static final SIZE:I = 0x10


# instance fields
.field private final mValue:S


# direct methods
.method public constructor <init>(D)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    double-to-float v0, p1

    invoke-static {v0}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    iput-short v0, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-static {p1}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    iput-short v0, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    iput-short v0, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public constructor <init>(S)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-short p1, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public static abs(S)S
    .registers 2

    and-int/lit16 v0, p0, 0x7fff

    int-to-short v0, v0

    return v0
.end method

.method public static ceil(S)S
    .registers 2

    invoke-static {p0}, Llibcore/util/FP16;->ceil(S)S

    move-result v0

    return v0
.end method

.method public static compare(SS)I
    .registers 3

    invoke-static {p0, p1}, Llibcore/util/FP16;->compare(SS)I

    move-result v0

    return v0
.end method

.method public static copySign(SS)S
    .registers 4

    const v0, 0x8000

    and-int/2addr v0, p1

    and-int/lit16 v1, p0, 0x7fff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static equals(SS)Z
    .registers 3

    invoke-static {p0, p1}, Llibcore/util/FP16;->equals(SS)Z

    move-result v0

    return v0
.end method

.method public static floor(S)S
    .registers 2

    invoke-static {p0}, Llibcore/util/FP16;->floor(S)S

    move-result v0

    return v0
.end method

.method public static getExponent(S)I
    .registers 2

    ushr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, -0xf

    return v0
.end method

.method public static getSign(S)I
    .registers 2

    const v0, 0x8000

    and-int/2addr v0, p0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method public static getSignificand(S)I
    .registers 2

    and-int/lit16 v0, p0, 0x3ff

    return v0
.end method

.method public static greater(SS)Z
    .registers 3

    invoke-static {p0, p1}, Llibcore/util/FP16;->greater(SS)Z

    move-result v0

    return v0
.end method

.method public static greaterEquals(SS)Z
    .registers 3

    invoke-static {p0, p1}, Llibcore/util/FP16;->greaterEquals(SS)Z

    move-result v0

    return v0
.end method

.method public static halfToIntBits(S)I
    .registers 3

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_9

    const/16 v0, 0x7e00

    goto :goto_d

    :cond_9
    const v0, 0xffff

    and-int/2addr v0, p0

    :goto_d
    return v0
.end method

.method public static halfToRawIntBits(S)I
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static halfToShortBits(S)S
    .registers 3

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_9

    const/16 v0, 0x7e00

    goto :goto_a

    :cond_9
    move v0, p0

    :goto_a
    return v0
.end method

.method public static hashCode(S)I
    .registers 2

    invoke-static {p0}, Landroid/util/Half;->halfToIntBits(S)I

    move-result v0

    return v0
.end method

.method public static intBitsToHalf(I)S
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method public static isInfinite(S)Z
    .registers 2

    invoke-static {p0}, Llibcore/util/FP16;->isInfinite(S)Z

    move-result v0

    return v0
.end method

.method public static isNaN(S)Z
    .registers 2

    invoke-static {p0}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    return v0
.end method

.method public static isNormalized(S)Z
    .registers 2

    invoke-static {p0}, Llibcore/util/FP16;->isNormalized(S)Z

    move-result v0

    return v0
.end method

.method public static less(SS)Z
    .registers 3

    invoke-static {p0, p1}, Llibcore/util/FP16;->less(SS)Z

    move-result v0

    return v0
.end method

.method public static lessEquals(SS)Z
    .registers 3

    invoke-static {p0, p1}, Llibcore/util/FP16;->lessEquals(SS)Z

    move-result v0

    return v0
.end method

.method public static max(SS)S
    .registers 3

    invoke-static {p0, p1}, Llibcore/util/FP16;->max(SS)S

    move-result v0

    return v0
.end method

.method public static min(SS)S
    .registers 3

    invoke-static {p0, p1}, Llibcore/util/FP16;->min(SS)S

    move-result v0

    return v0
.end method

.method public static parseHalf(Ljava/lang/String;)S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    return v0
.end method

.method public static round(S)S
    .registers 2

    invoke-static {p0}, Llibcore/util/FP16;->rint(S)S

    move-result v0

    return v0
.end method

.method public static toFloat(S)F
    .registers 2

    invoke-static {p0}, Llibcore/util/FP16;->toFloat(S)F

    move-result v0

    return v0
.end method

.method public static toHalf(F)S
    .registers 2

    invoke-static {p0}, Llibcore/util/FP16;->toHalf(F)S

    move-result v0

    return v0
.end method

.method public static toHexString(S)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Llibcore/util/FP16;->toHexString(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(S)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trunc(S)S
    .registers 2

    invoke-static {p0}, Llibcore/util/FP16;->trunc(S)S

    move-result v0

    return v0
.end method

.method public static valueOf(F)Landroid/util/Half;
    .registers 2

    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(F)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/Half;
    .registers 2

    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(S)Landroid/util/Half;
    .registers 2

    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 2

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Landroid/util/Half;)I
    .registers 4

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    iget-short v1, p1, Landroid/util/Half;->mValue:S

    invoke-static {v0, v1}, Landroid/util/Half;->compare(SS)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroid/util/Half;

    invoke-virtual {p0, p1}, Landroid/util/Half;->compareTo(Landroid/util/Half;)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .registers 3

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/util/Half;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Landroid/util/Half;

    iget-short v0, v0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->halfToIntBits(S)I

    move-result v0

    iget-short v1, p0, Landroid/util/Half;->mValue:S

    invoke-static {v1}, Landroid/util/Half;->halfToIntBits(S)I

    move-result v1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public floatValue()F
    .registers 2

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    return v0
.end method

.method public halfValue()S
    .registers 2

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->hashCode(S)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 2

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public isNaN()Z
    .registers 2

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->isNaN(S)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toString(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
