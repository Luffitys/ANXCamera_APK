.class public Lcom/bumptech/glide/request/f;
.super Ljava/lang/Object;
.source "RequestOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final FALLBACK:I = 0x2000

.field private static final PRIORITY:I = 0x8

.field private static final Qk:I = 0x2

.field private static final Rk:I = 0x4

.field private static final SIGNATURE:I = 0x400

.field private static final Sk:I = 0x10

.field private static final THEME:I = 0x8000

.field private static final Tk:I = 0x20

.field private static final UNSET:I = -0x1

.field private static final Uk:I = 0x40

.field private static final Vk:I = 0x80

.field private static final Wk:I = 0x100

.field private static final Xk:I = 0x200

.field private static final Yk:I = 0x1000

.field private static final Zk:I = 0x4000

.field private static final _k:I = 0x10000

.field private static final al:I = 0x20000

.field private static final bl:I = 0x40000

.field private static final cl:I = 0x80000

.field private static final dl:I = 0x100000

.field private static el:Lcom/bumptech/glide/request/f; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static fl:Lcom/bumptech/glide/request/f; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static gl:Lcom/bumptech/glide/request/f; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static hl:Lcom/bumptech/glide/request/f; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static il:Lcom/bumptech/glide/request/f; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static jl:Lcom/bumptech/glide/request/f; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static kl:Lcom/bumptech/glide/request/f; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static ll:Lcom/bumptech/glide/request/f; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static final qi:I = 0x800


# instance fields
.field private Af:Z

.field private Be:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private Ek:F

.field private Fe:Lcom/bumptech/glide/load/engine/o;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private Fk:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private Ge:Z

.field private Gk:I

.field private He:Z

.field private Hk:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private Ik:I

.field private Jk:I

.field private Kk:I

.field private Ld:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field private Lk:Z

.field private Mk:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private Nk:I

.field private Ok:Z

.field private Pk:Z

.field private Ye:Z

.field private fields:I

.field private isLocked:Z

.field private options:Lcom/bumptech/glide/load/g;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private priority:Lcom/bumptech/glide/Priority;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private signature:Lcom/bumptech/glide/load/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private theme:Landroid/content/res/Resources$Theme;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private yf:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bumptech/glide/request/f;->Ek:F

    sget-object v0, Lcom/bumptech/glide/load/engine/o;->AUTOMATIC:Lcom/bumptech/glide/load/engine/o;

    iput-object v0, p0, Lcom/bumptech/glide/request/f;->Fe:Lcom/bumptech/glide/load/engine/o;

    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/f;->priority:Lcom/bumptech/glide/Priority;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->yf:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/bumptech/glide/request/f;->Jk:I

    iput v1, p0, Lcom/bumptech/glide/request/f;->Kk:I

    invoke-static {}, Lcom/bumptech/glide/e/b;->obtain()Lcom/bumptech/glide/e/b;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/request/f;->signature:Lcom/bumptech/glide/load/c;

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->Lk:Z

    new-instance v1, Lcom/bumptech/glide/load/g;

    invoke-direct {v1}, Lcom/bumptech/glide/load/g;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/f;->options:Lcom/bumptech/glide/load/g;

    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/f;->Ld:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/request/f;->Be:Ljava/lang/Class;

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->He:Z

    return-void
.end method

.method public static C(I)Lcom/bumptech/glide/request/f;
    .locals 0
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0, p0}, Lcom/bumptech/glide/request/f;->m(II)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public static E(I)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/f;->D(I)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public static G(I)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/f;->F(I)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public static Qg()Lcom/bumptech/glide/request/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/f;->il:Lcom/bumptech/glide/request/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->Pg()Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->Og()Lcom/bumptech/glide/request/f;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/f;->il:Lcom/bumptech/glide/request/f;

    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/f;->il:Lcom/bumptech/glide/request/f;

    return-object v0
.end method

.method private Qk()Lcom/bumptech/glide/request/f;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->isLocked:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot modify locked RequestOptions, consider clone()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Sg()Lcom/bumptech/glide/request/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/f;->hl:Lcom/bumptech/glide/request/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->Rg()Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->Og()Lcom/bumptech/glide/request/f;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/f;->hl:Lcom/bumptech/glide/request/f;

    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/f;->hl:Lcom/bumptech/glide/request/f;

    return-object v0
.end method

.method public static Ug()Lcom/bumptech/glide/request/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/f;->jl:Lcom/bumptech/glide/request/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->Tg()Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->Og()Lcom/bumptech/glide/request/f;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/f;->jl:Lcom/bumptech/glide/request/f;

    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/f;->jl:Lcom/bumptech/glide/request/f;

    return-object v0
.end method

.method public static Yg()Lcom/bumptech/glide/request/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/f;->gl:Lcom/bumptech/glide/request/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->fitCenter()Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->Og()Lcom/bumptech/glide/request/f;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/f;->gl:Lcom/bumptech/glide/request/f;

    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/f;->gl:Lcom/bumptech/glide/request/f;

    return-object v0
.end method

.method public static a(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/f;->c(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/r;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/r;-><init>(Lcom/bumptech/glide/load/j;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p1, p2}, Lcom/bumptech/glide/request/f;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0, p2}, Lcom/bumptech/glide/request/f;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/r;->Eg()Lcom/bumptech/glide/load/j;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Lcom/bumptech/glide/request/f;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;

    const-class v0, Lcom/bumptech/glide/load/resource/gif/b;

    new-instance v1, Lcom/bumptech/glide/load/resource/gif/e;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/resource/gif/e;-><init>(Lcom/bumptech/glide/load/j;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/bumptech/glide/request/f;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/f;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/request/f;->He:Z

    return-object p0
.end method

.method private a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
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
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/j<",
            "TT;>;Z)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/request/f;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->Ld:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/request/f;->Lk:Z

    iget p2, p0, Lcom/bumptech/glide/request/f;->fields:I

    const/high16 v0, 0x10000

    or-int/2addr p2, v0

    iput p2, p0, Lcom/bumptech/glide/request/f;->fields:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/bumptech/glide/request/f;->He:Z

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/bumptech/glide/request/f;->fields:I

    const/high16 p3, 0x20000

    or-int/2addr p2, p3

    iput p2, p0, Lcom/bumptech/glide/request/f;->fields:I

    iput-boolean p1, p0, Lcom/bumptech/glide/request/f;->Ge:Z

    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/f;->a(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/bumptech/glide/load/engine/o;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/engine/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/engine/o;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/f<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public static f(J)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/f;->e(J)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/f;->f(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public static h(F)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/f;->g(F)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/f;->g(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method private isSet(I)Z
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-static {p0, p1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result p0

    return p0
.end method

.method public static j(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/f;->i(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/Class;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/f;->j(Ljava/lang/Class;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public static m(II)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/f;->l(II)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method private static q(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static r(Z)Lcom/bumptech/glide/request/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_1

    sget-object p0, Lcom/bumptech/glide/request/f;->el:Lcom/bumptech/glide/request/f;

    if-nez p0, :cond_0

    new-instance p0, Lcom/bumptech/glide/request/f;

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/f;->q(Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->Og()Lcom/bumptech/glide/request/f;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/request/f;->el:Lcom/bumptech/glide/request/f;

    :cond_0
    sget-object p0, Lcom/bumptech/glide/request/f;->el:Lcom/bumptech/glide/request/f;

    return-object p0

    :cond_1
    sget-object p0, Lcom/bumptech/glide/request/f;->fl:Lcom/bumptech/glide/request/f;

    if-nez p0, :cond_2

    new-instance p0, Lcom/bumptech/glide/request/f;

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/f;->q(Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->Og()Lcom/bumptech/glide/request/f;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/request/f;->fl:Lcom/bumptech/glide/request/f;

    :cond_2
    sget-object p0, Lcom/bumptech/glide/request/f;->fl:Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public static uh()Lcom/bumptech/glide/request/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/f;->ll:Lcom/bumptech/glide/request/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->Wg()Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->Og()Lcom/bumptech/glide/request/f;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/f;->ll:Lcom/bumptech/glide/request/f;

    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/f;->ll:Lcom/bumptech/glide/request/f;

    return-object v0
.end method

.method public static vh()Lcom/bumptech/glide/request/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/f;->kl:Lcom/bumptech/glide/request/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->Xg()Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->Og()Lcom/bumptech/glide/request/f;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/f;->kl:Lcom/bumptech/glide/request/f;

    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/f;->kl:Lcom/bumptech/glide/request/f;

    return-object v0
.end method

.method public static y(I)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/f;->x(I)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public static z(I)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/f;->error(I)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(I)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->A(I)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/f;->Nk:I

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public B(I)Lcom/bumptech/glide/request/f;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p1}, Lcom/bumptech/glide/request/f;->l(II)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public D(I)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->D(I)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/f;->Ik:I

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public F(I)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/model/a/b;->TIMEOUT:Lcom/bumptech/glide/load/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public Og()Lcom/bumptech/glide/request/f;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->isLocked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->lock()Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public Pg()Lcom/bumptech/glide/request/f;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->Ui:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/f;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public Rg()Lcom/bumptech/glide/request/f;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/k;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/k;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/f;->d(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public Tg()Lcom/bumptech/glide/request/f;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/f;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public Vg()Lcom/bumptech/glide/request/f;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/o;->aj:Lcom/bumptech/glide/load/f;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public Wg()Lcom/bumptech/glide/request/f;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/gif/g;->Wj:Lcom/bumptech/glide/load/f;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public Xg()Lcom/bumptech/glide/request/f;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->Xg()Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/f;->Ld:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lcom/bumptech/glide/request/f;->fields:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/f;->fields:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ge:Z

    iget v1, p0, Lcom/bumptech/glide/request/f;->fields:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/request/f;->fields:I

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->Lk:Z

    iget v0, p0, Lcom/bumptech/glide/request/f;->fields:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/f;->fields:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->He:Z

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public final Zg()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/request/f;->Gk:I

    return p0
.end method

.method public final _g()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/request/f;->Fk:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public a(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->a(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/f;->theme:Landroid/content/res/Resources$Theme;

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/e;->ti:Lcom/bumptech/glide/load/f;

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/Priority;

    iput-object p1, p0, Lcom/bumptech/glide/request/f;->priority:Lcom/bumptech/glide/Priority;

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/o;->Yi:Lcom/bumptech/glide/load/f;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/resource/gif/g;->Yi:Lcom/bumptech/glide/load/f;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/o;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/engine/o;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/engine/o;

    iput-object p1, p0, Lcom/bumptech/glide/request/f;->Fe:Lcom/bumptech/glide/load/engine/o;

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/f<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->options:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/g;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/load/g;

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->Wi:Lcom/bumptech/glide/load/f;

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method final a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/f;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/j<",
            "TT;>;)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/f;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # [Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/d;-><init>([Lcom/bumptech/glide/load/j;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public final ah()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/request/f;->Mk:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method final b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/f;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/f;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/f;->c(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/f;
    .locals 2
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/bumptech/glide/request/f;->Ek:F

    iput v0, p0, Lcom/bumptech/glide/request/f;->Ek:F

    :cond_1
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/bumptech/glide/request/f;->Pk:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->Pk:Z

    :cond_2
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/bumptech/glide/request/f;->Af:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->Af:Z

    :cond_3
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/bumptech/glide/request/f;->Fe:Lcom/bumptech/glide/load/engine/o;

    iput-object v0, p0, Lcom/bumptech/glide/request/f;->Fe:Lcom/bumptech/glide/load/engine/o;

    :cond_4
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/bumptech/glide/request/f;->priority:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/f;->priority:Lcom/bumptech/glide/Priority;

    :cond_5
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/bumptech/glide/request/f;->Fk:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/f;->Fk:Landroid/graphics/drawable/Drawable;

    :cond_6
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/bumptech/glide/request/f;->Gk:I

    iput v0, p0, Lcom/bumptech/glide/request/f;->Gk:I

    :cond_7
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/bumptech/glide/request/f;->Hk:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/f;->Hk:Landroid/graphics/drawable/Drawable;

    :cond_8
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lcom/bumptech/glide/request/f;->Ik:I

    iput v0, p0, Lcom/bumptech/glide/request/f;->Ik:I

    :cond_9
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Lcom/bumptech/glide/request/f;->yf:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->yf:Z

    :cond_a
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p1, Lcom/bumptech/glide/request/f;->Kk:I

    iput v0, p0, Lcom/bumptech/glide/request/f;->Kk:I

    iget v0, p1, Lcom/bumptech/glide/request/f;->Jk:I

    iput v0, p0, Lcom/bumptech/glide/request/f;->Jk:I

    :cond_b
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/bumptech/glide/request/f;->signature:Lcom/bumptech/glide/load/c;

    iput-object v0, p0, Lcom/bumptech/glide/request/f;->signature:Lcom/bumptech/glide/load/c;

    :cond_c
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/bumptech/glide/request/f;->Be:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/request/f;->Be:Ljava/lang/Class;

    :cond_d
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/bumptech/glide/request/f;->Mk:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/f;->Mk:Landroid/graphics/drawable/Drawable;

    :cond_e
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p1, Lcom/bumptech/glide/request/f;->Nk:I

    iput v0, p0, Lcom/bumptech/glide/request/f;->Nk:I

    :cond_f
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const v1, 0x8000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/bumptech/glide/request/f;->theme:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/bumptech/glide/request/f;->theme:Landroid/content/res/Resources$Theme;

    :cond_10
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p1, Lcom/bumptech/glide/request/f;->Lk:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->Lk:Z

    :cond_11
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p1, Lcom/bumptech/glide/request/f;->Ge:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ge:Z

    :cond_12
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->Ld:Ljava/util/Map;

    iget-object v1, p1, Lcom/bumptech/glide/request/f;->Ld:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lcom/bumptech/glide/request/f;->He:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->He:Z

    :cond_13
    iget v0, p1, Lcom/bumptech/glide/request/f;->fields:I

    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/f;->q(II)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p1, Lcom/bumptech/glide/request/f;->Ye:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ye:Z

    :cond_14
    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Lk:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->Ld:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lcom/bumptech/glide/request/f;->fields:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/f;->fields:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ge:Z

    iget v0, p0, Lcom/bumptech/glide/request/f;->fields:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/f;->fields:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->He:Z

    :cond_15
    iget v0, p0, Lcom/bumptech/glide/request/f;->fields:I

    iget v1, p1, Lcom/bumptech/glide/request/f;->fields:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/f;->fields:I

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->options:Lcom/bumptech/glide/load/g;

    iget-object p1, p1, Lcom/bumptech/glide/request/f;->options:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/g;->b(Lcom/bumptech/glide/load/g;)V

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public b(Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/j<",
            "TT;>;)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/f;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public final bh()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/request/f;->Nk:I

    return p0
.end method

.method public c(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/j;Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/bumptech/glide/request/f;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/f;

    new-instance v1, Lcom/bumptech/glide/load/g;

    invoke-direct {v1}, Lcom/bumptech/glide/load/g;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/f;->options:Lcom/bumptech/glide/load/g;

    iget-object v1, v0, Lcom/bumptech/glide/request/f;->options:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lcom/bumptech/glide/request/f;->options:Lcom/bumptech/glide/load/g;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/g;->b(Lcom/bumptech/glide/load/g;)V

    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/f;->Ld:Ljava/util/Map;

    iget-object v1, v0, Lcom/bumptech/glide/request/f;->Ld:Ljava/util/Map;

    iget-object p0, p0, Lcom/bumptech/glide/request/f;->Ld:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/bumptech/glide/request/f;->isLocked:Z

    iput-boolean p0, v0, Lcom/bumptech/glide/request/f;->Ok:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public final dh()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/f;->Ye:Z

    return p0
.end method

.method public e(J)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->Bj:Lcom/bumptech/glide/load/f;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public final eg()Lcom/bumptech/glide/load/engine/o;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/request/f;->Fe:Lcom/bumptech/glide/load/engine/o;

    return-object p0
.end method

.method public final eh()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/request/f;->Jk:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/bumptech/glide/request/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/request/f;

    iget v0, p1, Lcom/bumptech/glide/request/f;->Ek:F

    iget v2, p0, Lcom/bumptech/glide/request/f;->Ek:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/f;->Gk:I

    iget v2, p1, Lcom/bumptech/glide/request/f;->Gk:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->Fk:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/f;->Fk:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/l;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/f;->Ik:I

    iget v2, p1, Lcom/bumptech/glide/request/f;->Ik:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->Hk:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/f;->Hk:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/l;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/f;->Nk:I

    iget v2, p1, Lcom/bumptech/glide/request/f;->Nk:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->Mk:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/f;->Mk:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/l;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->yf:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/f;->yf:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/f;->Jk:I

    iget v2, p1, Lcom/bumptech/glide/request/f;->Jk:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/f;->Kk:I

    iget v2, p1, Lcom/bumptech/glide/request/f;->Kk:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ge:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/f;->Ge:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Lk:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/f;->Lk:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Pk:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/f;->Pk:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ye:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/f;->Ye:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->Fe:Lcom/bumptech/glide/load/engine/o;

    iget-object v2, p1, Lcom/bumptech/glide/request/f;->Fe:Lcom/bumptech/glide/load/engine/o;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->priority:Lcom/bumptech/glide/Priority;

    iget-object v2, p1, Lcom/bumptech/glide/request/f;->priority:Lcom/bumptech/glide/Priority;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->options:Lcom/bumptech/glide/load/g;

    iget-object v2, p1, Lcom/bumptech/glide/request/f;->options:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->Ld:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/f;->Ld:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->Be:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/request/f;->Be:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->signature:Lcom/bumptech/glide/load/c;

    iget-object v2, p1, Lcom/bumptech/glide/request/f;->signature:Lcom/bumptech/glide/load/c;

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/l;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/f;->theme:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lcom/bumptech/glide/request/f;->theme:Landroid/content/res/Resources$Theme;

    invoke-static {p0, p1}, Lcom/bumptech/glide/util/l;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public error(I)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->error(I)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/f;->Gk:I

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public f(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->f(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/f;->Fk:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public final fh()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/request/f;->Kk:I

    return p0
.end method

.method public fitCenter()Lcom/bumptech/glide/request/f;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/s;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/s;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/f;->d(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public g(F)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->g(F)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iput p1, p0, Lcom/bumptech/glide/request/f;->Ek:F

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->g(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/c;

    iput-object p1, p0, Lcom/bumptech/glide/request/f;->signature:Lcom/bumptech/glide/load/c;

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public final getOptions()Lcom/bumptech/glide/load/g;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/request/f;->options:Lcom/bumptech/glide/load/g;

    return-object p0
.end method

.method public final getPriority()Lcom/bumptech/glide/Priority;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/request/f;->priority:Lcom/bumptech/glide/Priority;

    return-object p0
.end method

.method public final getSignature()Lcom/bumptech/glide/load/c;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/request/f;->signature:Lcom/bumptech/glide/load/c;

    return-object p0
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/request/f;->theme:Landroid/content/res/Resources$Theme;

    return-object p0
.end method

.method public final getTransformations()Ljava/util/Map;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/j<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/request/f;->Ld:Ljava/util/Map;

    return-object p0
.end method

.method public final gh()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/request/f;->Hk:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public h(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->h(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/f;->Mk:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/request/f;->Ek:F

    invoke-static {v0}, Lcom/bumptech/glide/util/l;->hashCode(F)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/f;->Gk:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->n(II)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/f;->Fk:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->a(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/f;->Ik:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->n(II)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/f;->Hk:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->a(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/f;->Nk:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->n(II)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/f;->Mk:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/f;->yf:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->d(ZI)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/f;->Jk:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->n(II)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/f;->Kk:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->n(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/f;->Ge:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->d(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/f;->Lk:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->d(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/f;->Pk:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->d(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/f;->Ye:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->d(ZI)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/f;->Fe:Lcom/bumptech/glide/load/engine/o;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/f;->priority:Lcom/bumptech/glide/Priority;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/f;->options:Lcom/bumptech/glide/load/g;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/f;->Ld:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/f;->Be:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/f;->signature:Lcom/bumptech/glide/load/c;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/l;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object p0, p0, Lcom/bumptech/glide/request/f;->theme:Landroid/content/res/Resources$Theme;

    invoke-static {p0, v0}, Lcom/bumptech/glide/util/l;->a(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public final hh()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/request/f;->Ik:I

    return p0
.end method

.method public i(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->i(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/f;->Hk:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public final ih()F
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/request/f;->Ek:F

    return p0
.end method

.method public final isLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/f;->isLocked:Z

    return p0
.end method

.method public j(Ljava/lang/Class;)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/request/f;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->j(Ljava/lang/Class;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/bumptech/glide/request/f;->Be:Ljava/lang/Class;

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method jg()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/f;->He:Z

    return p0
.end method

.method public final jh()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/f;->Af:Z

    return p0
.end method

.method public final kh()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/f;->Pk:Z

    return p0
.end method

.method public l(II)Lcom/bumptech/glide/request/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/f;->l(II)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/f;->Kk:I

    iput p2, p0, Lcom/bumptech/glide/request/f;->Jk:I

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method protected lh()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    return p0
.end method

.method public lock()Lcom/bumptech/glide/request/f;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->isLocked:Z

    return-object p0
.end method

.method public final mh()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/f;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public final nh()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/f;->yf:Z

    return p0
.end method

.method public final oh()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/f;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public p(Z)Lcom/bumptech/glide/request/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->p(Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/f;->Ye:Z

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public final ph()Z
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/f;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public q(Z)Lcom/bumptech/glide/request/f;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/request/f;->q(Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/bumptech/glide/request/f;->yf:Z

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public final qh()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/f;->Lk:Z

    return p0
.end method

.method public final rh()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/f;->Ge:Z

    return p0
.end method

.method public s(Z)Lcom/bumptech/glide/request/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->s(Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/f;->Af:Z

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public final sh()Z
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/f;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public t(Z)Lcom/bumptech/glide/request/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->Ok:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->t(Z)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0

    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/f;->Pk:Z

    iget p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/f;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->Qk()Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public final th()Z
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/f;->Kk:I

    iget p0, p0, Lcom/bumptech/glide/request/f;->Jk:I

    invoke-static {v0, p0}, Lcom/bumptech/glide/util/l;->o(II)Z

    move-result p0

    return p0
.end method

.method public wh()Lcom/bumptech/glide/request/f;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->Ui:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public x(I)Lcom/bumptech/glide/request/f;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/e;->ri:Lcom/bumptech/glide/load/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public xh()Lcom/bumptech/glide/request/f;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/k;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/k;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/f;->c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public yh()Lcom/bumptech/glide/request/f;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->Ui:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method

.method public final z()Ljava/lang/Class;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/request/f;->Be:Ljava/lang/Class;

    return-object p0
.end method

.method public zh()Lcom/bumptech/glide/request/f;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/s;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/s;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/f;->c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object p0

    return-object p0
.end method
