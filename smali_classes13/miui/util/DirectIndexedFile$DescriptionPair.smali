.class Lmiui/util/DirectIndexedFile$DescriptionPair;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescriptionPair"
.end annotation


# instance fields
.field private mDataItemDescriptionOffset:J

.field private mIndexGroupDescriptionOffset:J


# direct methods
.method private constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    iput-wide p3, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    return-void
.end method

.method synthetic constructor <init>(JJLmiui/util/DirectIndexedFile$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/util/DirectIndexedFile$DescriptionPair;-><init>(JJ)V

    return-void
.end method

.method static synthetic access$000(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DescriptionPair;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lmiui/util/DirectIndexedFile$DescriptionPair;Ljava/io/DataOutput;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$DescriptionPair;->write(Ljava/io/DataOutput;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lmiui/util/DirectIndexedFile$DescriptionPair;)J
    .registers 3

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    return-wide v0
.end method

.method static synthetic access$502(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J
    .registers 3

    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    return-wide p1
.end method

.method static synthetic access$800(Lmiui/util/DirectIndexedFile$DescriptionPair;)J
    .registers 3

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    return-wide v0
.end method

.method static synthetic access$802(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J
    .registers 3

    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    return-wide p1
.end method

.method private static read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    new-instance v4, Lmiui/util/DirectIndexedFile$DescriptionPair;

    invoke-direct {v4, v0, v1, v2, v3}, Lmiui/util/DirectIndexedFile$DescriptionPair;-><init>(JJ)V

    return-object v4
.end method

.method private write(Ljava/io/DataOutput;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_c

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_c
    const/16 v0, 0x10

    return v0
.end method
