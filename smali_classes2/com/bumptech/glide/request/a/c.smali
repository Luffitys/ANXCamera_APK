.class public Lcom/bumptech/glide/request/a/c;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/a/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/a/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final Nl:Z

.field private Pl:Lcom/bumptech/glide/request/a/d;

.field private final duration:I


# direct methods
.method protected constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bumptech/glide/request/a/c;->duration:I

    iput-boolean p2, p0, Lcom/bumptech/glide/request/a/c;->Nl:Z

    return-void
.end method

.method private dl()Lcom/bumptech/glide/request/a/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/a/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/a/c;->Pl:Lcom/bumptech/glide/request/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/request/a/d;

    iget v1, p0, Lcom/bumptech/glide/request/a/c;->duration:I

    iget-boolean v2, p0, Lcom/bumptech/glide/request/a/c;->Nl:Z

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/a/d;-><init>(IZ)V

    iput-object v0, p0, Lcom/bumptech/glide/request/a/c;->Pl:Lcom/bumptech/glide/request/a/d;

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/request/a/c;->Pl:Lcom/bumptech/glide/request/a/d;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lcom/bumptech/glide/request/a/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    sget-object p2, Lcom/bumptech/glide/load/DataSource;->jq:Lcom/bumptech/glide/load/DataSource;

    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/bumptech/glide/request/a/e;->get()Lcom/bumptech/glide/request/a/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/c;->dl()Lcom/bumptech/glide/request/a/f;

    move-result-object p0

    :goto_0
    return-object p0
.end method
