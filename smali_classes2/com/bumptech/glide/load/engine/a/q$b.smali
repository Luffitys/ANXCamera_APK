.class final Lcom/bumptech/glide/load/engine/a/q$b;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final Wg:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/q$b;->Wg:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/a/q$b;->Wg:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public p()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/a/q$b;->Wg:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method
