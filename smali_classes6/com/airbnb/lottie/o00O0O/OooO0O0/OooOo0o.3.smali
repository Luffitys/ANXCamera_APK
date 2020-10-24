.class public Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0o;
.super Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0OO;
.source ""


# instance fields
.field private final OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0OO;

.field private final OooOOOo:Ljava/lang/String;

.field private final OooOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private final OooOOo0:Z

.field private OooOOoo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;Lcom/airbnb/lottie/model/content/OooOOOo;)V
    .locals 11

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOOOo;->OooO0O0()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->OooO00o()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOOOo;->OooO0o0()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->OooO00o()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOOOo;->OooO0oO()F

    move-result v6

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOOOo;->OooO()Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;

    move-result-object v7

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOOOo;->OooOO0()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object v8

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOOOo;->OooO0o()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOOOo;->OooO0Oo()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0OO;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/model/OooOO0/OooO0Oo;Lcom/airbnb/lottie/model/OooOO0/OooO0O0;Ljava/util/List;Lcom/airbnb/lottie/model/OooOO0/OooO0O0;)V

    iput-object p2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0o;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0OO;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOOOo;->OooO0oo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0o;->OooOOOo:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOOOo;->OooOO0O()Z

    move-result p1

    iput-boolean p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0o;->OooOOo0:Z

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOOOo;->OooO0OO()Lcom/airbnb/lottie/model/OooOO0/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooO00o;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0o;->OooOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0o;->OooOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    return-void
.end method


# virtual methods
.method public OooO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0o;->OooOOo0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0OO;->OooO:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0o;->OooOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    check-cast v1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oo;

    invoke-virtual {v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oo;->OooOOOO()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0o;->OooOOoo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0OO;->OooO:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
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

    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooO0O0:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0o;->OooOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOOO0(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOoo:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0o;->OooOOoo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;-><init>(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0o;->OooOOoo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0o;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0OO;

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0o;->OooOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0o;->OooOOOo:Ljava/lang/String;

    return-object p0
.end method
