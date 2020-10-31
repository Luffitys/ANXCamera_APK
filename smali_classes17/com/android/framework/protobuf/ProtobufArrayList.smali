.class final Lcom/android/framework/protobuf/ProtobufArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "ProtobufArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/android/framework/protobuf/ProtobufArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/ProtobufArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/framework/protobuf/ProtobufArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/ProtobufArrayList;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/framework/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/ProtobufArrayList;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ProtobufArrayList;->makeImmutable()V

    return-void
.end method

.method constructor <init>()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/ProtobufArrayList;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    return-void
.end method

.method public static emptyList()Lcom/android/framework/protobuf/ProtobufArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/framework/protobuf/ProtobufArrayList<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/ProtobufArrayList;

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/ProtobufArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/ProtobufArrayList;

    move-result-object p1

    return-object p1
.end method

.method public mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/ProtobufArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/framework/protobuf/ProtobufArrayList<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ProtobufArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/android/framework/protobuf/ProtobufArrayList;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/ProtobufArrayList;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
