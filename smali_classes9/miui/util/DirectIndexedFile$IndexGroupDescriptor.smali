.class Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field mMaxIndex:I

.field mMinIndex:I

.field mOffset:J


# direct methods
.method private constructor <init>(IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    iput p2, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    iput-wide p3, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    return-void
.end method

.method synthetic constructor <init>(IIJLmiui/util/DirectIndexedFile$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJ)V

    return-void
.end method

.method static synthetic access$3800(Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;Ljava/io/DataOutput;)I
    .locals 0

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->write(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 0

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 4

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    new-instance p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    invoke-direct {p0, v0, v1, v2, v3}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJ)V

    return-object p0
.end method

.method private write(Ljava/io/DataOutput;)I
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_0
    const/16 p0, 0x10

    return p0
.end method
