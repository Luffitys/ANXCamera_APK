.class public Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOo0;
.implements Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;


# instance fields
.field private final OooO00o:Landroid/graphics/Path;

.field private final OooO0O0:Ljava/lang/String;

.field private final OooO0OO:Z

.field private final OooO0Oo:Lcom/airbnb/lottie/o000oOoO;

.field private OooO0o:Z

.field private final OooO0o0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

.field private OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;Lcom/airbnb/lottie/model/content/OooOOO;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO00o:Landroid/graphics/Path;

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;

    invoke-direct {v0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOOO;->OooO0O0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0O0:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOOO;->OooO0Oo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0OO:Z

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0Oo:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/OooOOO;->OooO0OO()Lcom/airbnb/lottie/model/OooOO0/OooO0oo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooO0oo;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0o0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0o0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    return-void
.end method

.method private OooO0OO()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0o:Z

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0Oo:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0OO()V

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

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo;->OooO0OO(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0O0:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    iget-boolean v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0o:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO00o:Landroid/graphics/Path;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0OO:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0o:Z

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO00o:Landroid/graphics/Path;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO00o:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0o0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO00o:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;->OooO0O0(Landroid/graphics/Path;)V

    goto :goto_0
.end method
