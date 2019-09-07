.class Lcom/bumptech/glide/load/engine/B;
.super Ljava/lang/Object;
.source "ResourceCacheGenerator.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/f;
.implements Lcom/bumptech/glide/load/a/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/f;",
        "Lcom/bumptech/glide/load/a/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private Ae:Ljava/io/File;

.field private Sf:I

.field private Tf:Lcom/bumptech/glide/load/engine/C;

.field private final cb:Lcom/bumptech/glide/load/engine/f$a;

.field private final ue:Lcom/bumptech/glide/load/engine/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;"
        }
    .end annotation
.end field

.field private ve:I

.field private we:Lcom/bumptech/glide/load/c;

.field private xe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/t<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private ye:I

.field private volatile ze:Lcom/bumptech/glide/load/model/t$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/t$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/f$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/engine/B;->Sf:I

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/B;->cb:Lcom/bumptech/glide/load/engine/f$a;

    return-void
.end method

.method private ek()Z
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/engine/B;->ye:I

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/B;->xe:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public b(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/B;->cb:Lcom/bumptech/glide/load/engine/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/B;->Tf:Lcom/bumptech/glide/load/engine/C;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/B;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    sget-object v2, Lcom/bumptech/glide/load/DataSource;->iq:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v0, v1, p1, p0, v2}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/c;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/B;->cb:Lcom/bumptech/glide/load/engine/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/B;->we:Lcom/bumptech/glide/load/c;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/B;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object v3, v2, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    sget-object v4, Lcom/bumptech/glide/load/DataSource;->iq:Lcom/bumptech/glide/load/DataSource;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/B;->Tf:Lcom/bumptech/glide/load/engine/C;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/c;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/c;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/B;->ze:Lcom/bumptech/glide/load/model/t$a;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    invoke-interface {p0}, Lcom/bumptech/glide/load/a/d;->cancel()V

    :cond_0
    return-void
.end method

.method public q()Z
    .locals 14

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->dg()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/g;->hg()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v3, Ljava/io/File;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->ig()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/B;->xe:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/B;->ek()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/B;->ze:Lcom/bumptech/glide/load/model/t$a;

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/B;->ek()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/B;->xe:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/load/engine/B;->ye:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/bumptech/glide/load/engine/B;->ye:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/t;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/B;->Ae:Ljava/io/File;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/g;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/g;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/g;->getOptions()Lcom/bumptech/glide/load/g;

    move-result-object v6

    invoke-interface {v0, v1, v3, v5, v6}, Lcom/bumptech/glide/load/model/t;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/model/t$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/B;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/B;->ze:Lcom/bumptech/glide/load/model/t$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/B;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->M()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/g;->e(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/B;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/g;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/a/d;->a(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V

    move v2, v4

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_2
    iget v3, p0, Lcom/bumptech/glide/load/engine/B;->Sf:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/bumptech/glide/load/engine/B;->Sf:I

    iget v3, p0, Lcom/bumptech/glide/load/engine/B;->Sf:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_7

    iget v3, p0, Lcom/bumptech/glide/load/engine/B;->ve:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/bumptech/glide/load/engine/B;->ve:I

    iget v3, p0, Lcom/bumptech/glide/load/engine/B;->ve:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_6

    return v2

    :cond_6
    iput v2, p0, Lcom/bumptech/glide/load/engine/B;->Sf:I

    :cond_7
    iget v3, p0, Lcom/bumptech/glide/load/engine/B;->ve:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/c;

    iget v4, p0, Lcom/bumptech/glide/load/engine/B;->Sf:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/Class;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v4, v11}, Lcom/bumptech/glide/load/engine/g;->d(Ljava/lang/Class;)Lcom/bumptech/glide/load/j;

    move-result-object v10

    new-instance v13, Lcom/bumptech/glide/load/engine/C;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->V()Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    move-result-object v5

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->getSignature()Lcom/bumptech/glide/load/c;

    move-result-object v7

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->getWidth()I

    move-result v8

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->getHeight()I

    move-result v9

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->getOptions()Lcom/bumptech/glide/load/g;

    move-result-object v12

    move-object v4, v13

    move-object v6, v3

    invoke-direct/range {v4 .. v12}, Lcom/bumptech/glide/load/engine/C;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/c;IILcom/bumptech/glide/load/j;Ljava/lang/Class;Lcom/bumptech/glide/load/g;)V

    iput-object v13, p0, Lcom/bumptech/glide/load/engine/B;->Tf:Lcom/bumptech/glide/load/engine/C;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->n()Lcom/bumptech/glide/load/engine/a/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/B;->Tf:Lcom/bumptech/glide/load/engine/C;

    invoke-interface {v4, v5}, Lcom/bumptech/glide/load/engine/a/a;->b(Lcom/bumptech/glide/load/c;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/bumptech/glide/load/engine/B;->Ae:Ljava/io/File;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->Ae:Ljava/io/File;

    if-eqz v4, :cond_1

    iput-object v3, p0, Lcom/bumptech/glide/load/engine/B;->we:Lcom/bumptech/glide/load/c;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/B;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/engine/g;->e(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/bumptech/glide/load/engine/B;->xe:Ljava/util/List;

    iput v2, p0, Lcom/bumptech/glide/load/engine/B;->ye:I

    goto/16 :goto_0
.end method
