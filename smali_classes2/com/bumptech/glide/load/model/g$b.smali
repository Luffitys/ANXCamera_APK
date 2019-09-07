.class final Lcom/bumptech/glide/load/model/g$b;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
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
.field private final Kh:Ljava/lang/String;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field

.field private final reader:Lcom/bumptech/glide/load/model/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/g$a<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/model/g$a<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/g$b;->Kh:Ljava/lang/String;

    iput-object p2, p0, Lcom/bumptech/glide/load/model/g$b;->reader:Lcom/bumptech/glide/load/model/g$a;

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

    iget-object p0, p0, Lcom/bumptech/glide/load/model/g$b;->reader:Lcom/bumptech/glide/load/model/g$a;

    invoke-interface {p0}, Lcom/bumptech/glide/load/model/g$a;->M()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V
    .locals 1
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

    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/model/g$b;->reader:Lcom/bumptech/glide/load/model/g$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/g$b;->Kh:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/model/g$a;->decode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/model/g$b;->data:Ljava/lang/Object;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/g$b;->data:Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/a/d$a;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/a/d$a;->b(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/g$b;->reader:Lcom/bumptech/glide/load/model/g$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/g$b;->data:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/model/g$a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public r()Lcom/bumptech/glide/load/DataSource;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object p0
.end method
