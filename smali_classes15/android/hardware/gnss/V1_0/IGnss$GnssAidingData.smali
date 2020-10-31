.class public final Landroid/hardware/gnss/V1_0/IGnss$GnssAidingData;
.super Ljava/lang/Object;
.source "IGnss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssAidingData"
.end annotation


# static fields
.field public static final DELETE_ALL:S = -0x1s

.field public static final DELETE_ALMANAC:S = 0x2s

.field public static final DELETE_CELLDB_INFO:S = -0x8000s

.field public static final DELETE_EPHEMERIS:S = 0x1s

.field public static final DELETE_HEALTH:S = 0x40s

.field public static final DELETE_IONO:S = 0x10s

.field public static final DELETE_POSITION:S = 0x4s

.field public static final DELETE_RTI:S = 0x400s

.field public static final DELETE_SADATA:S = 0x200s

.field public static final DELETE_SVDIR:S = 0x80s

.field public static final DELETE_SVSTEER:S = 0x100s

.field public static final DELETE_TIME:S = 0x8s

.field public static final DELETE_UTC:S = 0x20s


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

    const-string v2, "DELETE_EPHEMERIS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    :cond_13
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    const-string v2, "DELETE_ALMANAC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x2

    int-to-short v1, v2

    :cond_20
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2d

    const-string v2, "DELETE_POSITION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x4

    int-to-short v1, v2

    :cond_2d
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3b

    const-string v2, "DELETE_TIME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x8

    int-to-short v1, v2

    :cond_3b
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_49

    const-string v2, "DELETE_IONO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x10

    int-to-short v1, v2

    :cond_49
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_57

    const-string v2, "DELETE_UTC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x20

    int-to-short v1, v2

    :cond_57
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_65

    const-string v2, "DELETE_HEALTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x40

    int-to-short v1, v2

    :cond_65
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_73

    const-string v2, "DELETE_SVDIR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v1, 0x80

    int-to-short v1, v2

    :cond_73
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_81

    const-string v2, "DELETE_SVSTEER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v1, 0x100

    int-to-short v1, v2

    :cond_81
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_8f

    const-string v2, "DELETE_SADATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v1, 0x200

    int-to-short v1, v2

    :cond_8f
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_9d

    const-string v2, "DELETE_RTI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v1, 0x400

    int-to-short v1, v2

    :cond_9d
    and-int/lit16 v2, p0, -0x8000

    const/16 v3, -0x8000

    if-ne v2, v3, :cond_ab

    const-string v2, "DELETE_CELLDB_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v1, -0x8000

    int-to-short v1, v2

    :cond_ab
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b8

    const-string v2, "DELETE_ALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, -0x1

    int-to-short v1, v2

    :cond_b8
    if-eq p0, v1, :cond_d9

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

    :cond_d9
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(S)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "DELETE_EPHEMERIS"

    return-object v0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "DELETE_ALMANAC"

    return-object v0

    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    const-string v0, "DELETE_POSITION"

    return-object v0

    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    const-string v0, "DELETE_TIME"

    return-object v0

    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    const-string v0, "DELETE_IONO"

    return-object v0

    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    const-string v0, "DELETE_UTC"

    return-object v0

    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    const-string v0, "DELETE_HEALTH"

    return-object v0

    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    const-string v0, "DELETE_SVDIR"

    return-object v0

    :cond_35
    const/16 v0, 0x100

    if-ne p0, v0, :cond_3c

    const-string v0, "DELETE_SVSTEER"

    return-object v0

    :cond_3c
    const/16 v0, 0x200

    if-ne p0, v0, :cond_43

    const-string v0, "DELETE_SADATA"

    return-object v0

    :cond_43
    const/16 v0, 0x400

    if-ne p0, v0, :cond_4a

    const-string v0, "DELETE_RTI"

    return-object v0

    :cond_4a
    const/16 v0, -0x8000

    if-ne p0, v0, :cond_51

    const-string v0, "DELETE_CELLDB_INFO"

    return-object v0

    :cond_51
    const/4 v0, -0x1

    if-ne p0, v0, :cond_57

    const-string v0, "DELETE_ALL"

    return-object v0

    :cond_57
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
