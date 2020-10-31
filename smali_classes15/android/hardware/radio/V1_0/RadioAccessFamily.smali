.class public final Landroid/hardware/radio/V1_0/RadioAccessFamily;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"


# static fields
.field public static final EDGE:I = 0x4

.field public static final EHRPD:I = 0x2000

.field public static final EVDO_0:I = 0x80

.field public static final EVDO_A:I = 0x100

.field public static final EVDO_B:I = 0x1000

.field public static final GPRS:I = 0x2

.field public static final GSM:I = 0x10000

.field public static final HSDPA:I = 0x200

.field public static final HSPA:I = 0x800

.field public static final HSPAP:I = 0x8000

.field public static final HSUPA:I = 0x400

.field public static final IS95A:I = 0x10

.field public static final IS95B:I = 0x20

.field public static final LTE:I = 0x4000

.field public static final LTE_CA:I = 0x80000

.field public static final ONE_X_RTT:I = 0x40

.field public static final TD_SCDMA:I = 0x20000

.field public static final UMTS:I = 0x8

.field public static final UNKNOWN:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    const-string v2, "GPRS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_1e
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2a

    const-string v2, "EDGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_2a
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_37

    const-string v2, "UMTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_37
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_44

    const-string v2, "IS95A"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x10

    :cond_44
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_51

    const-string v2, "IS95B"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x20

    :cond_51
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_5e

    const-string v2, "ONE_X_RTT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x40

    :cond_5e
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_6b

    const-string v2, "EVDO_0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x80

    :cond_6b
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_78

    const-string v2, "EVDO_A"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x100

    :cond_78
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_85

    const-string v2, "HSDPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x200

    :cond_85
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_92

    const-string v2, "HSUPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x400

    :cond_92
    and-int/lit16 v2, p0, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_9f

    const-string v2, "HSPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x800

    :cond_9f
    and-int/lit16 v2, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_ac

    const-string v2, "EVDO_B"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1000

    :cond_ac
    and-int/lit16 v2, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_b9

    const-string v2, "EHRPD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x2000

    :cond_b9
    and-int/lit16 v2, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_c6

    const-string v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x4000

    :cond_c6
    const v2, 0x8000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_d3

    const-string v3, "HSPAP"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_d3
    const/high16 v2, 0x10000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_df

    const-string v3, "GSM"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_df
    const/high16 v2, 0x20000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_eb

    const-string v3, "TD_SCDMA"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_eb
    const/high16 v2, 0x80000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_f7

    const-string v3, "LTE_CA"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_f7
    if-eq p0, v1, :cond_113

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_113
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "UNKNOWN"

    return-object v0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "GPRS"

    return-object v0

    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    const-string v0, "EDGE"

    return-object v0

    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    const-string v0, "UMTS"

    return-object v0

    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    const-string v0, "IS95A"

    return-object v0

    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    const-string v0, "IS95B"

    return-object v0

    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    const-string v0, "ONE_X_RTT"

    return-object v0

    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    const-string v0, "EVDO_0"

    return-object v0

    :cond_35
    const/16 v0, 0x100

    if-ne p0, v0, :cond_3c

    const-string v0, "EVDO_A"

    return-object v0

    :cond_3c
    const/16 v0, 0x200

    if-ne p0, v0, :cond_43

    const-string v0, "HSDPA"

    return-object v0

    :cond_43
    const/16 v0, 0x400

    if-ne p0, v0, :cond_4a

    const-string v0, "HSUPA"

    return-object v0

    :cond_4a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_51

    const-string v0, "HSPA"

    return-object v0

    :cond_51
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_58

    const-string v0, "EVDO_B"

    return-object v0

    :cond_58
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_5f

    const-string v0, "EHRPD"

    return-object v0

    :cond_5f
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_66

    const-string v0, "LTE"

    return-object v0

    :cond_66
    const v0, 0x8000

    if-ne p0, v0, :cond_6e

    const-string v0, "HSPAP"

    return-object v0

    :cond_6e
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_75

    const-string v0, "GSM"

    return-object v0

    :cond_75
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_7c

    const-string v0, "TD_SCDMA"

    return-object v0

    :cond_7c
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_83

    const-string v0, "LTE_CA"

    return-object v0

    :cond_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
