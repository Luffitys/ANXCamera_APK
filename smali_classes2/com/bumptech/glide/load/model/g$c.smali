.class public final Lcom/bumptech/glide/load/model/g$c;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/u<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final me:Lcom/bumptech/glide/load/model/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/g$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/model/h;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/model/h;-><init>(Lcom/bumptech/glide/load/model/g$c;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/g$c;->me:Lcom/bumptech/glide/load/model/g$a;

    return-void
.end method


# virtual methods
.method public D()V
    .locals 0

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/model/x;)Lcom/bumptech/glide/load/model/t;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/model/x;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/x;",
            ")",
            "Lcom/bumptech/glide/load/model/t<",
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/bumptech/glide/load/model/g;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/g$c;->me:Lcom/bumptech/glide/load/model/g$a;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/model/g;-><init>(Lcom/bumptech/glide/load/model/g$a;)V

    return-object p1
.end method
