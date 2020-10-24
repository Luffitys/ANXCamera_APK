.class public Lcom/airbnb/lottie/ooOO;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Ljava/util/Map;

.field private final OooO0O0:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final OooO0OO:Lcom/airbnb/lottie/o000oOoO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooO0Oo:Z


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ooOO;->OooO00o:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/ooOO;->OooO0Oo:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/ooOO;->OooO0O0:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/airbnb/lottie/ooOO;->OooO0OO:Lcom/airbnb/lottie/o000oOoO;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ooOO;->OooO00o:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/ooOO;->OooO0Oo:Z

    iput-object p1, p0, Lcom/airbnb/lottie/ooOO;->OooO0O0:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/ooOO;->OooO0OO:Lcom/airbnb/lottie/o000oOoO;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/o000oOoO;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ooOO;->OooO00o:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/ooOO;->OooO0Oo:Z

    iput-object p1, p0, Lcom/airbnb/lottie/ooOO;->OooO0OO:Lcom/airbnb/lottie/o000oOoO;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/ooOO;->OooO0O0:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method private OooO00o(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method private OooO0OO()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ooOO;->OooO0O0:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/ooOO;->OooO0OO:Lcom/airbnb/lottie/o000oOoO;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->invalidateSelf()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final OooO0O0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/ooOO;->OooO0Oo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/ooOO;->OooO00o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/ooOO;->OooO00o:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/ooOO;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/airbnb/lottie/ooOO;->OooO0Oo:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/ooOO;->OooO00o:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public OooO0Oo()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ooOO;->OooO00o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/airbnb/lottie/ooOO;->OooO0OO()V

    return-void
.end method

.method public OooO0o(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/ooOO;->OooO0Oo:Z

    return-void
.end method

.method public OooO0o0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ooOO;->OooO00o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/airbnb/lottie/ooOO;->OooO0OO()V

    return-void
.end method

.method public OooO0oO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ooOO;->OooO00o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/airbnb/lottie/ooOO;->OooO0OO()V

    return-void
.end method
