.class Lcom/bumptech/glide/manager/a;
.super Ljava/lang/Object;
.source "ActivityFragmentLifecycle.java"

# interfaces
.implements Lcom/bumptech/glide/manager/i;


# instance fields
.field private final qk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/manager/j;",
            ">;"
        }
    .end annotation
.end field

.field private rk:Z

.field private za:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/a;->qk:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/manager/j;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/bumptech/glide/manager/a;->qk:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/bumptech/glide/manager/j;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/manager/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/manager/a;->qk:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/bumptech/glide/manager/a;->rk:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/bumptech/glide/manager/j;->onDestroy()V

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/bumptech/glide/manager/a;->za:Z

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lcom/bumptech/glide/manager/j;->onStart()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/manager/j;->onStop()V

    :goto_0
    return-void
.end method

.method onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/a;->rk:Z

    iget-object p0, p0, Lcom/bumptech/glide/manager/a;->qk:Ljava/util/Set;

    invoke-static {p0}, Lcom/bumptech/glide/util/l;->b(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/j;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/j;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/a;->za:Z

    iget-object p0, p0, Lcom/bumptech/glide/manager/a;->qk:Ljava/util/Set;

    invoke-static {p0}, Lcom/bumptech/glide/util/l;->b(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/j;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/j;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/a;->za:Z

    iget-object p0, p0, Lcom/bumptech/glide/manager/a;->qk:Ljava/util/Set;

    invoke-static {p0}, Lcom/bumptech/glide/util/l;->b(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/j;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/j;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method
