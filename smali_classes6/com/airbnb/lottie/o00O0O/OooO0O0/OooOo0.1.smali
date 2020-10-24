.class public Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oO;
.implements Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;
.implements Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0o;
.implements Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;
.implements Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOO0;


# instance fields
.field private final OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

.field private final OooO00o:Landroid/graphics/Matrix;

.field private final OooO0O0:Landroid/graphics/Path;

.field private final OooO0OO:Lcom/airbnb/lottie/o000oOoO;

.field private final OooO0Oo:Lcom/airbnb/lottie/model/layer/OooO0OO;

.field private final OooO0o:Z

.field private final OooO0o0:Ljava/lang/String;

.field private final OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private final OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;Lcom/airbnb/lottie/model/content/OooOO0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0O0:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0OO:Lcom/airbnb/lottie/o000oOoO;

    iput-object p2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0Oo:Lcom/airbnb/lottie/model/layer/OooO0OO;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOO0;->OooO0OO()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0o0:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOO0;->OooO0o()Z

    move-result p1

    iput-boolean p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0o:Z

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOO0;->OooO0O0()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooO0O0;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOO0;->OooO0Oo()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooO0O0;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOO0;->OooO0o0()Lcom/airbnb/lottie/model/OooOO0/OooOO0o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO0O0()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO00o(Lcom/airbnb/lottie/model/layer/OooO0OO;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0O0(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0OO:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->invalidateSelf()V

    return-void
.end method

.method public OooO0O0(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;->OooO0O0(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public OooO0OO(Lcom/airbnb/lottie/model/OooO0o0;ILjava/util/List;Lcom/airbnb/lottie/model/OooO0o0;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooOO0o(Lcom/airbnb/lottie/model/OooO0o0;ILjava/util/List;Lcom/airbnb/lottie/model/OooO0o0;Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOO0;)V

    return-void
.end method

.method public OooO0Oo(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;->OooO0Oo(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public OooO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {v4}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o0()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oO(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    invoke-static {v2, v4, v7}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooOO0(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    iget-object v7, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    float-to-int v5, v5

    invoke-virtual {v6, p1, v7, v5}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;->OooO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO0o0(Ljava/util/ListIterator;)V
    .locals 8

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0OO:Lcom/airbnb/lottie/o000oOoO;

    iget-object v3, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0Oo:Lcom/airbnb/lottie/model/layer/OooO0OO;

    iget-boolean v5, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0o:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;Ljava/lang/String;ZLjava/util/List;Lcom/airbnb/lottie/model/OooOO0/OooOO0o;)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    return-void
.end method

.method public OooO0oO(Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V
    .locals 1
    .param p2    # Lcom/airbnb/lottie/o00ooo/OooOO0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0OO(Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOOo0:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOOO0(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOOo:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0o0:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 6

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0O0:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oO(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0O0:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0;->OooO0O0:Landroid/graphics/Path;

    return-object p0
.end method
