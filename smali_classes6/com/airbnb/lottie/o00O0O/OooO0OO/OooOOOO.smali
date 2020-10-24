.class public Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOO;
.super Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOO0o;
.source ""


# instance fields
.field private final OooO:Landroid/graphics/PointF;

.field private final OooOO0:[F

.field private OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO;

.field private OooOO0o:Landroid/graphics/PathMeasure;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOO0o;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOO;->OooO:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOO;->OooOO0:[F

    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOO;->OooOO0o:Landroid/graphics/PathMeasure;

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOO;->OooOOOO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public OooOOOO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Landroid/graphics/PointF;
    .locals 10

    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO;->OooOO0()Landroid/graphics/Path;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p0, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0O0:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o0:Lcom/airbnb/lottie/o00ooo/OooOO0;

    if-eqz v2, :cond_1

    iget v3, v0, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0o0:F

    iget-object p1, v0, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0o:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v0, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0O0:Ljava/lang/Object;

    iget-object v6, v0, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0OO:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o0()F

    move-result v7

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o()F

    move-result v9

    move v8, p2

    invoke-virtual/range {v2 .. v9}, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO0O0(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOO;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOO;->OooOO0o:Landroid/graphics/PathMeasure;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOO;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO;

    :cond_2
    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOO;->OooOO0o:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    mul-float/2addr p2, v0

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOO;->OooOO0:[F

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOO;->OooO:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOO;->OooOO0:[F

    aget v0, p2, v2

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOO;->OooO:Landroid/graphics/PointF;

    return-object p0
.end method
