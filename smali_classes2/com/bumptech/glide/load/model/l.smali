.class public Lcom/bumptech/glide/load/model/l;
.super Ljava/lang/Object;
.source "GlideUrl.java"

# interfaces
.implements Lcom/bumptech/glide/load/c;


# static fields
.field private static final Th:Ljava/lang/String; = "@#&=*+-_.,:!?()/~\'%;$"


# instance fields
.field private final Ph:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private Qh:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private Rh:Ljava/net/URL;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private volatile Sh:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private hashCode:I

.field private final headers:Lcom/bumptech/glide/load/model/n;

.field private final url:Ljava/net/URL;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/model/n;->DEFAULT:Lcom/bumptech/glide/load/model/n;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/l;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/l;->url:Ljava/net/URL;

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->u(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/bumptech/glide/load/model/l;->Ph:Ljava/lang/String;

    invoke-static {p2}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/bumptech/glide/load/model/n;

    iput-object p2, p0, Lcom/bumptech/glide/load/model/l;->headers:Lcom/bumptech/glide/load/model/n;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/model/n;->DEFAULT:Lcom/bumptech/glide/load/model/n;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/l;-><init>(Ljava/net/URL;Lcom/bumptech/glide/load/model/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/bumptech/glide/load/model/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/net/URL;

    iput-object p1, p0, Lcom/bumptech/glide/load/model/l;->url:Ljava/net/URL;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/load/model/l;->Ph:Ljava/lang/String;

    invoke-static {p2}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/bumptech/glide/load/model/n;

    iput-object p2, p0, Lcom/bumptech/glide/load/model/l;->headers:Lcom/bumptech/glide/load/model/n;

    return-void
.end method

.method private Ak()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/model/l;->Rh:Ljava/net/URL;

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/URL;

    invoke-direct {p0}, Lcom/bumptech/glide/load/model/l;->zk()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/l;->Rh:Ljava/net/URL;

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/model/l;->Rh:Ljava/net/URL;

    return-object p0
.end method

.method private yk()[B
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/model/l;->Sh:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/l;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/c;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/l;->Sh:[B

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/model/l;->Sh:[B

    return-object p0
.end method

.method private zk()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/model/l;->Qh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/model/l;->Ph:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/model/l;->url:Ljava/net/URL;

    invoke-static {v0}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "@#&=*+-_.,:!?()/~\'%;$"

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/l;->Qh:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lcom/bumptech/glide/load/model/l;->Qh:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public Dg()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/load/model/l;->zk()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/bumptech/glide/load/model/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/load/model/l;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/l;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/l;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/load/model/l;->headers:Lcom/bumptech/glide/load/model/n;

    iget-object p1, p1, Lcom/bumptech/glide/load/model/l;->headers:Lcom/bumptech/glide/load/model/n;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/model/l;->Ph:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/model/l;->url:Ljava/net/URL;

    invoke-static {p0}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/model/l;->headers:Lcom/bumptech/glide/load/model/n;

    invoke-interface {p0}, Lcom/bumptech/glide/load/model/n;->getHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/load/model/l;->hashCode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/l;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/model/l;->hashCode:I

    iget v0, p0, Lcom/bumptech/glide/load/model/l;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/model/l;->headers:Lcom/bumptech/glide/load/model/n;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/model/l;->hashCode:I

    :cond_0
    iget p0, p0, Lcom/bumptech/glide/load/model/l;->hashCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/l;->getCacheKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toURL()Ljava/net/URL;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/model/l;->Ak()Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/bumptech/glide/load/model/l;->yk()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
