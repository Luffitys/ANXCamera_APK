.class public Lcom/airbnb/lottie/model/layer/OooO0o0;
.super Lcom/airbnb/lottie/model/layer/OooO0OO;
.source ""


# instance fields
.field private OooOoOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final OooOoo:Landroid/graphics/RectF;

.field private final OooOoo0:Ljava/util/List;

.field private final OooOooO:Landroid/graphics/RectF;

.field private OooOooo:Landroid/graphics/Paint;

.field private Oooo000:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Oooo00O:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0oO;Ljava/util/List;Lcom/airbnb/lottie/OooOOOO;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/OooO0OO;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0oO;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo0:Ljava/util/List;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOooO:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOooo:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooOOoo()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/OooOO0/OooO0O0;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    :goto_0
    new-instance p2, Landroidx/collection/LongSparseArray;

    invoke-virtual {p4}, Lcom/airbnb/lottie/OooOOOO;->OooOO0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object v3, v0

    :goto_1
    const/4 v4, 0x0

    if-ltz v1, :cond_4

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-static {v5, p1, p4}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo00(Lcom/airbnb/lottie/model/layer/OooO0oO;Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/layer/OooO0OO;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0()Lcom/airbnb/lottie/model/layer/OooO0oO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO0O0()J

    move-result-wide v7

    invoke-virtual {p2, v7, v8, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOooO(Lcom/airbnb/lottie/model/layer/OooO0OO;)V

    move-object v3, v0

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo0:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v4, Lcom/airbnb/lottie/model/layer/OooO0Oo;->OooO00o:[I

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO0o()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v6

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    :goto_3
    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p0

    if-ge v4, p0, :cond_7

    invoke-virtual {p2, v4}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/layer/OooO0OO;

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0()Lcom/airbnb/lottie/model/layer/OooO0oO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO0oo()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/model/layer/OooO0OO;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOooo(Lcom/airbnb/lottie/model/layer/OooO0OO;)V

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method public OooO0Oo(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0Oo(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo0:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/layer/OooO0OO;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO0:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0Oo(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO0oO(Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V
    .locals 1
    .param p2    # Lcom/airbnb/lottie/o00ooo/OooOO0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oO(Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOoOO:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;-><init>(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    :cond_1
    :goto_0
    return-void
.end method

.method OooOOoo(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    const-string v0, "CompositionLayer#draw"

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOooO:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooOO0()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOooO:Landroid/graphics/RectF;

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/o000oOoO;->Oooo0o0()Z

    move-result v1

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    if-eq p3, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOooo:Landroid/graphics/Paint;

    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOooO:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOooo:Landroid/graphics/Paint;

    invoke-static {p1, v4, v5}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooOOO(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_1
    if-eqz v1, :cond_2

    move p3, v2

    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_2
    if-ltz v1, :cond_5

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOooO:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOooO:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/layer/OooO0OO;

    invoke-virtual {v2, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method protected OooOoo(Lcom/airbnb/lottie/model/OooO0o0;ILjava/util/List;Lcom/airbnb/lottie/model/OooO0o0;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/layer/OooO0OO;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO(Lcom/airbnb/lottie/model/OooO0o0;ILjava/util/List;Lcom/airbnb/lottie/model/OooO0o0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Oooo0()Z
    .locals 5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->Oooo00O:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo0:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/layer/OooO0OO;

    instance-of v4, v3, Lcom/airbnb/lottie/model/layer/OooO;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0O()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->Oooo00O:Ljava/lang/Boolean;

    return v2

    :cond_0
    instance-of v4, v3, Lcom/airbnb/lottie/model/layer/OooO0o0;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/airbnb/lottie/model/layer/OooO0o0;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/OooO0o0;->Oooo0()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->Oooo00O:Ljava/lang/Boolean;

    return v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->Oooo00O:Ljava/lang/Boolean;

    :cond_3
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->Oooo00O:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public Oooo000(F)V
    .locals 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->Oooo000(F)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p1}, Lcom/airbnb/lottie/o000oOoO;->OooOOo0()Lcom/airbnb/lottie/OooOOOO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/OooOOOO;->OooO0o0()F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO00o()Lcom/airbnb/lottie/OooOOOO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/OooOOOO;->OooOOOo()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO00o()Lcom/airbnb/lottie/OooOOOO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/OooOOOO;->OooO0oo()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    div-float p1, v1, p1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooOo00()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooOo00()F

    move-result v0

    div-float/2addr p1, v0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooOOOo()F

    move-result v0

    sub-float/2addr p1, v0

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/layer/OooO0OO;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->Oooo000(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public Oooo0O0()Z
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->Oooo000:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0o()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->Oooo000:Ljava/lang/Boolean;

    return v2

    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->OooOoo0:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/layer/OooO0OO;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0o()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->Oooo000:Ljava/lang/Boolean;

    return v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->Oooo000:Ljava/lang/Boolean;

    :cond_3
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0o0;->Oooo000:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
