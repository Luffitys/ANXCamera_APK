.class public final Lcom/bumptech/glide/load/f;
.super Ljava/lang/Object;
.source "Option.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final Od:Lcom/bumptech/glide/load/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Md:Lcom/bumptech/glide/load/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile Nd:[B

.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/e;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/f;->Od:Lcom/bumptech/glide/load/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/f$a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/f$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/bumptech/glide/load/f$a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->u(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/bumptech/glide/load/f;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/bumptech/glide/load/f;->defaultValue:Ljava/lang/Object;

    invoke-static {p3}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/bumptech/glide/load/f$a;

    iput-object p3, p0, Lcom/bumptech/glide/load/f;->Md:Lcom/bumptech/glide/load/f$a;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/bumptech/glide/load/f$a;)Lcom/bumptech/glide/load/f;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/load/f$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/f$a<",
            "TT;>;)",
            "Lcom/bumptech/glide/load/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/bumptech/glide/load/f;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/f$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/f;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/bumptech/glide/load/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/f;

    invoke-static {}, Lcom/bumptech/glide/load/f;->ak()Lcom/bumptech/glide/load/f$a;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/f;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/f$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/f$a;)Lcom/bumptech/glide/load/f;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/f$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/bumptech/glide/load/f$a<",
            "TT;>;)",
            "Lcom/bumptech/glide/load/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/f;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/f$a;)V

    return-object v0
.end method

.method private static ak()Lcom/bumptech/glide/load/f$a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/f$a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/f;->Od:Lcom/bumptech/glide/load/f$a;

    return-object v0
.end method

.method private bk()[B
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/f;->Nd:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/f;->key:Ljava/lang/String;

    sget-object v1, Lcom/bumptech/glide/load/c;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/f;->Nd:[B

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/f;->Nd:[B

    return-object p0
.end method

.method public static q(Ljava/lang/String;)Lcom/bumptech/glide/load/f;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/f;

    invoke-static {}, Lcom/bumptech/glide/load/f;->ak()Lcom/bumptech/glide/load/f$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/bumptech/glide/load/f;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/f$a;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/f;->Md:Lcom/bumptech/glide/load/f$a;

    invoke-direct {p0}, Lcom/bumptech/glide/load/f;->bk()[B

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/bumptech/glide/load/f$a;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/bumptech/glide/load/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/load/f;

    iget-object p0, p0, Lcom/bumptech/glide/load/f;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/bumptech/glide/load/f;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/f;->defaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/f;->key:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/load/f;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
