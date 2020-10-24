.class public Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;
.implements Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;
.implements Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOO0;


# static fields
.field private static final OooO:F = 0.55228f


# instance fields
.field private final OooO00o:Landroid/graphics/Path;

.field private final OooO0O0:Ljava/lang/String;

.field private final OooO0OO:Lcom/airbnb/lottie/o000oOoO;

.field private final OooO0Oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private final OooO0o:Lcom/airbnb/lottie/model/content/OooO00o;

.field private final OooO0o0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;

.field private OooO0oo:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;Lcom/airbnb/lottie/model/content/OooO00o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;

    invoke-direct {v0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO00o;->OooO0O0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0O0:Ljava/lang/String;

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0OO:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO00o;->OooO0Oo()Lcom/airbnb/lottie/model/OooOO0/OooO0o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooO0o;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0Oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO00o;->OooO0OO()Lcom/airbnb/lottie/model/OooOO0/OooOOO0;

    move-result-object p1

    invoke-interface {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOOO0;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0o0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    iput-object p3, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0o:Lcom/airbnb/lottie/model/content/OooO00o;

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0Oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0o0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0Oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0o0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    return-void
.end method

.method private OooO0o0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0oo:Z

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0OO:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0o0()V

    return-void
.end method

.method public OooO0O0(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o0;

    instance-of v1, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo;->OooO()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->OooO00o:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo;->OooO0OO(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public OooO0OO(Lcom/airbnb/lottie/model/OooO0o0;ILjava/util/List;Lcom/airbnb/lottie/model/OooO0o0;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooOO0o(Lcom/airbnb/lottie/model/OooO0o0;ILjava/util/List;Lcom/airbnb/lottie/model/OooO0o0;Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOO0;)V

    return-void
.end method

.method public OooO0oO(Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V
    .locals 1
    .param p2    # Lcom/airbnb/lottie/o00ooo/OooOO0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooO0oO:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0Oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOOO0(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOO0:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0o0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0O0:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0oo:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0o:Lcom/airbnb/lottie/model/content/OooO00o;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/OooO00o;->OooO0o0()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    :goto_0
    iput-boolean v2, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0oo:Z

    iget-object v0, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0Oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    const v4, 0x3f0d6239    # 0.55228f

    mul-float v12, v3, v4

    mul-float/2addr v4, v1

    iget-object v5, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0o:Lcom/airbnb/lottie/model/content/OooO00o;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/OooO00o;->OooO0o()Z

    move-result v5

    const/4 v13, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    neg-float v11, v1

    invoke-virtual {v5, v13, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v14, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    sub-float v8, v13, v12

    neg-float v6, v3

    sub-float v21, v13, v4

    const/16 v20, 0x0

    move v15, v8

    move/from16 v16, v11

    move/from16 v17, v6

    move/from16 v18, v21

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v7, v4

    move v9, v1

    move v14, v11

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    add-float/2addr v12, v13

    const/4 v11, 0x0

    move v6, v12

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    const/4 v10, 0x0

    move v6, v3

    move/from16 v7, v21

    move v8, v12

    move v9, v14

    move v11, v14

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    neg-float v15, v1

    invoke-virtual {v5, v13, v15}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    add-float v14, v12, v13

    sub-float v16, v13, v4

    const/4 v11, 0x0

    move v6, v14

    move v7, v15

    move v8, v3

    move/from16 v9, v16

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v6, v3

    move v7, v4

    move v8, v14

    move v9, v1

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    sub-float v17, v13, v12

    neg-float v3, v3

    const/4 v11, 0x0

    move/from16 v6, v17

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v14, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    const/16 v19, 0x0

    move v1, v15

    move v15, v3

    move/from16 v18, v1

    move/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_1
    iget-object v1, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0o0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v1, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;

    iget-object v3, v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oo;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;->OooO0O0(Landroid/graphics/Path;)V

    goto/16 :goto_0
.end method
