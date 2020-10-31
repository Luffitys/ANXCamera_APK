.class Lmiui/util/DirectIndexedFile$Reader$IndexData;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexData"
.end annotation


# instance fields
.field private mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

.field private mDataItems:[[Ljava/lang/Object;

.field private mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

.field private mSizeOfItems:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .registers 2

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object v0
.end method

.method static synthetic access$1002(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$DataItemDescriptor;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .registers 2

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object p1
.end method

.method static synthetic access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lmiui/util/DirectIndexedFile$Reader$IndexData;[[Ljava/lang/Object;)[[Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .registers 2

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object v0
.end method

.method static synthetic access$602(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .registers 2

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object p1
.end method

.method static synthetic access$900(Lmiui/util/DirectIndexedFile$Reader$IndexData;)I
    .registers 2

    iget v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    return v0
.end method

.method static synthetic access$902(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I
    .registers 2

    iput p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    return p1
.end method

.method static synthetic access$912(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I
    .registers 3

    iget v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    return v0
.end method
