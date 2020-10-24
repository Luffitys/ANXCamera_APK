.class public Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;
.super Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0OO;
.source ""


# static fields
.field private static final OooOoO:I = 0x20


# instance fields
.field private final OooOOOO:Ljava/lang/String;

.field private final OooOOOo:Z

.field private final OooOOo:Landroidx/collection/LongSparseArray;

.field private final OooOOo0:Landroidx/collection/LongSparseArray;

.field private final OooOOoo:Landroid/graphics/RectF;

.field private final OooOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private final OooOo0:I

.field private final OooOo00:Lcom/airbnb/lottie/model/content/GradientType;

.field private final OooOo0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private final OooOo0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private OooOoO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;Lcom/airbnb/lottie/model/content/OooO0o0;)V
    .locals 11

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0o0;->OooO0O0()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->OooO00o()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0o0;->OooO0oO()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->OooO00o()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0o0;->OooO()F

    move-result v6

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0o0;->OooOO0O()Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;

    move-result-object v7

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0o0;->OooOOO0()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object v8

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0o0;->OooO0oo()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0o0;->OooO0OO()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0OO;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/model/OooOO0/OooO0Oo;Lcom/airbnb/lottie/model/OooOO0/OooO0O0;Ljava/util/List;Lcom/airbnb/lottie/model/OooOO0/OooO0O0;)V

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOOo0:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOOo:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOOoo:Landroid/graphics/RectF;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0o0;->OooOO0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOOOO:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0o0;->OooO0o()Lcom/airbnb/lottie/model/content/GradientType;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo00:Lcom/airbnb/lottie/model/content/GradientType;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0o0;->OooOOO()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOOOo:Z

    invoke-virtual {p1}, Lcom/airbnb/lottie/o000oOoO;->OooOOo0()Lcom/airbnb/lottie/OooOOOO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/OooOOOO;->OooO0Oo()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo0:I

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0o0;->OooO0o0()Lcom/airbnb/lottie/model/OooOO0/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooO0OO;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0o0;->OooOO0o()Lcom/airbnb/lottie/model/OooOO0/OooO0o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooO0o;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0o0;->OooO0Oo()Lcom/airbnb/lottie/model/OooOO0/OooO0o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooO0o;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    return-void
.end method

.method private OooO([I)[I
    .locals 3

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOoO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;->OooO0oo()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_1

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p0

    new-array p1, p1, [I

    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_1

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private OooOO0()I
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo0:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o()F

    move-result v1

    iget v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo0:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o()F

    move-result v2

    iget p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo0:I

    int-to-float p0, p0

    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-eqz v0, :cond_0

    const/16 v2, 0x20f

    mul-int/2addr v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, v1

    :cond_1
    if-eqz p0, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, p0

    :cond_2
    return v2
.end method

.method private OooOO0O()Landroid/graphics/LinearGradient;
    .locals 14

    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOO0()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOOo0:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v4}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/content/OooO0OO;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/OooO0OO;->OooO00o()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooO([I)[I

    move-result-object v11

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/OooO0OO;->OooO0O0()[F

    move-result-object v12

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOOo0:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method

.method private OooOO0o()Landroid/graphics/RadialGradient;
    .locals 13

    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOO0()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOOo:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v4}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/content/OooO0OO;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/OooO0OO;->OooO00o()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooO([I)[I

    move-result-object v10

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/OooO0OO;->OooO0O0()[F

    move-result-object v11

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v7

    float-to-double v4, v0

    sub-float/2addr v1, v8

    float-to-double v0, v1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v9, v0

    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOOo:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public OooO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOOOo:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOOoo:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0OO;->OooO0Oo(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOo00:Lcom/airbnb/lottie/model/content/GradientType;

    sget-object v1, Lcom/airbnb/lottie/model/content/GradientType;->OooO00o:Lcom/airbnb/lottie/model/content/GradientType;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOO0O()Landroid/graphics/LinearGradient;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOO0o()Landroid/graphics/RadialGradient;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0OO;->OooO:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0OO;->OooO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public OooO0oO(Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V
    .locals 1
    .param p2    # Lcom/airbnb/lottie/o00ooo/OooOO0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0OO;->OooO0oO(Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOooO:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOoO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0OO;->OooO0o:Lcom/airbnb/lottie/model/layer/OooO0OO;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOoo0(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOoO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;-><init>(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOoO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0OO;->OooO0o:Lcom/airbnb/lottie/model/layer/OooO0OO;

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOoO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0O;->OooOOOO:Ljava/lang/String;

    return-object p0
.end method
