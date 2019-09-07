.class public Lcom/bumptech/glide/load/model/i$a;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/u<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final me:Lcom/bumptech/glide/load/model/i$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/i$d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/i$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/i$d<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/i$a;->me:Lcom/bumptech/glide/load/model/i$d;

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/model/x;)Lcom/bumptech/glide/load/model/t;
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
            "Ljava/io/File;",
            "TData;>;"
        }
    .end annotation

    new-instance p1, Lcom/bumptech/glide/load/model/i;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/i$a;->me:Lcom/bumptech/glide/load/model/i$d;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/model/i;-><init>(Lcom/bumptech/glide/load/model/i$d;)V

    return-object p1
.end method
