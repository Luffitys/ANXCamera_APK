.class Lmiui/util/DirectIndexedFile$DescriptionPair;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mDataItemDescriptionOffset:J

.field private mIndexGroupDescriptionOffset:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    iput-wide p3, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    return-void
.end method

.method synthetic constructor <init>(JJLmiui/util/DirectIndexedFile$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/util/DirectIndexedFile$DescriptionPair;-><init>(JJ)V

    return-void
.end method

.method static synthetic access$000(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;
    .locals 0

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DescriptionPair;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lmiui/util/DirectIndexedFile$DescriptionPair;Ljava/io/DataOutput;)I
    .locals 0

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$DescriptionPair;->write(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lmiui/util/DirectIndexedFile$DescriptionPair;)J
    .locals 2

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    return-wide v0
.end method

.method static synthetic access$502(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J
    .locals 0

    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    return-wide p1
.end method

.method static synthetic access$800(Lmiui/util/DirectIndexedFile$DescriptionPair;)J
    .locals 2

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    return-wide v0
.end method

.method static synthetic access$802(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J
    .locals 0

    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    return-wide p1
.end method

.method private static read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;
    .locals 4

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    new-instance p0, Lmiui/util/DirectIndexedFile$DescriptionPair;

    invoke-direct {p0, v0, v1, v2, v3}, Lmiui/util/DirectIndexedFile$DescriptionPair;-><init>(JJ)V

    return-object p0
.end method

.method private write(Ljava/io/DataOutput;)I
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_0
    const/16 p0, 0x10

    return p0
.end method
