.class Lcom/bumptech/glide/load/engine/E;
.super Ljava/lang/Object;
.source "SourceGenerator.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/f;
.implements Lcom/bumptech/glide/load/a/d$a;
.implements Lcom/bumptech/glide/load/engine/f$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/f;",
        "Lcom/bumptech/glide/load/a/d$a<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/bumptech/glide/load/engine/f$a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SourceGenerator"


# instance fields
.field private Zf:I

.field private _f:Lcom/bumptech/glide/load/engine/c;

.field private ag:Ljava/lang/Object;

.field private bg:Lcom/bumptech/glide/load/engine/d;

.field private final cb:Lcom/bumptech/glide/load/engine/f$a;

.field private final ue:Lcom/bumptech/glide/load/engine/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;"
        }
    .end annotation
.end field

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
    .locals 0
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

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/E;->ue:Lcom/bumptech/glide/load/engine/g;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/E;->cb:Lcom/bumptech/glide/load/engine/f$a;

    return-void
.end method

.method private ek()Z
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/engine/E;->Zf:I

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/E;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->fg()Ljava/util/List;

    move-result-object p0

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

.method private u(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "SourceGenerator"

    invoke-static {}, Lcom/bumptech/glide/util/e;->Gh()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/E;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v3, p1}, Lcom/bumptech/glide/load/engine/g;->l(Ljava/lang/Object;)Lcom/bumptech/glide/load/a;

    move-result-object v3

    new-instance v4, Lcom/bumptech/glide/load/engine/e;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/E;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/g;->getOptions()Lcom/bumptech/glide/load/g;

    move-result-object v5

    invoke-direct {v4, v3, p1, v5}, Lcom/bumptech/glide/load/engine/e;-><init>(Lcom/bumptech/glide/load/a;Ljava/lang/Object;Lcom/bumptech/glide/load/g;)V

    new-instance v5, Lcom/bumptech/glide/load/engine/d;

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object v6, v6, Lcom/bumptech/glide/load/model/t$a;->we:Lcom/bumptech/glide/load/c;

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/E;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v7}, Lcom/bumptech/glide/load/engine/g;->getSignature()Lcom/bumptech/glide/load/c;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/engine/d;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/c;)V

    iput-object v5, p0, Lcom/bumptech/glide/load/engine/E;->bg:Lcom/bumptech/glide/load/engine/d;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/E;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/g;->n()Lcom/bumptech/glide/load/engine/a/a;

    move-result-object v5

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/E;->bg:Lcom/bumptech/glide/load/engine/d;

    invoke-interface {v5, v6, v4}, Lcom/bumptech/glide/load/engine/a/a;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/a/a$b;)V

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished encoding source to cache, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/E;->bg:Lcom/bumptech/glide/load/engine/d;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", encoder: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/e;->g(J)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object p1, p1, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    invoke-interface {p1}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    new-instance p1, Lcom/bumptech/glide/load/engine/c;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/t$a;->we:Lcom/bumptech/glide/load/c;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/E;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-direct {p1, v0, v1, p0}, Lcom/bumptech/glide/load/engine/c;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/E;->_f:Lcom/bumptech/glide/load/engine/c;

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    invoke-interface {p0}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    throw p1
.end method


# virtual methods
.method public K()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public a(Lcom/bumptech/glide/load/c;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/a/d<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Lcom/bumptech/glide/load/engine/E;->cb:Lcom/bumptech/glide/load/engine/f$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    invoke-interface {p0}, Lcom/bumptech/glide/load/a/d;->r()Lcom/bumptech/glide/load/DataSource;

    move-result-object p0

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/c;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/c;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/a/d<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/E;->cb:Lcom/bumptech/glide/load/engine/f$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    invoke-interface {p0}, Lcom/bumptech/glide/load/a/d;->r()Lcom/bumptech/glide/load/DataSource;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/c;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/c;)V

    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/E;->cb:Lcom/bumptech/glide/load/engine/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/E;->bg:Lcom/bumptech/glide/load/engine/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    invoke-interface {p0}, Lcom/bumptech/glide/load/a/d;->r()Lcom/bumptech/glide/load/DataSource;

    move-result-object p0

    invoke-interface {v0, v1, p1, v2, p0}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/c;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/E;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->eg()Lcom/bumptech/glide/load/engine/o;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->r()Lcom/bumptech/glide/load/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/o;->a(Lcom/bumptech/glide/load/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/E;->ag:Ljava/lang/Object;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/E;->cb:Lcom/bumptech/glide/load/engine/f$a;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/f$a;->K()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/E;->cb:Lcom/bumptech/glide/load/engine/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/model/t$a;->we:Lcom/bumptech/glide/load/c;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object v3, v2, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v2}, Lcom/bumptech/glide/load/a/d;->r()Lcom/bumptech/glide/load/DataSource;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/E;->bg:Lcom/bumptech/glide/load/engine/d;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/c;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/c;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    invoke-interface {p0}, Lcom/bumptech/glide/load/a/d;->cancel()V

    :cond_0
    return-void
.end method

.method public q()Z
    .locals 5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/E;->ag:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/E;->ag:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/E;->u(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/E;->_f:Lcom/bumptech/glide/load/engine/c;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/c;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/E;->_f:Lcom/bumptech/glide/load/engine/c;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/E;->ek()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/E;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/g;->fg()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/load/engine/E;->Zf:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/bumptech/glide/load/engine/E;->Zf:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/model/t$a;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/E;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/g;->eg()Lcom/bumptech/glide/load/engine/o;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v3}, Lcom/bumptech/glide/load/a/d;->r()Lcom/bumptech/glide/load/DataSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/o;->a(Lcom/bumptech/glide/load/DataSource;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/E;->ue:Lcom/bumptech/glide/load/engine/g;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v3}, Lcom/bumptech/glide/load/a/d;->M()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/g;->e(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/E;->ze:Lcom/bumptech/glide/load/model/t$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/t$a;->bi:Lcom/bumptech/glide/load/a/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/E;->ue:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/g;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/a/d;->a(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V

    move v0, v2

    goto :goto_0

    :cond_4
    return v0
.end method
