.class public Lmiui/util/DirectIndexedFile$Reader;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/DirectIndexedFile$Reader$IndexData;
    }
.end annotation


# instance fields
.field private mFile:Lmiui/util/DirectIndexedFile$InputFile;

.field private mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

.field private mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/util/DirectIndexedFile$DataInputStream;

    invoke-direct {v0, p1}, Lmiui/util/DirectIndexedFile$DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    const-string v0, "assets"

    invoke-direct {p0, v0}, Lmiui/util/DirectIndexedFile$Reader;->constructFromFile(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lmiui/util/DirectIndexedFile$1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Reader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Reader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructFromFile(Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    # invokes: Lmiui/util/DirectIndexedFile$FileHeader;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$FileHeader;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$FileHeader;->access$200(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$FileHeader;

    move-result-object v2

    iput-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lmiui/util/DirectIndexedFile$Reader$IndexData;

    iput-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    const/4 v2, 0x0

    :goto_1d
    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_f9

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    new-instance v4, Lmiui/util/DirectIndexedFile$Reader$IndexData;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lmiui/util/DirectIndexedFile$Reader$IndexData;-><init>(Lmiui/util/DirectIndexedFile$1;)V

    aput-object v4, v3, v2

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v4

    aget-object v4, v4, v2

    # getter for: Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$500(Lmiui/util/DirectIndexedFile$DescriptionPair;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v3}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v3

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, v2

    new-array v5, v3, [Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    # setter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$602(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    const/4 v4, 0x0

    :goto_51
    if-ge v4, v3, :cond_66

    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v2

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    # invokes: Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v6}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->access$700(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :cond_66
    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v5

    aget-object v5, v5, v2

    # getter for: Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$800(Lmiui/util/DirectIndexedFile$DescriptionPair;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v4}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v4

    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    # setter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I
    invoke-static {v5, v6}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$902(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I

    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v2

    new-array v6, v4, [Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    # setter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v5, v6}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1002(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$DataItemDescriptor;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    const/4 v5, 0x0

    :goto_8f
    if-ge v5, v4, :cond_b9

    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v6, v6, v2

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v6

    iget-object v7, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1100(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v6, v6, v2

    iget-object v7, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v7, v7, v2

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    # += operator for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I
    invoke-static {v6, v7}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$912(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    :cond_b9
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v2

    new-array v6, v4, [[Ljava/lang/Object;

    # setter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v5, v6}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1302(Lmiui/util/DirectIndexedFile$Reader$IndexData;[[Ljava/lang/Object;)[[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_c3
    if-ge v5, v4, :cond_f5

    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v7, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v7, v7, v2

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1400(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)J

    move-result-wide v7

    invoke-interface {v6, v7, v8}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v6, v6, v2

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v7, v7, v2

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readDataItems(Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    invoke-static {v7, v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1500(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v5
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f2} :catch_fb

    add-int/lit8 v5, v5, 0x1

    goto :goto_c3

    :cond_f5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d

    :cond_f9
    nop

    return-void

    :catch_fb
    move-exception v2

    invoke-virtual {p0}, Lmiui/util/DirectIndexedFile$Reader;->close()V

    throw v2
.end method

.method private offset(II)J
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v2

    array-length v2, v2

    :goto_b
    if-ge v1, v2, :cond_3c

    add-int v3, v2, v1

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    iget v4, v4, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    if-le v4, p2, :cond_21

    move v2, v3

    goto :goto_31

    :cond_21
    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    iget v4, v4, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    if-gt v4, p2, :cond_32

    add-int/lit8 v1, v3, 0x1

    :goto_31
    goto :goto_b

    :cond_32
    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    aget-object v0, v4, v3

    :cond_3c
    const-wide/16 v3, -0x1

    if-eqz v0, :cond_52

    iget-wide v5, v0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    iget v7, v0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    sub-int v7, p2, v7

    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v8, v8, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$900(Lmiui/util/DirectIndexedFile$Reader$IndexData;)I

    move-result v8

    mul-int/2addr v7, v8

    int-to-long v7, v7

    add-long v3, v5, v7

    :cond_52
    return-wide v3
.end method

.method private readSingleDataItem(III)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object v0, v0, p3

    if-nez v0, :cond_40

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, p2

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1400(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)J

    move-result-wide v1

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readSingleDataItem(Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    invoke-static {v1, v2, p3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1900(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, p3

    :cond_40
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object v0, v0, p3

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_c

    :try_start_5
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Lmiui/util/DirectIndexedFile$InputFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b
    .catchall {:try_start_5 .. :try_end_a} :catchall_15

    goto :goto_c

    :catch_b
    move-exception v0

    :cond_c
    :goto_c
    const/4 v0, 0x0

    :try_start_d
    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(III)Ljava/lang/Object;
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    if-eqz v0, :cond_138

    if-ltz p1, :cond_111

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    array-length v0, v0

    if-ge p1, v0, :cond_111

    if-ltz p3, :cond_e4

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_e4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$Reader;->offset(II)J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_38

    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, p3

    const/4 v6, 0x0

    aget-object v5, v5, v6
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_140

    move-object v4, v5

    goto/16 :goto_d9

    :cond_38
    :try_start_38
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v5, v2, v3}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    const/4 v5, 0x0

    :goto_3e
    if-gt v5, p3, :cond_d8

    sget-object v6, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v7, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v7, v7, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_144

    new-instance v6, Ljava/lang/IllegalStateException;

    goto :goto_b5

    :pswitch_5c
    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/util/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v4, v6

    goto :goto_a9

    :pswitch_68
    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, v6

    goto :goto_a9

    :pswitch_74
    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/util/DirectIndexedFile$InputFile;->readShort()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    move-object v4, v6

    goto :goto_a9

    :pswitch_80
    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/util/DirectIndexedFile$InputFile;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_8a} :catch_db
    .catchall {:try_start_38 .. :try_end_8a} :catchall_140

    move-object v4, v6

    goto :goto_a9

    :pswitch_8c
    :try_start_8c
    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v7, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v7, v7, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J
    invoke-static {v6, v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1800(Ljava/io/DataInput;I)J

    move-result-wide v6

    long-to-int v6, v6

    if-ne v5, p3, :cond_a8

    invoke-direct {p0, p1, p3, v6}, Lmiui/util/DirectIndexedFile$Reader;->readSingleDataItem(III)Ljava/lang/Object;

    move-result-object v7
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_a7} :catch_ac
    .catchall {:try_start_8c .. :try_end_a7} :catchall_140

    move-object v4, v7

    :cond_a8
    nop

    :goto_a9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    :catch_ac
    move-exception v6

    :try_start_ad
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "File may be corrupt due to invalid data index size"

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :goto_b5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v8, v8, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v5

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_d8} :catch_db
    .catchall {:try_start_ad .. :try_end_d8} :catchall_140

    :cond_d8
    nop

    :goto_d9
    monitor-exit p0

    return-object v4

    :catch_db
    move-exception v5

    :try_start_dc
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Seek data from a corrupt file"

    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_e4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of range[0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of range[0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Get data from a corrupt file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_140
    .catchall {:try_start_dc .. :try_end_140} :catchall_140

    :catchall_140
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_80
        :pswitch_74
        :pswitch_68
        :pswitch_5c
    .end packed-switch
.end method

.method public declared-synchronized get(II)[Ljava/lang/Object;
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    if-eqz v0, :cond_10f

    if-ltz p1, :cond_f8

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    array-length v0, v0

    if-ge p1, v0, :cond_f8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$Reader;->offset(II)J

    move-result-wide v2

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_3d

    const/4 v5, 0x0

    :goto_26
    array-length v6, v4

    if-ge v5, v6, :cond_3b

    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v6, v6, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v5

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v4, v5
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_117

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_3b
    monitor-exit p0

    return-object v4

    :cond_3d
    :try_start_3d
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v5, v2, v3}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    const/4 v5, 0x0

    :goto_43
    array-length v6, v4

    if-ge v5, v6, :cond_ec

    sget-object v6, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v7, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v7, v7, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_11a

    new-instance v6, Ljava/lang/IllegalStateException;

    goto :goto_c9

    :pswitch_62
    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/util/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_bd

    :pswitch_6f
    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_bd

    :pswitch_7c
    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/util/DirectIndexedFile$InputFile;->readShort()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_bd

    :pswitch_89
    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/util/DirectIndexedFile$InputFile;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_95} :catch_ef
    .catchall {:try_start_3d .. :try_end_95} :catchall_117

    goto :goto_bd

    :pswitch_96
    :try_start_96
    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v7, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v7, v7, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J
    invoke-static {v6, v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1800(Ljava/io/DataInput;I)J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v7}, Lmiui/util/DirectIndexedFile$InputFile;->getFilePointer()J

    move-result-wide v7

    invoke-direct {p0, p1, v5, v6}, Lmiui/util/DirectIndexedFile$Reader;->readSingleDataItem(III)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v4, v5

    iget-object v9, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v9, v7, v8}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_bc} :catch_c0
    .catchall {:try_start_96 .. :try_end_bc} :catchall_117

    nop

    :goto_bd
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :catch_c0
    move-exception v6

    :try_start_c1
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "File may be corrupt due to invalid data index size"

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :goto_c9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v8, v8, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v5

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_ec} :catch_ef
    .catchall {:try_start_c1 .. :try_end_ec} :catchall_117

    :cond_ec
    nop

    monitor-exit p0

    return-object v4

    :catch_ef
    move-exception v5

    :try_start_f0
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Seek data from a corrupt file"

    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_f8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get data kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Get data from a corrupt file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_117
    .catchall {:try_start_f0 .. :try_end_117} :catchall_117

    :catchall_117
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_89
        :pswitch_7c
        :pswitch_6f
        :pswitch_62
    .end packed-switch
.end method

.method public getDataVersion()I
    .registers 2

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDataVersion:I
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$FileHeader;->access$1600(Lmiui/util/DirectIndexedFile$FileHeader;)I

    move-result v0

    return v0
.end method
