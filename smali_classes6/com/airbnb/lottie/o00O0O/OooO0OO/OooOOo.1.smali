.class public Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOo;
.super Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
.source ""


# instance fields
.field private final OooO:Lcom/airbnb/lottie/model/content/OooOO0O;

.field private final OooOO0:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/airbnb/lottie/model/content/OooOO0O;

    invoke-direct {p1}, Lcom/airbnb/lottie/model/content/OooOO0O;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOo;->OooO:Lcom/airbnb/lottie/model/content/OooOO0O;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOo;->OooOO0:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOo;->OooOOOO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public OooOOOO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Landroid/graphics/Path;
    .locals 2

    iget-object v0, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0O0:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/model/content/OooOO0O;

    iget-object p1, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0OO:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/model/content/OooOO0O;

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOo;->OooO:Lcom/airbnb/lottie/model/content/OooOO0O;

    invoke-virtual {v1, v0, p1, p2}, Lcom/airbnb/lottie/model/content/OooOO0O;->OooO0OO(Lcom/airbnb/lottie/model/content/OooOO0O;Lcom/airbnb/lottie/model/content/OooOO0O;F)V

    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOo;->OooO:Lcom/airbnb/lottie/model/content/OooOO0O;

    iget-object p2, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOo;->OooOO0:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooO0oo(Lcom/airbnb/lottie/model/content/OooOO0O;Landroid/graphics/Path;)V

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOo;->OooOO0:Landroid/graphics/Path;

    return-object p0
.end method
