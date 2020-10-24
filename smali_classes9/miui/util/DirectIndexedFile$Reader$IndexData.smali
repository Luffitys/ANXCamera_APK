.class Lmiui/util/DirectIndexedFile$Reader$IndexData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

.field private mDataItems:[[Ljava/lang/Object;

.field private mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

.field private mSizeOfItems:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object p0
.end method

.method static synthetic access$1002(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$DataItemDescriptor;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 0

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object p1
.end method

.method static synthetic access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1302(Lmiui/util/DirectIndexedFile$Reader$IndexData;[[Ljava/lang/Object;)[[Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object p0
.end method

.method static synthetic access$602(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 0

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object p1
.end method

.method static synthetic access$900(Lmiui/util/DirectIndexedFile$Reader$IndexData;)I
    .locals 0

    iget p0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    return p0
.end method

.method static synthetic access$902(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I
    .locals 0

    iput p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    return p1
.end method

.method static synthetic access$912(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I
    .locals 1

    iget v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    return v0
.end method
