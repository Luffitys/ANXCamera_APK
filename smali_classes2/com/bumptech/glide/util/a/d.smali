.class public final Lcom/bumptech/glide/util/a/d;
.super Ljava/lang/Object;
.source "FactoryPools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/a/d$b;,
        Lcom/bumptech/glide/util/a/d$c;,
        Lcom/bumptech/glide/util/a/d$d;,
        Lcom/bumptech/glide/util/a/d$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_POOL_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "FactoryPools"

.field private static final gm:Lcom/bumptech/glide/util/a/d$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/a/d$d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/util/a/a;

    invoke-direct {v0}, Lcom/bumptech/glide/util/a/a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/util/a/d;->gm:Lcom/bumptech/glide/util/a/d$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static I(I)Landroid/support/v4/util/Pools$Pool;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    new-instance p0, Lcom/bumptech/glide/util/a/b;

    invoke-direct {p0}, Lcom/bumptech/glide/util/a/b;-><init>()V

    new-instance v1, Lcom/bumptech/glide/util/a/c;

    invoke-direct {v1}, Lcom/bumptech/glide/util/a/c;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/util/a/d;->a(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/a/d$a;Lcom/bumptech/glide/util/a/d$d;)Landroid/support/v4/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method public static Lh()Landroid/support/v4/util/Pools$Pool;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/bumptech/glide/util/a/d;->I(I)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILcom/bumptech/glide/util/a/d$a;)Landroid/support/v4/util/Pools$Pool;
    .locals 1
    .param p1    # Lcom/bumptech/glide/util/a/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bumptech/glide/util/a/d$c;",
            ">(I",
            "Lcom/bumptech/glide/util/a/d$a<",
            "TT;>;)",
            "Landroid/support/v4/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    invoke-direct {v0, p0}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    invoke-static {v0, p1}, Lcom/bumptech/glide/util/a/d;->a(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/a/d$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/a/d$a;)Landroid/support/v4/util/Pools$Pool;
    .locals 1
    .param p0    # Landroid/support/v4/util/Pools$Pool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/util/a/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bumptech/glide/util/a/d$c;",
            ">(",
            "Landroid/support/v4/util/Pools$Pool<",
            "TT;>;",
            "Lcom/bumptech/glide/util/a/d$a<",
            "TT;>;)",
            "Landroid/support/v4/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/a/d;->el()Lcom/bumptech/glide/util/a/d$d;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/util/a/d;->a(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/a/d$a;Lcom/bumptech/glide/util/a/d$d;)Landroid/support/v4/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/a/d$a;Lcom/bumptech/glide/util/a/d$d;)Landroid/support/v4/util/Pools$Pool;
    .locals 1
    .param p0    # Landroid/support/v4/util/Pools$Pool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/util/a/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/util/a/d$d;
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
            "Landroid/support/v4/util/Pools$Pool<",
            "TT;>;",
            "Lcom/bumptech/glide/util/a/d$a<",
            "TT;>;",
            "Lcom/bumptech/glide/util/a/d$d<",
            "TT;>;)",
            "Landroid/support/v4/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/util/a/d$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/util/a/d$b;-><init>(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/a/d$a;Lcom/bumptech/glide/util/a/d$d;)V

    return-object v0
.end method

.method public static b(ILcom/bumptech/glide/util/a/d$a;)Landroid/support/v4/util/Pools$Pool;
    .locals 1
    .param p1    # Lcom/bumptech/glide/util/a/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bumptech/glide/util/a/d$c;",
            ">(I",
            "Lcom/bumptech/glide/util/a/d$a<",
            "TT;>;)",
            "Landroid/support/v4/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    invoke-static {v0, p1}, Lcom/bumptech/glide/util/a/d;->a(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/a/d$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method private static el()Lcom/bumptech/glide/util/a/d$d;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/util/a/d$d<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/util/a/d;->gm:Lcom/bumptech/glide/util/a/d$d;

    return-object v0
.end method
