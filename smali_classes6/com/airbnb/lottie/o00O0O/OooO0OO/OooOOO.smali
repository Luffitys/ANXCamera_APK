.class public Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO;
.super Lcom/airbnb/lottie/o00ooo/OooO00o;
.source ""


# instance fields
.field private final OooOOo:Lcom/airbnb/lottie/o00ooo/OooO00o;

.field private OooOOo0:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/OooOOOO;Lcom/airbnb/lottie/o00ooo/OooO00o;)V
    .locals 7

    iget-object v2, p2, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0O0:Ljava/lang/Object;

    iget-object v3, p2, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0OO:Ljava/lang/Object;

    iget-object v4, p2, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0Oo:Landroid/view/animation/Interpolator;

    iget v5, p2, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0o0:F

    iget-object v6, p2, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0o:Ljava/lang/Float;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/o00ooo/OooO00o;-><init>(Lcom/airbnb/lottie/OooOOOO;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    iput-object p2, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO;->OooOOo:Lcom/airbnb/lottie/o00ooo/OooO00o;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO;->OooO()V

    return-void
.end method


# virtual methods
.method public OooO()V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0OO:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0O0:Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v1, Landroid/graphics/PointF;

    move-object v2, v0

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0OO:Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0O0:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO;->OooOOo:Lcom/airbnb/lottie/o00ooo/OooO00o;

    iget-object v3, v2, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooOOO0:Landroid/graphics/PointF;

    iget-object v2, v2, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooOOO:Landroid/graphics/PointF;

    invoke-static {v0, v1, v3, v2}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0Oo(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO;->OooOOo0:Landroid/graphics/Path;

    :cond_1
    return-void
.end method

.method OooOO0()Landroid/graphics/Path;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO;->OooOOo0:Landroid/graphics/Path;

    return-object p0
.end method
