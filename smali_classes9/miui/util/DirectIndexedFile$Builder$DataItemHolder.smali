.class Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mList:Ljava/util/ArrayList;

.field private mMap:Ljava/util/HashMap;

.field final synthetic this$0:Lmiui/util/DirectIndexedFile$Builder;


# direct methods
.method private constructor <init>(Lmiui/util/DirectIndexedFile$Builder;)V
    .locals 0

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->this$0:Lmiui/util/DirectIndexedFile$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$Builder;Lmiui/util/DirectIndexedFile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;-><init>(Lmiui/util/DirectIndexedFile$Builder;)V

    return-void
.end method

.method static synthetic access$2300(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I
    .locals 0

    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->size()I

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->getAll()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private getAll()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private put(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private size()I
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method
