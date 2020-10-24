.class public Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oO;
.implements Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;
.implements Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOO0;


# static fields
.field private static final OooOOoo:I = 0x20


# instance fields
.field private final OooO:Ljava/util/List;

.field private final OooO00o:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final OooO0O0:Z

.field private final OooO0OO:Lcom/airbnb/lottie/model/layer/OooO0OO;

.field private final OooO0Oo:Landroidx/collection/LongSparseArray;

.field private final OooO0o:Landroid/graphics/Path;

.field private final OooO0o0:Landroidx/collection/LongSparseArray;

.field private final OooO0oO:Landroid/graphics/Paint;

.field private final OooO0oo:Landroid/graphics/RectF;

.field private final OooOO0:Lcom/airbnb/lottie/model/content/GradientType;

.field private final OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private final OooOO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private final OooOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private final OooOOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private OooOOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final OooOOo:I

.field private final OooOOo0:Lcom/airbnb/lottie/o000oOoO;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;Lcom/airbnb/lottie/model/content/OooO0Oo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0Oo:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0o0:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0o:Landroid/graphics/Path;

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO00o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/o00O0O/OooO00o;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0oO:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0oo:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO:Ljava/util/List;

    iput-object p2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0OO:Lcom/airbnb/lottie/model/layer/OooO0OO;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0Oo;->OooO0oo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO00o:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0Oo;->OooOO0O()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0O0:Z

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOo0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0Oo;->OooO0o0()Lcom/airbnb/lottie/model/content/GradientType;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOO0:Lcom/airbnb/lottie/model/content/GradientType;

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0o:Landroid/graphics/Path;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0Oo;->OooO0OO()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p1}, Lcom/airbnb/lottie/o000oOoO;->OooOOo0()Lcom/airbnb/lottie/OooOOOO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/OooOOOO;->OooO0Oo()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOo:I

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0Oo;->OooO0Oo()Lcom/airbnb/lottie/model/OooOO0/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooO0OO;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0Oo;->OooO()Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0Oo;->OooOO0()Lcom/airbnb/lottie/model/OooOO0/OooO0o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooO0o;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooO0Oo;->OooO0O0()Lcom/airbnb/lottie/model/OooOO0/OooO0o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooO0o;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    return-void
.end method

.method private OooO()Landroid/graphics/LinearGradient;
    .locals 14

    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0oo()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0Oo:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v4}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/content/OooO0OO;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/OooO0OO;->OooO00o()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0o0([I)[I

    move-result-object v11

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/OooO0OO;->OooO0O0()[F

    move-result-object v12

    new-instance v4, Landroid/graphics/LinearGradient;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0Oo:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v4
.end method

.method private OooO0o0([I)[I
    .locals 3

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

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

.method private OooO0oo()I
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOo:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o()F

    move-result v1

    iget v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOo:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o()F

    move-result v2

    iget p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOo:I

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

.method private OooOO0()Landroid/graphics/RadialGradient;
    .locals 13

    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0oo()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0o0:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v4}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/content/OooO0OO;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/OooO0OO;->OooO00o()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0o0([I)[I

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

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    const v0, 0x3a83126f    # 0.001f

    :cond_1
    move v9, v0

    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0o0:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOo0:Lcom/airbnb/lottie/o000oOoO;

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

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO:Ljava/util/List;

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

    iget-object p3, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0o:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0o:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;

    invoke-interface {v2}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0o:Landroid/graphics/Path;

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
    .locals 5

    iget-boolean v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0O0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GradientFillContent#draw"

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0o:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0o:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;

    invoke-interface {v4}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0o:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0oo:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOO0:Lcom/airbnb/lottie/model/content/GradientType;

    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->OooO00o:Lcom/airbnb/lottie/model/content/GradientType;

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO()Landroid/graphics/LinearGradient;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOO0()Landroid/graphics/RadialGradient;

    move-result-object v2

    :goto_1
    invoke-virtual {v2, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0oO:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0oO:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_3
    int-to-float p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p2, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p2, v2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iget-object p3, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0oO:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {p2, v1, v2}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooO0OO(III)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0o:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0oO:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method public OooO0oO(Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V
    .locals 2
    .param p2    # Lcom/airbnb/lottie/o00ooo/OooOO0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooO0Oo:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOOO0(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOoo:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    iput-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;-><init>(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0OO:Lcom/airbnb/lottie/model/layer/OooO0OO;

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    :goto_0
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOooO:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_5

    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0OO:Lcom/airbnb/lottie/model/layer/OooO0OO;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOoo0(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    :cond_3
    iput-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;-><init>(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO0OO:Lcom/airbnb/lottie/model/layer/OooO0OO;

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOO0;->OooO00o:Ljava/lang/String;

    return-object p0
.end method
