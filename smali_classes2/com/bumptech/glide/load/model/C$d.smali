.class public Lcom/bumptech/glide/load/model/C$d;
.super Ljava/lang/Object;
.source "UriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/u;
.implements Lcom/bumptech/glide/load/model/C$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/u<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/bumptech/glide/load/model/C$c<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final ae:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/C$d;->ae:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public D()V
    .locals 0

    return-void
.end method

.method public a(Landroid/net/Uri;)Lcom/bumptech/glide/load/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/load/a/d<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/a/o;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/C$d;->ae:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/a/o;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/model/x;)Lcom/bumptech/glide/load/model/t;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/x;",
            ")",
            "Lcom/bumptech/glide/load/model/t<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/bumptech/glide/load/model/C;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/model/C;-><init>(Lcom/bumptech/glide/load/model/C$c;)V

    return-object p1
.end method
