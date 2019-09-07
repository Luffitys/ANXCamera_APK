.class final Lcom/bumptech/glide/load/engine/DecodeJob$b;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/i$a<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final dataSource:Lcom/bumptech/glide/load/DataSource;

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/DecodeJob;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->dataSource:Lcom/bumptech/glide/load/DataSource;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/A;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/A;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/A<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/engine/A<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$b;->dataSource:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/A;

    move-result-object p0

    return-object p0
.end method
