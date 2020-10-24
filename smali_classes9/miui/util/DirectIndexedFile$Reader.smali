.class public Lmiui/util/DirectIndexedFile$Reader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mFile:Lmiui/util/DirectIndexedFile$InputFile;

.field private mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

.field private mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/util/DirectIndexedFile$DataInputStream;

    invoke-direct {v0, p1}, Lmiui/util/DirectIndexedFile$DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    const-string p1, "assets"

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Reader;->constructFromFile(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lmiui/util/DirectIndexedFile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Reader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/util/DirectIndexedFile$DataInputRandom;

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lmiui/util/DirectIndexedFile$DataInputRandom;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Reader;->constructFromFile(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lmiui/util/DirectIndexedFile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Reader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructFromFile(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :try_start_0
    iget-object p1, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    iget-object p1, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$FileHeader;->access$200(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$FileHeader;

    move-result-object p1

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [Lmiui/util/DirectIndexedFile$Reader$IndexData;

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    new-instance v2, Lmiui/util/DirectIndexedFile$Reader$IndexData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;-><init>(Lmiui/util/DirectIndexedFile$1;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$500(Lmiui/util/DirectIndexedFile$DescriptionPair;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, v0

    new-array v3, v1, [Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    invoke-static {v2, v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$602(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move v2, p1

    :goto_1
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v3, v3, v0

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v3

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->access$700(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$800(Lmiui/util/DirectIndexedFile$DescriptionPair;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$902(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, v0

    new-array v3, v1, [Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    invoke-static {v2, v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1002(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$DataItemDescriptor;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move v2, p1

    :goto_2
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v3, v3, v0

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v3

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1100(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v3, v3, v0

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, v0

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v4

    invoke-static {v3, v4}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$912(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, v0

    new-array v3, v1, [[Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1302(Lmiui/util/DirectIndexedFile$Reader$IndexData;[[Ljava/lang/Object;)[[Ljava/lang/Object;

    move v2, p1

    :goto_3
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, v0

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1400(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v3, v3, v0

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, v0

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1500(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lmiui/util/DirectIndexedFile$Reader;->close()V

    throw p1
.end method

.method private offset(II)J
    .locals 4

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v3, v3, p1

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v3

    aget-object v3, v3, v2

    iget v3, v3, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    if-le v3, p2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v1

    aget-object v1, v1, v2

    iget v1, v1, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    if-gt v1, p2, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    iget-wide v1, v0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    iget v0, v0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    sub-int/2addr p2, v0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object p0, p0, p1

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$900(Lmiui/util/DirectIndexedFile$Reader$IndexData;)I

    move-result p0

    mul-int/2addr p2, p0

    int-to-long p0, p2

    add-long/2addr v1, p0

    :cond_3
    return-wide v1
.end method

.method private readSingleDataItem(III)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object v0, v0, p3

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1400(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)J

    move-result-wide v1

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-static {v1, v2, p3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1900(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, p3

    :cond_0
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object p0, p0, p1

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p2

    aget-object p0, p0, p3

    return-object p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Lmiui/util/DirectIndexedFile$InputFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(III)Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    if-eqz v0, :cond_5

    if-ltz p1, :cond_4

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    array-length v0, v0

    if-ge p1, v0, :cond_4

    if-ltz p3, :cond_3

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$Reader;->offset(II)J

    move-result-wide v0

    const/4 p2, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    iget-object p2, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, p2, p1

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, p3

    aget-object p1, p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v2, v0, v1}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    :goto_0
    if-gt v3, p3, :cond_2

    sget-object v0, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalStateException;

    goto :goto_2

    :pswitch_0
    iget-object p2, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_1

    :pswitch_1
    iget-object p2, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :pswitch_2
    iget-object p2, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Ljava/io/DataInput;->readShort()S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    goto :goto_1

    :pswitch_3
    iget-object p2, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Ljava/io/DataInput;->readByte()B

    move-result p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_4
    :try_start_2
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v1

    invoke-static {v0, v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1800(Ljava/io/DataInput;I)J

    move-result-wide v0

    long-to-int v0, v0

    if-ne v3, p3, :cond_1

    invoke-direct {p0, p1, p3, v0}, Lmiui/util/DirectIndexedFile$Reader;->readSingleDataItem(III)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "File may be corrupt due to invalid data index size"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, v0, p1

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move-object p1, p2

    :goto_3
    monitor-exit p0

    return-object p1

    :catch_1
    move-exception p1

    :try_start_4
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Seek data from a corrupt file"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " out of range[0, "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, p3, p1

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Kind "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range[0, "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Get data from a corrupt file"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized get(II)[Ljava/lang/Object;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_3

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    array-length v0, v0

    if-ge p1, v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$Reader;->offset(II)J

    move-result-wide v0

    iget-object p2, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object p2, p2, p1

    invoke-static {p2}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p2

    array-length p2, p2

    new-array v2, p2, [Ljava/lang/Object;

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    const/4 v4, 0x0

    if-gez v3, :cond_1

    move v0, v4

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    aget-object v1, v1, v4

    aput-object v1, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v3, v0, v1}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    :goto_1
    if-ge v4, p2, :cond_2

    sget-object v0, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalStateException;

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v4

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Ljava/io/DataInput;->readShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v2, v4

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v2, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :pswitch_4
    :try_start_2
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v1

    invoke-static {v0, v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1800(Ljava/io/DataInput;I)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v1}, Lmiui/util/DirectIndexedFile$InputFile;->getFilePointer()J

    move-result-wide v5

    invoke-direct {p0, p1, v4, v0}, Lmiui/util/DirectIndexedFile$Reader;->readSingleDataItem(III)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v0, v5, v6}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "File may be corrupt due to invalid data index size"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, v1, p1

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p1

    aget-object p1, p1, v4

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v2

    :catch_1
    move-exception p1

    :try_start_4
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Seek data from a corrupt file"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get data kind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Get data from a corrupt file"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDataVersion()I
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0}, Lmiui/util/DirectIndexedFile$FileHeader;->access$1600(Lmiui/util/DirectIndexedFile$FileHeader;)I

    move-result p0

    return p0
.end method
