.class public final Lcom/bumptech/glide/load/engine/a/q$a;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final MEMORY_CACHE_TARGET_SCREENS:I = 0x2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final Sg:I

.field static final Tg:F = 0.4f

.field static final Ug:F = 0.33f

.field static final Vg:I = 0x400000


# instance fields
.field Mg:Landroid/app/ActivityManager;

.field Ng:F

.field Og:F

.field Pg:F

.field Qg:F

.field Rg:I

.field final context:Landroid/content/Context;

.field screenDimensions:Lcom/bumptech/glide/load/engine/a/q$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/bumptech/glide/load/engine/a/q$a;->Sg:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Ng:F

    sget v0, Lcom/bumptech/glide/load/engine/a/q$a;->Sg:I

    int-to-float v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Og:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Pg:F

    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Qg:F

    const/high16 v0, 0x400000

    iput v0, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Rg:I

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->context:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Mg:Landroid/app/ActivityManager;

    new-instance v0, Lcom/bumptech/glide/load/engine/a/q$b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/a/q$b;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/q$a;->screenDimensions:Lcom/bumptech/glide/load/engine/a/q$c;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Mg:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/a/q;->a(Landroid/app/ActivityManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Og:F

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/a/q;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/a/q;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/a/q;-><init>(Lcom/bumptech/glide/load/engine/a/q$a;)V

    return-object v0
.end method

.method public c(F)Lcom/bumptech/glide/load/engine/a/q$a;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Bitmap pool screens must be greater than or equal to 0"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iput p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Og:F

    return-object p0
.end method

.method public d(F)Lcom/bumptech/glide/load/engine/a/q$a;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Low memory max size multiplier must be between 0 and 1"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iput p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Qg:F

    return-object p0
.end method

.method public e(F)Lcom/bumptech/glide/load/engine/a/q$a;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Size multiplier must be between 0 and 1"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iput p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Pg:F

    return-object p0
.end method

.method public f(F)Lcom/bumptech/glide/load/engine/a/q$a;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Memory cache screens must be greater than or equal to 0"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iput p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Ng:F

    return-object p0
.end method

.method public s(I)Lcom/bumptech/glide/load/engine/a/q$a;
    .locals 0

    iput p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Rg:I

    return-object p0
.end method

.method setActivityManager(Landroid/app/ActivityManager;)Lcom/bumptech/glide/load/engine/a/q$a;
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Mg:Landroid/app/ActivityManager;

    return-object p0
.end method

.method setScreenDimensions(Lcom/bumptech/glide/load/engine/a/q$c;)Lcom/bumptech/glide/load/engine/a/q$a;
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->screenDimensions:Lcom/bumptech/glide/load/engine/a/q$c;

    return-object p0
.end method
