.class Lmiui/util/DirectIndexedFile$DataItemDescriptor;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataItemDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    }
.end annotation


# static fields
.field private static sBuffer:[B


# instance fields
.field private mIndexSize:B

.field private mLengthSize:B

.field private mOffset:J

.field private mOffsetSize:B

.field private mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    return-void
.end method

.method private constructor <init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    iput-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    iput-byte p3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    iput-byte p4, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    iput-wide p5, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJLmiui/util/DirectIndexedFile$1;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V

    return-void
.end method

.method static synthetic access$1100(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B
    .registers 2

    iget-byte v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    return v0
.end method

.method static synthetic access$1202(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B
    .registers 2

    iput-byte p1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    return p1
.end method

.method static synthetic access$1400(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)J
    .registers 3

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    return-wide v0
.end method

.method static synthetic access$1402(Lmiui/util/DirectIndexedFile$DataItemDescriptor;J)J
    .registers 3

    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    return-wide p1
.end method

.method static synthetic access$1500(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readDataItems(Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    .registers 2

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    return-object v0
.end method

.method static synthetic access$1800(Ljava/io/DataInput;I)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1900(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readSingleDataItem(Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(I)B
    .registers 2

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->write(Ljava/io/DataOutput;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeDataItems(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private static aquireBuffer(I)[B
    .registers 4

    const-class v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    if-eqz v1, :cond_c

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    array-length v1, v1

    if-ge v1, p0, :cond_10

    :cond_c
    new-array v1, p0, [B

    sput-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    :cond_10
    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    const/4 v2, 0x0

    sput-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private static getSizeOf(I)B
    .registers 6

    const/4 v0, 0x0

    mul-int/lit8 v1, p0, 0x2

    int-to-long v1, v1

    :goto_4
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/16 v4, 0x8

    if-lez v3, :cond_11

    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    shr-long/2addr v1, v4

    goto :goto_4

    :cond_11
    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    const/4 v0, 0x4

    goto :goto_1d

    :cond_16
    const/4 v1, 0x4

    if-le v0, v1, :cond_1d

    if-ge v0, v4, :cond_1d

    const/16 v0, 0x8

    :cond_1d
    :goto_1d
    return v0
.end method

.method private static read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->values()[Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v9

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v10

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v11

    new-instance v13, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-object v2, v13

    move-object v3, v0

    move v4, v1

    move v5, v9

    move v6, v10

    move-wide v7, v11

    invoke-direct/range {v2 .. v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V

    return-object v13
.end method

.method private static readAccordingToSize(Ljava/io/DataInput;I)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_35

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_29

    const/16 v0, 0x8

    if-ne p1, v0, :cond_12

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    goto :goto_3b

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsuppoert size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_3b

    :cond_2f
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v0

    int-to-long v0, v0

    goto :goto_3b

    :cond_35
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    int-to-long v0, v0

    nop

    :goto_3b
    return-wide v0
.end method

.method private readDataItems(Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_54

    goto :goto_52

    :pswitch_11
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_52

    :pswitch_1e
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_52

    :pswitch_2b
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_52

    :pswitch_38
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_52

    :pswitch_45
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readSingleDataItem(Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    nop

    :goto_52
    return-object v0

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_38
        :pswitch_2b
        :pswitch_1e
        :pswitch_11
    .end packed-switch
.end method

.method private readSingleDataItem(Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->getFilePointer()J

    move-result-wide v2

    if-eqz p2, :cond_10

    iget-byte v4, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    mul-int/2addr v4, p2

    int-to-long v4, v4

    add-long/2addr v4, v2

    invoke-interface {p1, v4, v5}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    :cond_10
    iget-byte v4, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    invoke-static {p1, v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-interface {p1, v4, v5}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    sget-object v4, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v5, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v5}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8c

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7d

    const/4 v5, 0x3

    if-eq v4, v5, :cond_65

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4d

    const/4 v5, 0x5

    if-eq v4, v5, :cond_35

    goto/16 :goto_a2

    :cond_35
    iget-byte v4, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [J

    move-object v0, v4

    const/4 v5, 0x0

    :goto_40
    array-length v6, v4

    if-ge v5, v6, :cond_4c

    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    :cond_4c
    goto :goto_a2

    :cond_4d
    iget-byte v4, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [I

    move-object v0, v4

    const/4 v5, 0x0

    :goto_58
    array-length v6, v4

    if-ge v5, v6, :cond_64

    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_64
    goto :goto_a2

    :cond_65
    iget-byte v4, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [S

    move-object v0, v4

    const/4 v5, 0x0

    :goto_70
    array-length v6, v4

    if-ge v5, v6, :cond_7c

    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readShort()S

    move-result v6

    aput-short v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    :cond_7c
    goto :goto_a2

    :cond_7d
    iget-byte v4, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v4

    long-to-int v4, v4

    new-array v1, v4, [B

    invoke-interface {p1, v1}, Lmiui/util/DirectIndexedFile$InputFile;->readFully([B)V

    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_a2

    :cond_8c
    iget-byte v4, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->aquireBuffer(I)[B

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {p1, v1, v5, v4}, Lmiui/util/DirectIndexedFile$InputFile;->readFully([BII)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v5, v4}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v6

    nop

    :goto_a2
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->releaseBuffer([B)V

    return-object v0
.end method

.method private static releaseBuffer([B)V
    .registers 4

    const-class v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    monitor-enter v0

    if-eqz p0, :cond_11

    :try_start_5
    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    if-eqz v1, :cond_f

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    array-length v1, v1

    array-length v2, p0

    if-ge v1, v2, :cond_11

    :cond_f
    sput-object p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private write(Ljava/io/DataOutput;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_1f
    const/16 v0, 0xc

    return v0
.end method

.method private static writeAccordingToSize(Ljava/io/DataOutput;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_32

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_28

    const/16 v0, 0x8

    if-ne p1, v0, :cond_11

    invoke-interface {p0, p2, p3}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_37

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsuppoert size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    long-to-int v0, p2

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_37

    :cond_2d
    long-to-int v0, p2

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_37

    :cond_32
    long-to-int v0, p2

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    nop

    :goto_37
    return-void
.end method

.method private writeDataItems(Ljava/io/DataOutput;Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_194

    goto/16 :goto_192

    :pswitch_11
    if-eqz p1, :cond_20

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_20
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_192

    :pswitch_24
    if-eqz p1, :cond_33

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_33
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_192

    :pswitch_37
    if-eqz p1, :cond_46

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeShort(I)V

    :cond_46
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_192

    :pswitch_4a
    if-eqz p1, :cond_59

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_192

    :pswitch_5d
    if-eqz p1, :cond_66

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_66
    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, [J

    if-eqz p1, :cond_93

    iget-byte v5, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v6, v4

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    array-length v5, v4

    move v6, v2

    :goto_89
    if-ge v6, v5, :cond_93

    aget-wide v7, v4, v6

    invoke-interface {p1, v7, v8}, Ljava/io/DataOutput;->writeLong(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_89

    :cond_93
    iget-byte v5, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v6, v4

    mul-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    goto :goto_71

    :cond_9b
    goto/16 :goto_192

    :pswitch_9d
    if-eqz p1, :cond_a6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_a6
    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_db

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, [I

    if-eqz p1, :cond_d3

    iget-byte v5, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v6, v4

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    array-length v5, v4

    move v6, v2

    :goto_c9
    if-ge v6, v5, :cond_d3

    aget v7, v4, v6

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeInt(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c9

    :cond_d3
    iget-byte v5, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v6, v4

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    goto :goto_b1

    :cond_db
    goto/16 :goto_192

    :pswitch_dd
    if-eqz p1, :cond_e6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_e6
    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, [S

    if-eqz p1, :cond_113

    iget-byte v5, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v6, v4

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    array-length v5, v4

    move v6, v2

    :goto_109
    if-ge v6, v5, :cond_113

    aget-short v7, v4, v6

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeShort(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_109

    :cond_113
    iget-byte v5, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v6, v4

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    goto :goto_f1

    :cond_11b
    goto/16 :goto_192

    :pswitch_11d
    if-eqz p1, :cond_126

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_126
    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_131
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [B

    if-eqz p1, :cond_14a

    iget-byte v4, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v5, v3

    int-to-long v5, v5

    invoke-static {p1, v4, v5, v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write([B)V

    :cond_14a
    iget-byte v4, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v5, v3

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    goto :goto_131

    :cond_150
    goto :goto_192

    :pswitch_151
    if-eqz p1, :cond_15a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_15a
    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_165
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_191

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    if-eqz p1, :cond_18b

    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v7, v5

    int-to-long v7, v7

    invoke-static {p1, v6, v7, v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    array-length v6, v5

    move v7, v2

    :goto_181
    if-ge v7, v6, :cond_18b

    aget-byte v8, v5, v7

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeByte(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_181

    :cond_18b
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    array-length v7, v5

    add-int/2addr v6, v7

    add-int/2addr v0, v6

    goto :goto_165

    :cond_191
    nop

    :goto_192
    return v0

    nop

    :pswitch_data_194
    .packed-switch 0x1
        :pswitch_151
        :pswitch_11d
        :pswitch_dd
        :pswitch_9d
        :pswitch_5d
        :pswitch_4a
        :pswitch_37
        :pswitch_24
        :pswitch_11
    .end packed-switch
.end method

.method private writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eqz p1, :cond_f

    iget-byte v5, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    if-eqz v5, :cond_f

    iget-byte v5, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    if-nez v5, :cond_77

    :cond_f
    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v6, v4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v11, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v11}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v2, :cond_57

    if-eq v10, v3, :cond_51

    if-eq v10, v1, :cond_49

    if-eq v10, v4, :cond_41

    if-eq v10, v0, :cond_39

    goto :goto_61

    :cond_39
    move-object v10, v8

    check-cast v10, [J

    array-length v9, v10

    mul-int/lit8 v10, v9, 0x8

    add-int/2addr v6, v10

    goto :goto_61

    :cond_41
    move-object v10, v8

    check-cast v10, [I

    array-length v9, v10

    mul-int/lit8 v10, v9, 0x4

    add-int/2addr v6, v10

    goto :goto_61

    :cond_49
    move-object v10, v8

    check-cast v10, [S

    array-length v9, v10

    mul-int/lit8 v10, v9, 0x2

    add-int/2addr v6, v10

    goto :goto_61

    :cond_51
    move-object v10, v8

    check-cast v10, [B

    array-length v9, v10

    add-int/2addr v6, v9

    goto :goto_61

    :cond_57
    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v9, v10

    add-int/2addr v6, v9

    nop

    :goto_61
    if-ge v5, v9, :cond_64

    move v5, v9

    :cond_64
    goto :goto_19

    :cond_65
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B

    move-result v7

    iput-byte v7, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-static {v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B

    move-result v7

    iput-byte v7, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    :cond_77
    iget-byte v5, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v5, v6

    if-eqz p1, :cond_e0

    move v6, v5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_85
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    iget-byte v9, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    int-to-long v10, v6

    invoke-static {p1, v9, v10, v11}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    sget-object v9, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v10, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v10}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v2, :cond_d2

    if-eq v9, v3, :cond_c9

    if-eq v9, v1, :cond_bf

    if-eq v9, v4, :cond_b5

    if-eq v9, v0, :cond_aa

    goto :goto_df

    :cond_aa
    iget-byte v9, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move-object v10, v8

    check-cast v10, [J

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x8

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    goto :goto_df

    :cond_b5
    iget-byte v9, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move-object v10, v8

    check-cast v10, [I

    array-length v10, v10

    mul-int/2addr v10, v4

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    goto :goto_df

    :cond_bf
    iget-byte v9, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move-object v10, v8

    check-cast v10, [S

    array-length v10, v10

    mul-int/2addr v10, v3

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    goto :goto_df

    :cond_c9
    iget-byte v9, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move-object v10, v8

    check-cast v10, [B

    array-length v10, v10

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    goto :goto_df

    :cond_d2
    iget-byte v9, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    nop

    :goto_df
    goto :goto_85

    :cond_e0
    return v5
.end method
