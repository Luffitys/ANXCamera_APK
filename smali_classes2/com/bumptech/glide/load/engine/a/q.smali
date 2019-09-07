.class public final Lcom/bumptech/glide/load/engine/a/q;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/a/q$b;,
        Lcom/bumptech/glide/load/engine/a/q$a;,
        Lcom/bumptech/glide/load/engine/a/q$c;
    }
.end annotation


# static fields
.field static final BYTES_PER_ARGB_8888_PIXEL:I = 0x4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MemorySizeCalculator"

.field private static final _g:I = 0x2


# instance fields
.field private final Xg:I

.field private final Yg:I

.field private final Zg:I

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/a/q$a;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/bumptech/glide/load/engine/a/q$a;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/q;->context:Landroid/content/Context;

    iget-object v0, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Mg:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/a/q;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Rg:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Rg:I

    :goto_0
    iput v0, p0, Lcom/bumptech/glide/load/engine/a/q;->Zg:I

    iget-object v0, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Mg:Landroid/app/ActivityManager;

    iget v1, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Pg:F

    iget v2, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Qg:F

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/a/q;->a(Landroid/app/ActivityManager;FF)I

    move-result v0

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/a/q$a;->screenDimensions:Lcom/bumptech/glide/load/engine/a/q$c;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/a/q$c;->A()I

    move-result v1

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/a/q$a;->screenDimensions:Lcom/bumptech/glide/load/engine/a/q$c;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/a/q$c;->p()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iget v2, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Og:F

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Ng:F

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v3, p0, Lcom/bumptech/glide/load/engine/a/q;->Zg:I

    sub-int v3, v0, v3

    add-int v4, v1, v2

    if-gt v4, v3, :cond_1

    iput v1, p0, Lcom/bumptech/glide/load/engine/a/q;->Yg:I

    iput v2, p0, Lcom/bumptech/glide/load/engine/a/q;->Xg:I

    goto :goto_1

    :cond_1
    int-to-float v1, v3

    iget v2, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Og:F

    iget v3, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Ng:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/bumptech/glide/load/engine/a/q;->Yg:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Og:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/bumptech/glide/load/engine/a/q;->Xg:I

    :goto_1
    const/4 v1, 0x3

    const-string v2, "MemorySizeCalculator"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculation complete, Calculated memory cache size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/load/engine/a/q;->Yg:I

    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/a/q;->R(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pool size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/load/engine/a/q;->Xg:I

    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/a/q;->R(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", byte array size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/load/engine/a/q;->Zg:I

    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/a/q;->R(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", memory class limited? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v4, v0, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", max size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a/q;->R(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", memoryClass: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Mg:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isLowMemoryDevice: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Mg:Landroid/app/ActivityManager;

    invoke-static {p0}, Lcom/bumptech/glide/load/engine/a/q;->a(Landroid/app/ActivityManager;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private R(I)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/a/q;->context:Landroid/content/Context;

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/app/ActivityManager;FF)I
    .locals 1

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    invoke-static {p0}, Lcom/bumptech/glide/load/engine/a/q;->a(Landroid/app/ActivityManager;)Z

    move-result p0

    int-to-float v0, v0

    if-eqz p0, :cond_0

    move p1, p2

    :cond_0
    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static a(Landroid/app/ActivityManager;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public vg()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/engine/a/q;->Zg:I

    return p0
.end method

.method public wg()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/engine/a/q;->Xg:I

    return p0
.end method

.method public xg()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/engine/a/q;->Yg:I

    return p0
.end method
