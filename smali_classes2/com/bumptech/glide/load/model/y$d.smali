.class public Lcom/bumptech/glide/load/model/y$d;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/u<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/y$d;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public D()V
    .locals 0

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/model/x;)Lcom/bumptech/glide/load/model/t;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/x;",
            ")",
            "Lcom/bumptech/glide/load/model/t<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/bumptech/glide/load/model/y;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/y$d;->resources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/bumptech/glide/load/model/B;->getInstance()Lcom/bumptech/glide/load/model/B;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/load/model/y;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/model/t;)V

    return-object p1
.end method
