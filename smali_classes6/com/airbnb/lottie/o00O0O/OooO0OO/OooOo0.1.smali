.class public Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final OooO00o:Landroid/graphics/Matrix;

.field private final OooO0O0:Landroid/graphics/Matrix;

.field private final OooO0OO:Landroid/graphics/Matrix;

.field private final OooO0Oo:Landroid/graphics/Matrix;

.field private OooO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final OooO0o0:[F

.field private OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/OooOO0/OooOO0o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO0OO()Lcom/airbnb/lottie/model/OooOO0/OooO0o0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO0OO()Lcom/airbnb/lottie/model/OooOO0/OooO0o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/OooOO0/OooO0o0;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO0o()Lcom/airbnb/lottie/model/OooOO0/OooOOO0;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO0o()Lcom/airbnb/lottie/model/OooOO0/OooOOO0;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/model/OooOO0/OooOOO0;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO0oo()Lcom/airbnb/lottie/model/OooOO0/OooO0oO;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO0oo()Lcom/airbnb/lottie/model/OooOO0/OooO0oO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/OooOO0/OooO0oO;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO0oO()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO0oO()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/OooOO0/OooO0O0;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/OooOO0/OooO0O0;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    :goto_4
    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0O0:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0OO:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0Oo:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o0:[F

    goto :goto_5

    :cond_5
    iput-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0O0:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0OO:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0Oo:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o0:[F

    :goto_5
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooOO0()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooOO0()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/OooOO0/OooO0O0;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    :goto_6
    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO0o0()Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO0o0()Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    :cond_7
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooOO0O()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooOO0O()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/OooOO0/OooO0O0;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto :goto_7

    :cond_8
    iput-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    :goto_7
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO0Oo()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO0Oo()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooO0O0;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto :goto_8

    :cond_9
    iput-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    :goto_8
    return-void
.end method

.method private OooO0Oo()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o0:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    return-object p0
.end method

.method public OooO00o(Lcom/airbnb/lottie/model/layer/OooO0OO;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    return-void
.end method

.method public OooO0O0(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    :cond_7
    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    :cond_8
    return-void
.end method

.method public OooO0OO(Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)Z
    .locals 3
    .param p2    # Lcom/airbnb/lottie/o00ooo/OooOO0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooO0o0:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-nez p1, :cond_0

    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;-><init>(Lcom/airbnb/lottie/o00ooo/OooOO0;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOOO0(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooO0o:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-nez p1, :cond_0

    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;-><init>(Lcom/airbnb/lottie/o00ooo/OooOO0;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOO0O:Lcom/airbnb/lottie/o00ooo/OooOO0O;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-nez p1, :cond_0

    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    new-instance v0, Lcom/airbnb/lottie/o00ooo/OooOO0O;

    invoke-direct {v0}, Lcom/airbnb/lottie/o00ooo/OooOO0O;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;-><init>(Lcom/airbnb/lottie/o00ooo/OooOO0;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOO0o:Ljava/lang/Float;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-nez p1, :cond_0

    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;-><init>(Lcom/airbnb/lottie/o00ooo/OooOO0;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooO0OO:Ljava/lang/Integer;

    const/16 v2, 0x64

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-nez p1, :cond_0

    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;-><init>(Lcom/airbnb/lottie/o00ooo/OooOO0;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOoO0:Ljava/lang/Float;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_7

    if-nez v0, :cond_6

    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;-><init>(Lcom/airbnb/lottie/o00ooo/OooOO0;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto :goto_1

    :cond_6
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOOO0(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOoO:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_8

    if-nez v0, :cond_6

    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;-><init>(Lcom/airbnb/lottie/o00ooo/OooOO0;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOOO0:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    if-eqz v0, :cond_a

    if-nez v0, :cond_9

    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    new-instance v0, Lcom/airbnb/lottie/o00ooo/OooO00o;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/o00ooo/OooO00o;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    :cond_9
    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOOO0(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOOO:Ljava/lang/Float;

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    if-eqz p1, :cond_c

    if-nez p1, :cond_b

    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    new-instance v0, Lcom/airbnb/lottie/o00ooo/OooO00o;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/o00ooo/OooO00o;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    :cond_b
    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    goto :goto_0

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public OooO0o()Landroid/graphics/Matrix;
    .locals 13

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;->OooOOOO()F

    move-result v0

    :goto_0
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    const/high16 v3, 0x42b40000    # 90.0f

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;->OooOOOO()F

    move-result v0

    neg-float v0, v0

    add-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    :goto_1
    iget-object v4, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    if-nez v4, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;->OooOOOO()F

    move-result v4

    neg-float v4, v4

    add-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    :goto_2
    iget-object v4, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    invoke-virtual {v4}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;->OooOOOO()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0Oo()V

    iget-object v5, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o0:[F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v7, 0x1

    aput v3, v5, v7

    neg-float v8, v3

    const/4 v9, 0x3

    aput v8, v5, v9

    const/4 v10, 0x4

    aput v0, v5, v10

    const/16 v11, 0x8

    aput v2, v5, v11

    iget-object v12, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0O0:Landroid/graphics/Matrix;

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0Oo()V

    iget-object v5, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o0:[F

    aput v2, v5, v6

    aput v4, v5, v9

    aput v2, v5, v10

    aput v2, v5, v11

    iget-object v4, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-direct {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0Oo()V

    iget-object v4, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o0:[F

    aput v0, v4, v6

    aput v8, v4, v7

    aput v3, v4, v9

    aput v0, v4, v10

    aput v2, v4, v11

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0Oo:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0OO:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0O0:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0Oo:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0Oo:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o00ooo/OooOO0O;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00ooo/OooOO0O;->OooO0O0()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00ooo/OooOO0O;->OooO0OO()F

    move-result v3

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00ooo/OooOO0O;->OooO0O0()F

    move-result v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00ooo/OooOO0O;->OooO0OO()F

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_8
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_9

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_a
    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public OooO0o0()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    return-object p0
.end method

.method public OooO0oO(F)Landroid/graphics/Matrix;
    .locals 9

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/o00ooo/OooOO0O;

    :goto_1
    iget-object v3, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00ooo/OooOO0O;->OooO0O0()F

    move-result v3

    float-to-double v3, v3

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00ooo/OooOO0O;->OooO0OO()F

    move-result v2

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    :goto_2
    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    if-nez v1, :cond_5

    move v3, p1

    goto :goto_3

    :cond_5
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget p1, v1, Landroid/graphics/PointF;->y:F

    :goto_4
    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    :cond_7
    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO00o:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public OooO0oo()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    return-object p0
.end method

.method public OooOO0(F)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0o(F)V

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0o(F)V

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOOO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0o(F)V

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0o(F)V

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0o(F)V

    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0o(F)V

    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0o(F)V

    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0O:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0o(F)V

    :cond_7
    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0o(F)V

    :cond_8
    return-void
.end method
