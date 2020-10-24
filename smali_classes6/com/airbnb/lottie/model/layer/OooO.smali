.class public Lcom/airbnb/lottie/model/layer/OooO;
.super Lcom/airbnb/lottie/model/layer/OooO0OO;
.source ""


# instance fields
.field private final OooOoOO:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0oO;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/OooO0OO;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0oO;)V

    new-instance v0, Lcom/airbnb/lottie/model/content/OooOOO0;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooOO0o()Ljava/util/List;

    move-result-object p2

    const-string v1, "__container"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/airbnb/lottie/model/content/OooOOO0;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p2, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    invoke-direct {p2, p1, p0, v0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;Lcom/airbnb/lottie/model/content/OooOOO0;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO;->OooOoOO:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;->OooO0O0(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public OooO0Oo(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0Oo(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO;->OooOoOO:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO0:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p0, p3}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;->OooO0Oo(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method OooOOoo(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO;->OooOoOO:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;->OooO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method protected OooOoo(Lcom/airbnb/lottie/model/OooO0o0;ILjava/util/List;Lcom/airbnb/lottie/model/OooO0o0;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO;->OooOoOO:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o;->OooO0OO(Lcom/airbnb/lottie/model/OooO0o0;ILjava/util/List;Lcom/airbnb/lottie/model/OooO0o0;)V

    return-void
.end method
