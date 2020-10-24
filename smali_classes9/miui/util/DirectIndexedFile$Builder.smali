.class public Lmiui/util/DirectIndexedFile$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

.field private mFileDataVersion:I

.field private mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

.field private mIndexDataList:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    iput p1, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileDataVersion:I

    return-void
.end method

.method synthetic constructor <init>(ILmiui/util/DirectIndexedFile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Builder;-><init>(I)V

    return-void
.end method

.method private build()V
    .locals 14

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lmiui/util/DirectIndexedFile$FileHeader;

    iget v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileDataVersion:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lmiui/util/DirectIndexedFile$FileHeader;-><init>(IILmiui/util/DirectIndexedFile$1;)V

    iput-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$IndexData;

    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v5}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v5

    new-instance v12, Lmiui/util/DirectIndexedFile$DescriptionPair;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lmiui/util/DirectIndexedFile$DescriptionPair;-><init>(JJLmiui/util/DirectIndexedFile$1;)V

    aput-object v12, v5, v2

    move v5, v1

    :goto_1
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    new-array v5, v5, [Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3402(Lmiui/util/DirectIndexedFile$Builder$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move v5, v1

    :goto_3
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_2

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/util/DirectIndexedFile$Builder$Item;

    invoke-static {v7}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$3500(Lmiui/util/DirectIndexedFile$Builder$Item;)I

    move-result v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/util/DirectIndexedFile$Builder$Item;

    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$3500(Lmiui/util/DirectIndexedFile$Builder$Item;)I

    move-result v6

    add-int/lit8 v10, v6, 0x1

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    new-instance v7, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJLmiui/util/DirectIndexedFile$1;)V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    :try_start_0
    invoke-direct {p0, v3}, Lmiui/util/DirectIndexedFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private checkCurrentIndexingDataKind()V
    .locals 1

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please add a data kind before adding group"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkCurrentIndexingGroup()V
    .locals 1

    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->checkCurrentIndexingDataKind()V

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please add a data group before adding data"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeAll(Ljava/io/DataOutput;)I
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_f

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v3, p1}, Lmiui/util/DirectIndexedFile$FileHeader;->access$3700(Lmiui/util/DirectIndexedFile$FileHeader;Ljava/io/DataOutput;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v3

    aget-object v3, v3, v1

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$502(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/util/DirectIndexedFile$Builder$IndexData;

    if-eqz p1, :cond_0

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    array-length v4, v4

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x4

    move v4, v0

    :goto_1
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_1

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v5, p1}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->access$3800(Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;Ljava/io/DataOutput;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v4

    aget-object v4, v4, v1

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$802(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J

    if-eqz p1, :cond_2

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    array-length v4, v4

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x4

    move v4, v0

    :goto_2
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_3

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v5, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$3900(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_3
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_4

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    int-to-long v6, v2

    invoke-static {v5, v6, v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1402(Lmiui/util/DirectIndexedFile$DataItemDescriptor;J)J

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$4000(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v5, p1, v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$4100(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v0

    :goto_4
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_e

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    int-to-long v6, v2

    iput-wide v6, v5, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    if-nez p1, :cond_6

    move v5, v0

    move v6, v5

    :goto_5
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    array-length v7, v7

    if-ge v5, v7, :cond_5

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    iget v5, v5, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v7

    aget-object v7, v7, v4

    iget v7, v7, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    sub-int/2addr v5, v7

    mul-int/2addr v5, v6

    add-int/2addr v2, v5

    goto/16 :goto_9

    :cond_6
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    iget v5, v5, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    :goto_6
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    aget-object v6, v6, v4

    iget v6, v6, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    if-ge v5, v6, :cond_d

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/util/DirectIndexedFile$Builder$Item;

    if-nez v6, :cond_7

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2600(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Lmiui/util/DirectIndexedFile$Builder$Item;

    move-result-object v6

    :cond_7
    move v7, v0

    :goto_7
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_c

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_8

    :cond_8
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_8

    :cond_9
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_a

    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_8

    :cond_a
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_b

    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v7

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {p1, v8, v9}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_b
    :goto_8
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    add-int/2addr v2, v8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_d
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_f
    return v2
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->checkCurrentIndexingGroup()V

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    array-length v0, v0

    array-length v1, p2

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_9

    sget-object v1, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "Object["

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type of objects "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " expected"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] should be long"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] should be int"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Short;

    if-eqz v1, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] should be short"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Byte;

    if-eqz v1, :cond_3

    goto/16 :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] should be byte"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    aget-object v1, p2, v0

    instance-of v1, v1, [J

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    goto/16 :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] should be long[]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    aget-object v1, p2, v0

    instance-of v1, v1, [I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    goto/16 :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] should be int[]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    aget-object v1, p2, v0

    instance-of v1, v1, [S

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    goto/16 :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] should be short[]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7
    aget-object v1, p2, v0

    instance-of v1, v1, [B

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] should be byte[]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_8
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    :goto_1
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] should be String"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance v0, Lmiui/util/DirectIndexedFile$Builder$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lmiui/util/DirectIndexedFile$Builder$Item;-><init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiui/util/DirectIndexedFile$1;)V

    iget-object p2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Different number of objects inputted, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p0

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " data expected"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addGroup([I[[Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->checkCurrentIndexingDataKind()V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lmiui/util/DirectIndexedFile$Builder;->newGroup()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lmiui/util/DirectIndexedFile$Builder;->add(I[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Different number between indexes and objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs addKind([Ljava/lang/Object;)V
    .locals 13

    new-instance v0, Lmiui/util/DirectIndexedFile$Builder$IndexData;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;-><init>(ILmiui/util/DirectIndexedFile$1;)V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-direct {v3, p0, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;-><init>(Lmiui/util/DirectIndexedFile$Builder;Lmiui/util/DirectIndexedFile$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Byte;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    :goto_1
    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    :goto_2
    move-object v6, v1

    move v7, v3

    goto/16 :goto_3

    :cond_0
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Short;

    if-eqz v1, :cond_1

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const/4 v3, 0x2

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    goto :goto_1

    :cond_1
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const/4 v3, 0x4

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    goto :goto_1

    :cond_2
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_3

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const/16 v3, 0x8

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    goto :goto_1

    :cond_3
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->STRING:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    goto :goto_2

    :cond_4
    aget-object v1, p1, v0

    instance-of v1, v1, [B

    if-eqz v1, :cond_5

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    goto/16 :goto_2

    :cond_5
    aget-object v1, p1, v0

    instance-of v1, v1, [S

    if-eqz v1, :cond_6

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    goto/16 :goto_2

    :cond_6
    aget-object v1, p1, v0

    instance-of v1, v1, [I

    if-eqz v1, :cond_7

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    goto/16 :goto_2

    :cond_7
    aget-object v1, p1, v0

    instance-of v1, v1, [J

    if-eqz v1, :cond_8

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    goto/16 :goto_2

    :goto_3
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    new-instance v3, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJLmiui/util/DirectIndexedFile$1;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type of the ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] argument"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    new-instance v1, Lmiui/util/DirectIndexedFile$Builder$Item;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v3, p1, v2}, Lmiui/util/DirectIndexedFile$Builder$Item;-><init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiui/util/DirectIndexedFile$1;)V

    invoke-static {v0, v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2602(Lmiui/util/DirectIndexedFile$Builder$IndexData;Lmiui/util/DirectIndexedFile$Builder$Item;)Lmiui/util/DirectIndexedFile$Builder$Item;

    return-void
.end method

.method public newGroup()V
    .locals 2

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->build()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v1}, Lmiui/util/DirectIndexedFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    throw p0
.end method
