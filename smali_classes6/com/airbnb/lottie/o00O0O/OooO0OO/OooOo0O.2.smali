.class public Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;
.super Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
.source ""


# instance fields
.field private final OooO:Lcom/airbnb/lottie/o00ooo/OooO0O0;

.field private final OooOO0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/o00ooo/OooOO0;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;-><init>(Lcom/airbnb/lottie/o00ooo/OooOO0;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/o00ooo/OooOO0;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/airbnb/lottie/o00ooo/OooO0O0;

    invoke-direct {v0}, Lcom/airbnb/lottie/o00ooo/OooO0O0;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;->OooO:Lcom/airbnb/lottie/o00ooo/OooO0O0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOOO0(Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    iput-object p2, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;->OooOO0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method OooO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;->OooO0oo()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method OooO0OO()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public OooO0oo()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o0:Lcom/airbnb/lottie/o00ooo/OooOO0;

    iget-object v4, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0O;->OooOO0:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o()F

    move-result v5

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o()F

    move-result v6

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o()F

    move-result v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v4

    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO0O0(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public OooOO0()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o0:Lcom/airbnb/lottie/o00ooo/OooOO0;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0()V

    :cond_0
    return-void
.end method
