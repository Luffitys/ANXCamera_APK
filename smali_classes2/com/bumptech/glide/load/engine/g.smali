.class final Lcom/bumptech/glide/load/engine/g;
.super Ljava/lang/Object;
.source "DecodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private Be:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private Ce:Lcom/bumptech/glide/load/engine/DecodeJob$d;

.field private De:Z

.field private Eb:Lcom/bumptech/glide/e;

.field private Ee:Z

.field private Fe:Lcom/bumptech/glide/load/engine/o;

.field private Ge:Z

.field private He:Z

.field private Ld:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field private height:I

.field private model:Ljava/lang/Object;

.field private options:Lcom/bumptech/glide/load/g;

.field private priority:Lcom/bumptech/glide/Priority;

.field private signature:Lcom/bumptech/glide/load/c;

.field private final te:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c;",
            ">;"
        }
    .end annotation
.end field

.field private uc:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscode;>;"
        }
    .end annotation
.end field

.field private width:I

.field private final ze:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/t$a<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->ze:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->te:Ljava/util/List;

    return-void
.end method


# virtual methods
.method V()Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->Eb:Lcom/bumptech/glide/e;

    invoke-virtual {p0}, Lcom/bumptech/glide/e;->V()Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    move-result-object p0

    return-object p0
.end method

.method a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/c;IILcom/bumptech/glide/load/engine/o;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/g;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/DecodeJob$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/c;",
            "II",
            "Lcom/bumptech/glide/load/engine/o;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/j<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/engine/DecodeJob$d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g;->Eb:Lcom/bumptech/glide/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/g;->model:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/g;->signature:Lcom/bumptech/glide/load/c;

    iput p4, p0, Lcom/bumptech/glide/load/engine/g;->width:I

    iput p5, p0, Lcom/bumptech/glide/load/engine/g;->height:I

    iput-object p6, p0, Lcom/bumptech/glide/load/engine/g;->Fe:Lcom/bumptech/glide/load/engine/o;

    iput-object p7, p0, Lcom/bumptech/glide/load/engine/g;->Be:Ljava/lang/Class;

    iput-object p14, p0, Lcom/bumptech/glide/load/engine/g;->Ce:Lcom/bumptech/glide/load/engine/DecodeJob$d;

    iput-object p8, p0, Lcom/bumptech/glide/load/engine/g;->uc:Ljava/lang/Class;

    iput-object p9, p0, Lcom/bumptech/glide/load/engine/g;->priority:Lcom/bumptech/glide/Priority;

    iput-object p10, p0, Lcom/bumptech/glide/load/engine/g;->options:Lcom/bumptech/glide/load/g;

    iput-object p11, p0, Lcom/bumptech/glide/load/engine/g;->Ld:Ljava/util/Map;

    iput-boolean p12, p0, Lcom/bumptech/glide/load/engine/g;->Ge:Z

    iput-boolean p13, p0, Lcom/bumptech/glide/load/engine/g;->He:Z

    return-void
.end method

.method c(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lcom/bumptech/glide/load/engine/x<",
            "TData;*TTranscode;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->Eb:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->Be:Ljava/lang/Class;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->uc:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, p0}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/x;

    move-result-object p0

    return-object p0
.end method

.method c(Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/A<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/i<",
            "TZ;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->Eb:Lcom/bumptech/glide/e;

    invoke-virtual {p0}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/Registry;->c(Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/i;

    move-result-object p0

    return-object p0
.end method

.method clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->Eb:Lcom/bumptech/glide/e;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->model:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->signature:Lcom/bumptech/glide/load/c;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->Be:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->uc:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->options:Lcom/bumptech/glide/load/g;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->priority:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->Ld:Ljava/util/Map;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->Fe:Lcom/bumptech/glide/load/engine/o;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->ze:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->De:Z

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->te:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->Ee:Z

    return-void
.end method

.method d(Ljava/lang/Class;)Lcom/bumptech/glide/load/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/j<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->Ld:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/j;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->Ld:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/j;

    :cond_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->Ld:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/bumptech/glide/load/engine/g;->Ge:Z

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing transformation for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-static {}, Lcom/bumptech/glide/load/b/b;->get()Lcom/bumptech/glide/load/b/b;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method d(Lcom/bumptech/glide/load/engine/A;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/A<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->Eb:Lcom/bumptech/glide/e;

    invoke-virtual {p0}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/Registry;->d(Lcom/bumptech/glide/load/engine/A;)Z

    move-result p0

    return p0
.end method

.method dg()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->Ee:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->Ee:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->te:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->fg()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/model/t$a;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/g;->te:Ljava/util/List;

    iget-object v6, v4, Lcom/bumptech/glide/load/model/t$a;->we:Lcom/bumptech/glide/load/c;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/g;->te:Ljava/util/List;

    iget-object v6, v4, Lcom/bumptech/glide/load/model/t$a;->we:Lcom/bumptech/glide/load/c;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v5, v2

    :goto_1
    iget-object v6, v4, Lcom/bumptech/glide/load/model/t$a;->ai:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/g;->te:Ljava/util/List;

    iget-object v7, v4, Lcom/bumptech/glide/load/model/t$a;->ai:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/g;->te:Ljava/util/List;

    iget-object v7, v4, Lcom/bumptech/glide/load/model/t$a;->ai:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->te:Ljava/util/List;

    return-object p0
.end method

.method e(Ljava/io/File;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/t<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->Eb:Lcom/bumptech/glide/e;

    invoke-virtual {p0}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/Registry;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method e(Lcom/bumptech/glide/load/c;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->fg()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/model/t$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/model/t$a;->we:Lcom/bumptech/glide/load/c;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method e(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/g;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/x;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method eg()Lcom/bumptech/glide/load/engine/o;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->Fe:Lcom/bumptech/glide/load/engine/o;

    return-object p0
.end method

.method fg()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/t$a<",
            "*>;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->De:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->De:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->ze:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->Eb:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->model:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/Registry;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/model/t;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/g;->model:Ljava/lang/Object;

    iget v5, p0, Lcom/bumptech/glide/load/engine/g;->width:I

    iget v6, p0, Lcom/bumptech/glide/load/engine/g;->height:I

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/g;->options:Lcom/bumptech/glide/load/g;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/bumptech/glide/load/model/t;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/model/t$a;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/g;->ze:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->ze:Ljava/util/List;

    return-object p0
.end method

.method getHeight()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/engine/g;->height:I

    return p0
.end method

.method getOptions()Lcom/bumptech/glide/load/g;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->options:Lcom/bumptech/glide/load/g;

    return-object p0
.end method

.method getPriority()Lcom/bumptech/glide/Priority;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->priority:Lcom/bumptech/glide/Priority;

    return-object p0
.end method

.method getSignature()Lcom/bumptech/glide/load/c;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->signature:Lcom/bumptech/glide/load/c;

    return-object p0
.end method

.method getWidth()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/engine/g;->width:I

    return p0
.end method

.method gg()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->model:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method hg()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->Eb:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->model:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->Be:Ljava/lang/Class;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->uc:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, p0}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method ig()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->uc:Ljava/lang/Class;

    return-object p0
.end method

.method jg()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/load/engine/g;->He:Z

    return p0
.end method

.method l(Ljava/lang/Object;)Lcom/bumptech/glide/load/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/a<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->Eb:Lcom/bumptech/glide/e;

    invoke-virtual {p0}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/Registry;->l(Ljava/lang/Object;)Lcom/bumptech/glide/load/a;

    move-result-object p0

    return-object p0
.end method

.method n()Lcom/bumptech/glide/load/engine/a/a;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/g;->Ce:Lcom/bumptech/glide/load/engine/DecodeJob$d;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/DecodeJob$d;->n()Lcom/bumptech/glide/load/engine/a/a;

    move-result-object p0

    return-object p0
.end method
