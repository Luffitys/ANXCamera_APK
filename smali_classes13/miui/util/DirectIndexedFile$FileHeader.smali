.class Lmiui/util/DirectIndexedFile$FileHeader;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileHeader"
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x2

.field private static final FILE_TAG:[B


# instance fields
.field private mDataVersion:I

.field private mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lmiui/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x49t
        0x44t
        0x46t
        0x20t
    .end array-data
.end method

.method private constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lmiui/util/DirectIndexedFile$DescriptionPair;

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;

    iput p2, p0, Lmiui/util/DirectIndexedFile$FileHeader;->mDataVersion:I

    return-void
.end method

.method synthetic constructor <init>(IILmiui/util/DirectIndexedFile$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$FileHeader;-><init>(II)V

    return-void
.end method

.method static synthetic access$1600(Lmiui/util/DirectIndexedFile$FileHeader;)I
    .registers 2

    iget v0, p0, Lmiui/util/DirectIndexedFile$FileHeader;->mDataVersion:I

    return v0
.end method

.method static synthetic access$200(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$FileHeader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$FileHeader;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$FileHeader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;
    .registers 2

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;

    return-object v0
.end method

.method static synthetic access$3700(Lmiui/util/DirectIndexedFile$FileHeader;Ljava/io/DataOutput;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$FileHeader;->write(Ljava/io/DataOutput;)I

    move-result v0

    return v0
.end method

.method private static read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$FileHeader;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lmiui/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    array-length v0, v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_12

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    sget-object v1, Lmiui/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3d

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    new-instance v4, Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-direct {v4, v2, v3}, Lmiui/util/DirectIndexedFile$FileHeader;-><init>(II)V

    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v2, :cond_3c

    iget-object v6, v4, Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;

    # invokes: Lmiui/util/DirectIndexedFile$DescriptionPair;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$000(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_3c
    return-object v4

    :cond_3d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "File version unmatched, please upgrade your reader"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_45
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File tag unmatched, file may be corrupt"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private write(Ljava/io/DataOutput;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lmiui/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    if-eqz p1, :cond_1d

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lmiui/util/DirectIndexedFile$FileHeader;->mDataVersion:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_1d
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_2d

    aget-object v4, v0, v3

    # invokes: Lmiui/util/DirectIndexedFile$DescriptionPair;->write(Ljava/io/DataOutput;)I
    invoke-static {v4, p1}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$100(Lmiui/util/DirectIndexedFile$DescriptionPair;Ljava/io/DataOutput;)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_2d
    return v1
.end method
