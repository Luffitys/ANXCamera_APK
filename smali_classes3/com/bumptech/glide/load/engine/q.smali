.class Lcom/bumptech/glide/load/engine/q;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/util/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/a/d$a<",
        "Lcom/bumptech/glide/load/engine/EngineJob<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/q;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/bumptech/glide/load/engine/EngineJob;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;"
        }
    .end annotation

    new-instance v7, Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/q;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->Qb:Lcom/bumptech/glide/load/engine/b/b;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->Pb:Lcom/bumptech/glide/load/engine/b/b;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sf:Lcom/bumptech/glide/load/engine/b/b;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->Ub:Lcom/bumptech/glide/load/engine/b/b;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->listener:Lcom/bumptech/glide/load/engine/r;

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->pool:Landroid/support/v4/util/Pools$Pool;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/engine/EngineJob;-><init>(Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/r;Landroid/support/v4/util/Pools$Pool;)V

    return-object v7
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/q;->create()Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object p0

    return-object p0
.end method
