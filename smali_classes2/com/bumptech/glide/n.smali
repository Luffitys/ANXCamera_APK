.class public abstract Lcom/bumptech/glide/n;
.super Ljava/lang/Object;
.source "TransitionOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Lcom/bumptech/glide/n<",
        "TCHI",
        "LD;",
        "TTranscodeType;>;TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private Mc:Lcom/bumptech/glide/request/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/a/g<",
            "-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bumptech/glide/request/a/e;->getFactory()Lcom/bumptech/glide/request/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/n;->Mc:Lcom/bumptech/glide/request/a/g;

    return-void
.end method

.method private self()Lcom/bumptech/glide/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public final Uf()Lcom/bumptech/glide/n;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/request/a/e;->getFactory()Lcom/bumptech/glide/request/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    return-object p0
.end method

.method final Vf()Lcom/bumptech/glide/request/a/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/a/g<",
            "-TTranscodeType;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/n;->Mc:Lcom/bumptech/glide/request/a/g;

    return-object p0
.end method

.method public final a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/n;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/g<",
            "-TTranscodeType;>;)TCHI",
            "LD;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/request/a/g;

    iput-object p1, p0, Lcom/bumptech/glide/n;->Mc:Lcom/bumptech/glide/request/a/g;

    invoke-direct {p0}, Lcom/bumptech/glide/n;->self()Lcom/bumptech/glide/n;

    return-object p0
.end method

.method public final a(Lcom/bumptech/glide/request/a/j$a;)Lcom/bumptech/glide/n;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/a/j$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/j$a;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/a/i;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/a/i;-><init>(Lcom/bumptech/glide/request/a/j$a;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    return-object p0
.end method

.method public final clone()Lcom/bumptech/glide/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/n;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/n;->clone()Lcom/bumptech/glide/n;

    move-result-object p0

    return-object p0
.end method

.method public final k(I)Lcom/bumptech/glide/n;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCHI",
            "LD;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/a/h;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/a/h;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    return-object p0
.end method
