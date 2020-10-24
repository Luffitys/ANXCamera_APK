.class public abstract Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final OooO00o:Ljava/util/List;

.field private OooO0O0:Z

.field private final OooO0OO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;

.field private OooO0Oo:F

.field private OooO0o:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected OooO0o0:Lcom/airbnb/lottie/o00ooo/OooOO0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooO0oO:F

.field private OooO0oo:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0O0:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0Oo:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oO:F

    iput v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo:F

    invoke-static {p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOOO(Ljava/util/List;)Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0OO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;

    return-void
.end method

.method private OooO0oO()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oO:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0OO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;

    invoke-interface {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;->OooO0o0()F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oO:F

    :cond_0
    iget p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oO:F

    return p0
.end method

.method private static OooOOO(Ljava/util/List;)Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0OO;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0OO;-><init>(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO00o;)V

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0o;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0o;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0o0;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0o0;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method abstract OooO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Ljava/lang/Object;
.end method

.method public OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected OooO0O0()Lcom/airbnb/lottie/o00ooo/OooO00o;
    .locals 1

    const-string v0, "BaseKeyframeAnimation#getCurrentKeyframe"

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0OO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;

    invoke-interface {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;->OooO0O0()Lcom/airbnb/lottie/o00ooo/OooO00o;

    move-result-object p0

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-object p0
.end method

.method OooO0OO()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0OO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;

    invoke-interface {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;->OooO0Oo()F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo:F

    :cond_0
    iget p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo:F

    return p0
.end method

.method protected OooO0Oo()F
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0O0()Lcom/airbnb/lottie/o00ooo/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0oo()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, v0, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0Oo:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o0()F

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method public OooO0o()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0Oo:F

    return p0
.end method

.method OooO0o0()F
    .locals 3

    iget-boolean v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0O0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0O0()Lcom/airbnb/lottie/o00ooo/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0oo()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0Oo:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0o0()F

    move-result v1

    sub-float/2addr p0, v1

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0O0()F

    move-result v1

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0o0()F

    move-result v0

    sub-float/2addr v1, v0

    div-float/2addr p0, v1

    return p0
.end method

.method public OooO0oo()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0Oo()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o0:Lcom/airbnb/lottie/o00ooo/OooOO0;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0OO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;

    invoke-interface {v1, v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;->OooO00o(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o:Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0O0()Lcom/airbnb/lottie/o00ooo/OooO00o;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o:Ljava/lang/Object;

    return-object v0
.end method

.method public OooOO0()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;

    invoke-interface {v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;->OooO00o()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooOO0O()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0O0:Z

    return-void
.end method

.method public OooOO0o(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0OO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;

    invoke-interface {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oO()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oO()F

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0OO()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0OO()F

    move-result p1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0Oo:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iput p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0Oo:F

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0OO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;

    invoke-interface {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;->OooO0OO(F)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0()V

    :cond_4
    return-void
.end method

.method public OooOOO0(Lcom/airbnb/lottie/o00ooo/OooOO0;)V
    .locals 2
    .param p1    # Lcom/airbnb/lottie/o00ooo/OooOO0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o0:Lcom/airbnb/lottie/o00ooo/OooOO0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO0OO(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    :cond_0
    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o0:Lcom/airbnb/lottie/o00ooo/OooOO0;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO0OO(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    :cond_1
    return-void
.end method
