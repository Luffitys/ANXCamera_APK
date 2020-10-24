.class Lmiui/util/DirectIndexedFile$Builder$IndexData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

.field private mDataItemHolders:Ljava/util/ArrayList;

.field private mDataMap:Ljava/util/HashMap;

.field private mDefaultValue:Lmiui/util/DirectIndexedFile$Builder$Item;

.field private mIndexDataGroups:Ljava/util/ArrayList;

.field private mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    new-array p1, p1, [Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-void
.end method

.method synthetic constructor <init>(ILmiui/util/DirectIndexedFile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;-><init>(I)V

    return-void
.end method

.method static synthetic access$2200(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object p0
.end method

.method static synthetic access$2600(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Lmiui/util/DirectIndexedFile$Builder$Item;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDefaultValue:Lmiui/util/DirectIndexedFile$Builder$Item;

    return-object p0
.end method

.method static synthetic access$2602(Lmiui/util/DirectIndexedFile$Builder$IndexData;Lmiui/util/DirectIndexedFile$Builder$Item;)Lmiui/util/DirectIndexedFile$Builder$Item;
    .locals 0

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDefaultValue:Lmiui/util/DirectIndexedFile$Builder$Item;

    return-object p1
.end method

.method static synthetic access$2800(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3400(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object p0
.end method

.method static synthetic access$3402(Lmiui/util/DirectIndexedFile$Builder$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 0

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object p1
.end method
