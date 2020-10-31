.class public final Landroid/hardware/gnss/V1_0/GnssLocationFlags;
.super Ljava/lang/Object;
.source "GnssLocationFlags.java"


# static fields
.field public static final HAS_ALTITUDE:S = 0x2s

.field public static final HAS_BEARING:S = 0x8s

.field public static final HAS_BEARING_ACCURACY:S = 0x80s

.field public static final HAS_HORIZONTAL_ACCURACY:S = 0x10s

.field public static final HAS_LAT_LONG:S = 0x1s

.field public static final HAS_SPEED:S = 0x4s

.field public static final HAS_SPEED_ACCURACY:S = 0x40s

.field public static final HAS_VERTICAL_ACCURACY:S = 0x20s


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(S)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    const-string v2, "HAS_LAT_LONG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    :cond_13
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    const-string v2, "HAS_ALTITUDE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x2

    int-to-short v1, v2

    :cond_20
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2d

    const-string v2, "HAS_SPEED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x4

    int-to-short v1, v2

    :cond_2d
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3b

    const-string v2, "HAS_BEARING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x8

    int-to-short v1, v2

    :cond_3b
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_49

    const-string v2, "HAS_HORIZONTAL_ACCURACY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x10

    int-to-short v1, v2

    :cond_49
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_57

    const-string v2, "HAS_VERTICAL_ACCURACY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x20

    int-to-short v1, v2

    :cond_57
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_65

    const-string v2, "HAS_SPEED_ACCURACY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x40

    int-to-short v1, v2

    :cond_65
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_73

    const-string v2, "HAS_BEARING_ACCURACY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v1, 0x80

    int-to-short v1, v2

    :cond_73
    if-eq p0, v1, :cond_94

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_94
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(S)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "HAS_LAT_LONG"

    return-object v0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "HAS_ALTITUDE"

    return-object v0

    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    const-string v0, "HAS_SPEED"

    return-object v0

    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    const-string v0, "HAS_BEARING"

    return-object v0

    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    const-string v0, "HAS_HORIZONTAL_ACCURACY"

    return-object v0

    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    const-string v0, "HAS_VERTICAL_ACCURACY"

    return-object v0

    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    const-string v0, "HAS_SPEED_ACCURACY"

    return-object v0

    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    const-string v0, "HAS_BEARING_ACCURACY"

    return-object v0

    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
