.class public final Landroid/nfc/tech/MifareClassic;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "MifareClassic.java"


# static fields
.field public static final BLOCK_SIZE:I = 0x10

.field public static final KEY_DEFAULT:[B

.field public static final KEY_MIFARE_APPLICATION_DIRECTORY:[B

.field public static final KEY_NFC_FORUM:[B

.field private static final MAX_BLOCK_COUNT:I = 0x100

.field private static final MAX_SECTOR_COUNT:I = 0x28

.field public static final SIZE_1K:I = 0x400

.field public static final SIZE_2K:I = 0x800

.field public static final SIZE_4K:I = 0x1000

.field public static final SIZE_MINI:I = 0x140

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_CLASSIC:I = 0x0

.field public static final TYPE_PLUS:I = 0x1

.field public static final TYPE_PRO:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mIsEmulated:Z

.field private mSize:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x6

    new-array v1, v0, [B

    fill-array-data v1, :array_18

    sput-object v1, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_20

    sput-object v1, Landroid/nfc/tech/MifareClassic;->KEY_MIFARE_APPLICATION_DIRECTORY:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_28

    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_NFC_FORUM:[B

    return-void

    nop

    :array_18
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_20
    .array-data 1
        -0x60t
        -0x5ft
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
    .end array-data

    nop

    :array_28
    .array-data 1
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
    .end array-data
.end method

.method public constructor <init>(Landroid/nfc/Tag;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    invoke-virtual {v1}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v3

    const/16 v4, 0x400

    const/4 v5, 0x1

    if-eq v3, v5, :cond_92

    const/16 v6, 0x28

    if-eq v3, v6, :cond_8b

    const/16 v6, 0x38

    const/16 v7, 0x1000

    if-eq v3, v6, :cond_84

    const/16 v6, 0x88

    if-eq v3, v6, :cond_7f

    const/16 v6, 0x98

    if-eq v3, v6, :cond_79

    const/16 v6, 0xb8

    if-eq v3, v6, :cond_79

    if-eq v3, v0, :cond_92

    const/16 v0, 0x9

    if-eq v3, v0, :cond_72

    const/16 v0, 0x10

    const/16 v4, 0x800

    if-eq v3, v0, :cond_6d

    const/16 v0, 0x11

    if-eq v3, v0, :cond_68

    const/16 v0, 0x18

    if-eq v3, v0, :cond_63

    const/16 v0, 0x19

    if-ne v3, v0, :cond_48

    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_97

    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag incorrectly enumerated as MIFARE Classic, SAK = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v7, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_97

    :cond_68
    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v7, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_97

    :cond_6d
    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_97

    :cond_72
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    const/16 v0, 0x140

    iput v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_97

    :cond_79
    const/4 v0, 0x2

    iput v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v7, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_97

    :cond_7f
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_97

    :cond_84
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v7, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    iput-boolean v5, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    goto :goto_97

    :cond_8b
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    iput-boolean v5, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    goto :goto_97

    :cond_92
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    nop

    :goto_97
    return-void
.end method

.method private authenticate(I[BZ)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    if-eqz p3, :cond_12

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    goto :goto_16

    :cond_12
    const/16 v2, 0x61

    aput-byte v2, v0, v1

    :goto_16
    invoke-virtual {p0, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getTag()Landroid/nfc/Tag;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/Tag;->getId()[B

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    const/4 v6, 0x2

    invoke-static {v2, v4, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x6

    invoke-static {p2, v1, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_31
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object v4
    :try_end_35
    .catch Landroid/nfc/TagLostException; {:try_start_31 .. :try_end_35} :catch_3b
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_35} :catch_39

    if-eqz v4, :cond_38

    return v3

    :cond_38
    goto :goto_3a

    :catch_39
    move-exception v3

    :goto_3a
    return v1

    :catch_3b
    move-exception v1

    throw v1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;
    .registers 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    new-instance v0, Landroid/nfc/tech/MifareClassic;

    invoke-direct {v0, p0}, Landroid/nfc/tech/MifareClassic;-><init>(Landroid/nfc/Tag;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    return-object v1
.end method

.method private static validateBlock(I)V
    .registers 4

    if-ltz p0, :cond_7

    const/16 v0, 0x100

    if-ge p0, v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "block out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateSector(I)V
    .registers 4

    if-ltz p0, :cond_7

    const/16 v0, 0x28

    if-ge p0, v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sector out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateValueOperand(I)V
    .registers 3

    if-ltz p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value operand negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public authenticateSectorWithKeyA(I[B)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result v0

    return v0
.end method

.method public authenticateSectorWithKeyB(I[B)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result v0

    return v0
.end method

.method public blockToSector(I)I
    .registers 3

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    const/16 v0, 0x80

    if-ge p1, v0, :cond_a

    div-int/lit8 v0, p1, 0x4

    return v0

    :cond_a
    add-int/lit8 v0, p1, -0x80

    div-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public bridge synthetic close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public decrement(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, -0x40

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public getBlockCount()I
    .registers 2

    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    div-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getBlockCountInSector(I)I
    .registers 3

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    const/16 v0, 0x20

    if-ge p1, v0, :cond_9

    const/4 v0, 0x4

    return v0

    :cond_9
    const/16 v0, 0x10

    return v0
.end method

.method public getMaxTransceiveLength()I
    .registers 2

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public getSectorCount()I
    .registers 3

    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    const/16 v1, 0x140

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x400

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x800

    if-eq v0, v1, :cond_17

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    const/16 v0, 0x28

    return v0

    :cond_17
    const/16 v0, 0x20

    return v0

    :cond_1a
    const/16 v0, 0x10

    return v0

    :cond_1d
    const/4 v0, 0x5

    return v0
.end method

.method public getSize()I
    .registers 2

    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .registers 2

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/MifareClassic;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/nfc/INfcTag;->getTimeout(I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    return v0
.end method

.method public increment(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, -0x3f

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public bridge synthetic isConnected()Z
    .registers 2

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .registers 2

    iget-boolean v0, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    return v0
.end method

.method public readBlock(I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, 0x30

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    invoke-virtual {p0, v0, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic reconnect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public restore(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, -0x3e

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    invoke-virtual {p0, v0, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public sectorToBlock(I)I
    .registers 3

    const/16 v0, 0x20

    if-ge p1, v0, :cond_7

    mul-int/lit8 v0, p1, 0x4

    return v0

    :cond_7
    add-int/lit8 v0, p1, -0x20

    mul-int/lit8 v0, v0, 0x10

    add-int/lit16 v0, v0, 0x80

    return v0
.end method

.method public setTimeout(I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/MifareClassic;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1f

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The supplied timeout is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    :catch_17
    move-exception v0

    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void
.end method

.method public transceive([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public transfer(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, -0x50

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    invoke-virtual {p0, v0, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public writeBlock(I[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_21

    array-length v0, p2

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/16 v2, -0x60

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    const/4 v2, 0x1

    int-to-byte v4, p1

    aput-byte v4, v0, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must write 16-bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
