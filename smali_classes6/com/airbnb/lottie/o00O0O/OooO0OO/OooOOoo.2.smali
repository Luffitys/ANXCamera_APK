.class public Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;
.super Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
.source ""


# instance fields
.field private final OooO:Landroid/graphics/PointF;

.field private final OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private final OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;->OooO:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    iput-object p2, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;->OooOO0o(F)V

    return-void
.end method


# virtual methods
.method bridge synthetic OooO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;->OooOOOo(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic OooO0oo()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;->OooOOOO()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public OooOO0o(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0o(F)V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0o(F)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;->OooO:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;

    invoke-interface {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;->OooO00o()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooOOOO()Landroid/graphics/PointF;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;->OooOOOo(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method OooOOOo(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;->OooO:Landroid/graphics/PointF;

    return-object p0
.end method
