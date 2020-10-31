.class public final Landroid/hardware/radio/V1_2/RadioConst;
.super Ljava/lang/Object;
.source "RadioConst.java"


# static fields
.field public static final CARD_MAX_APPS:I = 0x8

.field public static final CDMA_ALPHA_INFO_BUFFER_LENGTH:I = 0x40

.field public static final CDMA_MAX_NUMBER_OF_INFO_RECS:I = 0xa

.field public static final CDMA_NUMBER_INFO_BUFFER_LENGTH:I = 0x51

.field public static final MAX_CLIENT_ID_LENGTH:I = 0x2

.field public static final MAX_DEBUG_SOCKET_NAME_LENGTH:I = 0xc

.field public static final MAX_QEMU_PIPE_NAME_LENGTH:I = 0xb

.field public static final MAX_RILDS:I = 0x3

.field public static final MAX_SOCKET_NAME_LENGTH:I = 0x6

.field public static final MAX_UUID_LENGTH:I = 0x40

.field public static final NUM_SERVICE_CLASSES:I = 0x7

.field public static final NUM_TX_POWER_LEVELS:I = 0x5

.field public static final RADIO_ACCESS_SPECIFIER_MAX_SIZE:I = 0x8

.field public static final SS_INFO_MAX:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_13

    const-string v2, "CDMA_ALPHA_INFO_BUFFER_LENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x40

    :cond_13
    and-int/lit8 v2, p0, 0x51

    const/16 v4, 0x51

    if-ne v2, v4, :cond_20

    const-string v2, "CDMA_NUMBER_INFO_BUFFER_LENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x51

    :cond_20
    and-int/lit8 v2, p0, 0x3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2c

    const-string v2, "MAX_RILDS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3

    :cond_2c
    and-int/lit8 v2, p0, 0x6

    const/4 v4, 0x6

    if-ne v2, v4, :cond_38

    const-string v2, "MAX_SOCKET_NAME_LENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6

    :cond_38
    and-int/lit8 v2, p0, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_44

    const-string v2, "MAX_CLIENT_ID_LENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_44
    and-int/lit8 v2, p0, 0xc

    const/16 v4, 0xc

    if-ne v2, v4, :cond_51

    const-string v2, "MAX_DEBUG_SOCKET_NAME_LENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xc

    :cond_51
    and-int/lit8 v2, p0, 0xb

    const/16 v4, 0xb

    if-ne v2, v4, :cond_5e

    const-string v2, "MAX_QEMU_PIPE_NAME_LENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xb

    :cond_5e
    and-int/lit8 v2, p0, 0x40

    if-ne v2, v3, :cond_69

    const-string v2, "MAX_UUID_LENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x40

    :cond_69
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_76

    const-string v2, "CARD_MAX_APPS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_76
    and-int/lit8 v2, p0, 0xa

    const/16 v4, 0xa

    if-ne v2, v4, :cond_83

    const-string v2, "CDMA_MAX_NUMBER_OF_INFO_RECS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xa

    :cond_83
    and-int/lit8 v2, p0, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_8f

    const-string v2, "SS_INFO_MAX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_8f
    and-int/lit8 v2, p0, 0x7

    const/4 v4, 0x7

    if-ne v2, v4, :cond_9b

    const-string v2, "NUM_SERVICE_CLASSES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7

    :cond_9b
    and-int/lit8 v2, p0, 0x5

    const/4 v4, 0x5

    if-ne v2, v4, :cond_a7

    const-string v2, "NUM_TX_POWER_LEVELS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    :cond_a7
    and-int/lit8 v2, p0, 0x8

    if-ne v2, v3, :cond_b2

    const-string v2, "RADIO_ACCESS_SPECIFIER_MAX_SIZE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_b2
    if-eq p0, v1, :cond_ce

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

    :cond_ce
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x40

    if-ne p0, v0, :cond_7

    const-string v0, "CDMA_ALPHA_INFO_BUFFER_LENGTH"

    return-object v0

    :cond_7
    const/16 v1, 0x51

    if-ne p0, v1, :cond_e

    const-string v0, "CDMA_NUMBER_INFO_BUFFER_LENGTH"

    return-object v0

    :cond_e
    const/4 v1, 0x3

    if-ne p0, v1, :cond_14

    const-string v0, "MAX_RILDS"

    return-object v0

    :cond_14
    const/4 v1, 0x6

    if-ne p0, v1, :cond_1a

    const-string v0, "MAX_SOCKET_NAME_LENGTH"

    return-object v0

    :cond_1a
    const/4 v1, 0x2

    if-ne p0, v1, :cond_20

    const-string v0, "MAX_CLIENT_ID_LENGTH"

    return-object v0

    :cond_20
    const/16 v1, 0xc

    if-ne p0, v1, :cond_27

    const-string v0, "MAX_DEBUG_SOCKET_NAME_LENGTH"

    return-object v0

    :cond_27
    const/16 v1, 0xb

    if-ne p0, v1, :cond_2e

    const-string v0, "MAX_QEMU_PIPE_NAME_LENGTH"

    return-object v0

    :cond_2e
    if-ne p0, v0, :cond_33

    const-string v0, "MAX_UUID_LENGTH"

    return-object v0

    :cond_33
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3a

    const-string v0, "CARD_MAX_APPS"

    return-object v0

    :cond_3a
    const/16 v1, 0xa

    if-ne p0, v1, :cond_41

    const-string v0, "CDMA_MAX_NUMBER_OF_INFO_RECS"

    return-object v0

    :cond_41
    const/4 v1, 0x4

    if-ne p0, v1, :cond_47

    const-string v0, "SS_INFO_MAX"

    return-object v0

    :cond_47
    const/4 v1, 0x7

    if-ne p0, v1, :cond_4d

    const-string v0, "NUM_SERVICE_CLASSES"

    return-object v0

    :cond_4d
    const/4 v1, 0x5

    if-ne p0, v1, :cond_53

    const-string v0, "NUM_TX_POWER_LEVELS"

    return-object v0

    :cond_53
    if-ne p0, v0, :cond_58

    const-string v0, "RADIO_ACCESS_SPECIFIER_MAX_SIZE"

    return-object v0

    :cond_58
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
