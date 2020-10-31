.class public Lmiui/util/DirectIndexedFile$Builder;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/DirectIndexedFile$Builder$IndexData;,
        Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;,
        Lmiui/util/DirectIndexedFile$Builder$Item;
    }
.end annotation


# instance fields
.field private mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

.field private mFileDataVersion:I

.field private mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

.field private mIndexDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/util/DirectIndexedFile$Builder$IndexData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    iput p1, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileDataVersion:I

    return-void
.end method

.method synthetic constructor <init>(ILmiui/util/DirectIndexedFile$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Builder;-><init>(I)V

    return-void
.end method

.method private build()V
    .registers 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lmiui/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v0, Lmiui/util/DirectIndexedFile$FileHeader;

    iget v3, v1, Lmiui/util/DirectIndexedFile$Builder;->mFileDataVersion:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lmiui/util/DirectIndexedFile$FileHeader;-><init>(IILmiui/util/DirectIndexedFile$1;)V

    iput-object v0, v1, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v2, :cond_9f

    iget-object v3, v1, Lmiui/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/util/DirectIndexedFile$Builder$IndexData;

    iget-object v5, v1, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v5

    new-instance v12, Lmiui/util/DirectIndexedFile$DescriptionPair;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lmiui/util/DirectIndexedFile$DescriptionPair;-><init>(JJLmiui/util/DirectIndexedFile$1;)V

    aput-object v12, v5, v0

    const/4 v5, 0x0

    :goto_31
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4f

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4c

    goto :goto_4f

    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_4f
    :goto_4f
    new-array v6, v5, [Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    # setter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v3, v6}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3402(Lmiui/util/DirectIndexedFile$Builder$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    const/4 v6, 0x0

    :goto_55
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_9b

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/util/DirectIndexedFile$Builder$Item;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$3500(Lmiui/util/DirectIndexedFile$Builder$Item;)I

    move-result v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/util/DirectIndexedFile$Builder$Item;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I
    invoke-static {v9}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$3500(Lmiui/util/DirectIndexedFile$Builder$Item;)I

    move-result v9

    add-int/lit8 v15, v9, 0x1

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v16

    new-instance v17, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, v17

    move v10, v8

    move v11, v15

    invoke-direct/range {v9 .. v14}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJLmiui/util/DirectIndexedFile$1;)V

    aput-object v17, v16, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    :cond_9f
    :try_start_9f
    invoke-direct {v1, v4}, Lmiui/util/DirectIndexedFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_a4

    :catch_a3
    move-exception v0

    :goto_a4
    return-void
.end method

.method private checkCurrentIndexingDataKind()V
    .registers 3

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please add a data kind before adding group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCurrentIndexingGroup()V
    .registers 3

    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->checkCurrentIndexingDataKind()V

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please add a data group before adding data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeAll(Ljava/io/DataOutput;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1a0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # invokes: Lmiui/util/DirectIndexedFile$FileHeader;->write(Ljava/io/DataOutput;)I
    invoke-static {v2, p1}, Lmiui/util/DirectIndexedFile$FileHeader;->access$3700(Lmiui/util/DirectIndexedFile$FileHeader;Ljava/io/DataOutput;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v2

    aget-object v2, v2, v1

    int-to-long v3, v0

    # setter for: Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J
    invoke-static {v2, v3, v4}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$502(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$IndexData;

    if-eqz p1, :cond_30

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v3

    array-length v3, v3

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_30
    add-int/lit8 v0, v0, 0x4

    const/4 v3, 0x0

    :goto_33
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_48

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    # invokes: Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->write(Ljava/io/DataOutput;)I
    invoke-static {v4, p1}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->access$3800(Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;Ljava/io/DataOutput;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_48
    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v3

    aget-object v3, v3, v1

    int-to-long v4, v0

    # setter for: Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J
    invoke-static {v3, v4, v5}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$802(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J

    if-eqz p1, :cond_5e

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v3

    array-length v3, v3

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_5e
    add-int/lit8 v0, v0, 0x4

    const/4 v3, 0x0

    :goto_61
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_76

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->write(Ljava/io/DataOutput;)I
    invoke-static {v4, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$3900(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_76
    const/4 v3, 0x0

    :goto_77
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_a4

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    int-to-long v5, v0

    # setter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J
    invoke-static {v4, v5, v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1402(Lmiui/util/DirectIndexedFile$DataItemDescriptor;J)J

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->getAll()Ljava/util/ArrayList;
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$4000(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)Ljava/util/ArrayList;

    move-result-object v5

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeDataItems(Ljava/io/DataOutput;Ljava/util/List;)I
    invoke-static {v4, p1, v5}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$4100(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    :cond_a4
    const/4 v3, 0x0

    :goto_a5
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_19c

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    int-to-long v5, v0

    iput-wide v5, v4, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    if-nez p1, :cond_e3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b9
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_ce

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v6

    aget-object v6, v6, v5

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_b9

    :cond_ce
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v3

    iget v5, v5, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    aget-object v6, v6, v3

    iget v6, v6, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    sub-int/2addr v5, v6

    mul-int/2addr v5, v4

    add-int/2addr v0, v5

    goto/16 :goto_198

    :cond_e3
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    iget v4, v4, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    :goto_eb
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v3

    iget v5, v5, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    if-ge v4, v5, :cond_198

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/util/DirectIndexedFile$Builder$Item;

    if-nez v5, :cond_109

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDefaultValue:Lmiui/util/DirectIndexedFile$Builder$Item;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2600(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Lmiui/util/DirectIndexedFile$Builder$Item;

    move-result-object v5

    :cond_109
    const/4 v6, 0x0

    :goto_10a
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_194

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v6

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12e

    # getter for: Lmiui/util/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_185

    :cond_12e
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v6

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_14b

    # getter for: Lmiui/util/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_185

    :cond_14b
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v6

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_168

    # getter for: Lmiui/util/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_185

    :cond_168
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v6

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_185

    # getter for: Lmiui/util/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v6

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {p1, v7, v8}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_185
    :goto_185
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v6

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_10a

    :cond_194
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_eb

    :cond_198
    :goto_198
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a5

    :cond_19c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_1a0
    return v0
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .registers 7

    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->checkCurrentIndexingGroup()V

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    array-length v0, v0

    array-length v1, p2

    if-ne v0, v1, :cond_2bc

    const/4 v0, 0x0

    :goto_e
    array-length v1, p2

    if-ge v0, v1, :cond_28d

    sget-object v1, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "Object["

    packed-switch v1, :pswitch_data_2e0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type of objects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v3

    aget-object v3, v3, v0

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " expected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5a
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_62

    goto/16 :goto_26f

    :cond_62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] should be long"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_7c
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_84

    goto/16 :goto_26f

    :cond_84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] should be int"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_9e
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Short;

    if-eqz v1, :cond_a6

    goto/16 :goto_26f

    :cond_a6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] should be short"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_c0
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Byte;

    if-eqz v1, :cond_c8

    goto/16 :goto_26f

    :cond_c8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] should be byte"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_e2
    aget-object v1, p2, v0

    instance-of v1, v1, [J

    if-eqz v1, :cond_11d

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->size()I
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    # setter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto/16 :goto_26f

    :cond_11d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] should be long[]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_137
    aget-object v1, p2, v0

    instance-of v1, v1, [I

    if-eqz v1, :cond_172

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->size()I
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    # setter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto/16 :goto_26f

    :cond_172
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] should be int[]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_18c
    aget-object v1, p2, v0

    instance-of v1, v1, [S

    if-eqz v1, :cond_1c7

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->size()I
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    # setter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto/16 :goto_26f

    :cond_1c7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] should be short[]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1e1
    aget-object v1, p2, v0

    instance-of v1, v1, [B

    if-eqz v1, :cond_21b

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->size()I
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    # setter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto :goto_26f

    :cond_21b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] should be byte[]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_235
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_273

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->size()I
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    # setter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    nop

    :goto_26f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    :cond_273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] should be String"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28d
    new-instance v0, Lmiui/util/DirectIndexedFile$Builder$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lmiui/util/DirectIndexedFile$Builder$Item;-><init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiui/util/DirectIndexedFile$1;)V

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2bc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different number of objects inputted, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data expected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_2e0
    .packed-switch 0x1
        :pswitch_235
        :pswitch_1e1
        :pswitch_18c
        :pswitch_137
        :pswitch_e2
        :pswitch_c0
        :pswitch_9e
        :pswitch_7c
        :pswitch_5a
    .end packed-switch
.end method

.method public addGroup([I[[Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->checkCurrentIndexingDataKind()V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Lmiui/util/DirectIndexedFile$Builder;->newGroup()V

    const/4 v0, 0x0

    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_18

    aget v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lmiui/util/DirectIndexedFile$Builder;->add(I[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    return-void

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Different number between indexes and objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addKind([Ljava/lang/Object;)V
    .registers 16

    new-instance v0, Lmiui/util/DirectIndexedFile$Builder$IndexData;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;-><init>(ILmiui/util/DirectIndexedFile$1;)V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_158

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-direct {v3, p0, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;-><init>(Lmiui/util/DirectIndexedFile$Builder;Lmiui/util/DirectIndexedFile$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Byte;

    if-eqz v3, :cond_3d

    sget-object v3, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const/4 v1, 0x1

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto/16 :goto_123

    :cond_3d
    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Short;

    if-eqz v3, :cond_59

    sget-object v3, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const/4 v1, 0x2

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto/16 :goto_123

    :cond_59
    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_75

    sget-object v3, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const/4 v1, 0x4

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto/16 :goto_123

    :cond_75
    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_92

    sget-object v3, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const/16 v1, 0x8

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto/16 :goto_123

    :cond_92
    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_b0

    sget-object v3, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->STRING:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    goto/16 :goto_123

    :cond_b0
    aget-object v3, p1, v0

    instance-of v3, v3, [B

    if-eqz v3, :cond_cd

    sget-object v3, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    goto :goto_123

    :cond_cd
    aget-object v3, p1, v0

    instance-of v3, v3, [S

    if-eqz v3, :cond_ea

    sget-object v3, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    goto :goto_123

    :cond_ea
    aget-object v3, p1, v0

    instance-of v3, v3, [I

    if-eqz v3, :cond_107

    sget-object v3, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    goto :goto_123

    :cond_107
    aget-object v3, p1, v0

    instance-of v3, v3, [J

    if-eqz v3, :cond_13c

    sget-object v3, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    :goto_123
    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    new-instance v13, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v13

    move-object v6, v3

    move v7, v1

    invoke-direct/range {v5 .. v12}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJLmiui/util/DirectIndexedFile$1;)V

    aput-object v13, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    :cond_13c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported type of the ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] argument"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_158
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    new-instance v1, Lmiui/util/DirectIndexedFile$Builder$Item;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v3, p1, v2}, Lmiui/util/DirectIndexedFile$Builder$Item;-><init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiui/util/DirectIndexedFile$1;)V

    # setter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDefaultValue:Lmiui/util/DirectIndexedFile$Builder$Item;
    invoke-static {v0, v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2602(Lmiui/util/DirectIndexedFile$Builder$IndexData;Lmiui/util/DirectIndexedFile$Builder$Item;)Lmiui/util/DirectIndexedFile$Builder$Item;

    return-void
.end method

.method public newGroup()V
    .registers 3

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
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

    if-eqz v0, :cond_38

    :cond_2a
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Cannot delete file "

    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->build()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_7
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    invoke-direct {p0, v1}, Lmiui/util/DirectIndexedFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_41

    const/4 v2, 0x1

    nop

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    if-nez v2, :cond_40

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_40

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_40
    return-void

    :catchall_41
    move-exception v3

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_47
    if-nez v2, :cond_68

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_68

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_68
    throw v3
.end method
