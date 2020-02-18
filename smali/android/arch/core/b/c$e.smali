.class abstract Landroid/arch/core/b/c$e;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Landroid/arch/core/b/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/core/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Landroid/arch/core/b/c$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field mNext:Landroid/arch/core/b/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field na:Landroid/arch/core/b/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/arch/core/b/c$c;Landroid/arch/core/b/c$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/arch/core/b/c$e;->na:Landroid/arch/core/b/c$c;

    iput-object p1, p0, Landroid/arch/core/b/c$e;->mNext:Landroid/arch/core/b/c$c;

    return-void
.end method

.method private nextNode()Landroid/arch/core/b/c$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/arch/core/b/c$e;->mNext:Landroid/arch/core/b/c$c;

    iget-object v1, p0, Landroid/arch/core/b/c$e;->na:Landroid/arch/core/b/c$c;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/arch/core/b/c$e;->c(Landroid/arch/core/b/c$c;)Landroid/arch/core/b/c$c;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/arch/core/b/c$c;)V
    .locals 1
    .param p1    # Landroid/arch/core/b/c$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/arch/core/b/c$e;->na:Landroid/arch/core/b/c$c;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/arch/core/b/c$e;->mNext:Landroid/arch/core/b/c$c;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/arch/core/b/c$e;->mNext:Landroid/arch/core/b/c$c;

    iput-object v0, p0, Landroid/arch/core/b/c$e;->na:Landroid/arch/core/b/c$c;

    :cond_0
    iget-object v0, p0, Landroid/arch/core/b/c$e;->na:Landroid/arch/core/b/c$c;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/arch/core/b/c$e;->b(Landroid/arch/core/b/c$c;)Landroid/arch/core/b/c$c;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/core/b/c$e;->na:Landroid/arch/core/b/c$c;

    :cond_1
    iget-object v0, p0, Landroid/arch/core/b/c$e;->mNext:Landroid/arch/core/b/c$c;

    if-ne v0, p1, :cond_2

    invoke-direct {p0}, Landroid/arch/core/b/c$e;->nextNode()Landroid/arch/core/b/c$c;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/core/b/c$e;->mNext:Landroid/arch/core/b/c$c;

    :cond_2
    return-void
.end method

.method abstract b(Landroid/arch/core/b/c$c;)Landroid/arch/core/b/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;)",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method abstract c(Landroid/arch/core/b/c$c;)Landroid/arch/core/b/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;)",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Landroid/arch/core/b/c$e;->mNext:Landroid/arch/core/b/c$c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/arch/core/b/c$e;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/arch/core/b/c$e;->mNext:Landroid/arch/core/b/c$c;

    invoke-direct {p0}, Landroid/arch/core/b/c$e;->nextNode()Landroid/arch/core/b/c$c;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/core/b/c$e;->mNext:Landroid/arch/core/b/c$c;

    return-object v0
.end method
