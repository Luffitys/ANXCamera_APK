.class public Lcom/airbnb/lottie/model/layer/OooO0o;
.super Lcom/airbnb/lottie/model/layer/OooO0OO;
.source ""


# instance fields
.field private final OooOoOO:Landroid/graphics/Paint;

.field private final OooOoo:Landroid/graphics/Rect;

.field private final OooOoo0:Landroid/graphics/Rect;

.field private OooOooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0oO;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/OooO0OO;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0oO;)V

    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO00o;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO00o;-><init>(I)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0o;->OooOoOO:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0o;->OooOoo0:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0o;->OooOoo:Landroid/graphics/Rect;

    return-void
.end method

.method private Oooo0()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooOO0O()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/o000oOoO;->OooOo0(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OooO0Oo(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0Oo(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/OooO0o;->Oooo0()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0o0()F

    move-result v0

    mul-float/2addr p3, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0o0()F

    move-result v0

    mul-float/2addr p2, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO0:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

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

    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOoo:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;-><init>(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    :goto_0
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0o;->OooOooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    :cond_1
    return-void
.end method

.method public OooOOoo(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/OooO0o;->Oooo0()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0o0()F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0o;->OooOoOO:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0o;->OooOooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0o;->OooOoOO:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0o;->OooOoo0:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0o;->OooOoo:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p2, v3, v3, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0o;->OooOoo0:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0o;->OooOoo:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0o;->OooOoOO:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method
