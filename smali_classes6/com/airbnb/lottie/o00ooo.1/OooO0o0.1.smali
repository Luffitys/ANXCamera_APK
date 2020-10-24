.class public Lcom/airbnb/lottie/o00ooo/OooO0o0;
.super Lcom/airbnb/lottie/o00ooo/OooO0o;
.source ""


# instance fields
.field private final OooO0oO:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/o00ooo/OooO0o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/o00ooo/OooO0o0;->OooO0oO:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/o00ooo/OooO0o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/o00ooo/OooO0o0;->OooO0oO:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method OooO0o(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/o00ooo/OooO0o0;->OooO0oO:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2, p3}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooOO0(FFF)F

    move-result v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, p2, p3}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooOO0(FFF)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Lcom/airbnb/lottie/o00ooo/OooO0o0;->OooO0oO:Landroid/graphics/PointF;

    return-object p0
.end method

.method bridge synthetic OooO0o0(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/graphics/PointF;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/o00ooo/OooO0o0;->OooO0o(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
