.class public Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oO;
.implements Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;
.implements Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOO0;


# instance fields
.field private OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final OooO00o:Landroid/graphics/Path;

.field private final OooO0O0:Landroid/graphics/Paint;

.field private final OooO0OO:Lcom/airbnb/lottie/model/layer/OooO0OO;

.field private final OooO0Oo:Ljava/lang/String;

.field private final OooO0o:Ljava/util/List;

.field private final OooO0o0:Z

.field private final OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private final OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private final OooOO0:Lcom/airbnb/lottie/o000oOoO;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;Lcom/airbnb/lottie/model/content/OooOO0o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO00o:Landroid/graphics/Path;

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO00o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/o00O0O/OooO00o;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0O0:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0o:Ljava/util/List;

    iput-object p2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0OO:Lcom/airbnb/lottie/model/layer/OooO0OO;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0Oo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0o0:Z

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooOO0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0O0()Lcom/airbnb/lottie/model/OooOO0/OooO00o;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0o0()Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0OO()Landroid/graphics/Path$FillType;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0O0()Lcom/airbnb/lottie/model/OooOO0/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooO00o;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0o0()Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooOO0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->invalidateSelf()V

    return-void
.end method

.method public OooO0O0(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o0;

    instance-of v1, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0o:Ljava/util/List;

    check-cast v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public OooO0OO(Lcom/airbnb/lottie/model/OooO0o0;ILjava/util/List;Lcom/airbnb/lottie/model/OooO0o0;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooOO0o(Lcom/airbnb/lottie/model/OooO0o0;ILjava/util/List;Lcom/airbnb/lottie/model/OooO0o0;Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOO0;)V

    return-void
.end method

.method public OooO0Oo(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object p3, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO00o:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;

    invoke-interface {v2}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public OooO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    iget-boolean v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0o0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FillContent#draw"

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0O0:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    check-cast v2, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oo;

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oo;->OooOOOO()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p3, v2

    mul-float/2addr p3, v1

    float-to-int p3, p3

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0O0:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {p3, v3, v2}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooO0OO(III)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0O0:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    iget-object p3, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    :goto_0
    iget-object p3, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0o:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_2

    iget-object p3, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO00o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0o:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;

    invoke-interface {v1}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO00o:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0O0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method public OooO0oO(Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V
    .locals 1
    .param p2    # Lcom/airbnb/lottie/o00ooo/OooOO0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooO00o:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOOO0(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooO0Oo:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOoo:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;-><init>(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0OO:Lcom/airbnb/lottie/model/layer/OooO0OO;

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;->OooO0Oo:Ljava/lang/String;

    return-object p0
.end method
