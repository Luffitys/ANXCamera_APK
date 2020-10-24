.class public Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;
.implements Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0o;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final OooO00o:Landroid/graphics/Path;

.field private final OooO0O0:Landroid/graphics/Path;

.field private final OooO0OO:Landroid/graphics/Path;

.field private final OooO0Oo:Ljava/lang/String;

.field private final OooO0o:Lcom/airbnb/lottie/model/content/OooO0oO;

.field private final OooO0o0:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/content/OooO0oO;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO00o:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0O0:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0OO:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0o0:Ljava/util/List;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/OooO0oO;->OooO0OO()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0Oo:Ljava/lang/String;

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0o:Lcom/airbnb/lottie/model/content/OooO0oO;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Merge paths are not supported pre-KitKat."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private OooO00o()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0o0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0OO:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0o0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;

    invoke-interface {v2}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private OooO0OO(Landroid/graphics/Path$Op;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0O0:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lt v0, v1, :cond_2

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0o0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;

    instance-of v3, v2, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;->OooO()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;

    invoke-interface {v5}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;->OooOO0()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v6, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0O0:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0O0:Landroid/graphics/Path;

    invoke-interface {v2}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0o0:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;

    instance-of v2, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;->OooO()Ljava/util/List;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;

    invoke-interface {v3}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;->OooOO0()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v4, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO00o:Landroid/graphics/Path;

    invoke-interface {v0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0OO:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO00o:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0O0:Landroid/graphics/Path;

    invoke-virtual {v0, v1, p0, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method


# virtual methods
.method public OooO0O0(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0o0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0o0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;

    invoke-interface {v1, p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o0;->OooO0O0(Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO0o0(Ljava/util/ListIterator;)V
    .locals 2

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o0;

    instance-of v1, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0o0:Ljava/util/List;

    check-cast v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0Oo:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0OO:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0o:Lcom/airbnb/lottie/model/content/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/OooO0oO;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0OO:Landroid/graphics/Path;

    return-object p0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOO;->OooO00o:[I

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0o:Lcom/airbnb/lottie/model/content/OooO0oO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/OooO0oO;->OooO0O0()Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    :goto_0
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0OO(Landroid/graphics/Path$Op;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO00o()V

    :goto_1
    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;->OooO0OO:Landroid/graphics/Path;

    return-object p0
.end method
