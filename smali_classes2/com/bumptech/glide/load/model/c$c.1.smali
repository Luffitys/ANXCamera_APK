.class Lcom/bumptech/glide/load/model/c$c;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/d<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final Jh:Lcom/bumptech/glide/load/model/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/c$b<",
            "TData;>;"
        }
    .end annotation
.end field

.field private final model:[B


# direct methods
.method constructor <init>([BLcom/bumptech/glide/load/model/c$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/bumptech/glide/load/model/c$b<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/c$c;->model:[B

    iput-object p2, p0, Lcom/bumptech/glide/load/model/c$c;->Jh:Lcom/bumptech/glide/load/model/c$b;

    return-void
.end method


# virtual methods
.method public M()Ljava/lang/Class;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/model/c$c;->Jh:Lcom/bumptech/glide/load/model/c$b;

    invoke-interface {p0}, Lcom/bumptech/glide/load/model/c$b;->M()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/a/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/a/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/bumptech/glide/load/model/c$c;->Jh:Lcom/bumptech/glide/load/model/c$b;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/c$c;->model:[B

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/model/c$b;->b([B)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/a/d$a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method

.method public r()Lcom/bumptech/glide/load/DataSource;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object p0
.end method
