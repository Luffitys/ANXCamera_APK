.class public Lcom/airbnb/lottie/o00Ooo/OooO0Oo;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static OooO(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/OooOO0/OooO0o;
    .locals 3

    new-instance v0, Lcom/airbnb/lottie/model/OooOO0/OooO0o;

    invoke-static {}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0o0()F

    move-result v1

    sget-object v2, Lcom/airbnb/lottie/o00Ooo/OooOoOO;->OooO00o:Lcom/airbnb/lottie/o00Ooo/OooOoOO;

    invoke-static {p0, v1, p1, v2}, Lcom/airbnb/lottie/o00Ooo/OooO0Oo;->OooO00o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;FLcom/airbnb/lottie/OooOOOO;Lcom/airbnb/lottie/o00Ooo/Oooo0o0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/model/OooOO0/OooO0o;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static OooO00o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;FLcom/airbnb/lottie/OooOOOO;Lcom/airbnb/lottie/o00Ooo/Oooo0o0;)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0, p2, p1, p3}, Lcom/airbnb/lottie/o00Ooo/OooOOoo;->OooO00o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;FLcom/airbnb/lottie/o00Ooo/Oooo0o0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;Lcom/airbnb/lottie/o00Ooo/Oooo0o0;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0, p2}, Lcom/airbnb/lottie/o00Ooo/OooOOoo;->OooO00o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;FLcom/airbnb/lottie/o00Ooo/Oooo0o0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static OooO0OO(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/OooOO0/OooO00o;
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/model/OooOO0/OooO00o;

    sget-object v1, Lcom/airbnb/lottie/o00Ooo/OooO0o;->OooO00o:Lcom/airbnb/lottie/o00Ooo/OooO0o;

    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/o00Ooo/OooO0Oo;->OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;Lcom/airbnb/lottie/o00Ooo/Oooo0o0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/model/OooOO0/OooO00o;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static OooO0Oo(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/OooOO0/OooOO0;
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/model/OooOO0/OooOO0;

    sget-object v1, Lcom/airbnb/lottie/o00Ooo/OooO0oo;->OooO00o:Lcom/airbnb/lottie/o00Ooo/OooO0oo;

    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/o00Ooo/OooO0Oo;->OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;Lcom/airbnb/lottie/o00Ooo/Oooo0o0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/model/OooOO0/OooOO0;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static OooO0o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;Z)Lcom/airbnb/lottie/model/OooOO0/OooO0O0;
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0o0()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lcom/airbnb/lottie/o00Ooo/OooO;->OooO00o:Lcom/airbnb/lottie/o00Ooo/OooO;

    invoke-static {p0, p2, p1, v1}, Lcom/airbnb/lottie/o00Ooo/OooO0Oo;->OooO00o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;FLcom/airbnb/lottie/OooOOOO;Lcom/airbnb/lottie/o00Ooo/Oooo0o0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/model/OooOO0/OooO0O0;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static OooO0o0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/OooOO0/OooO0O0;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/o00Ooo/OooO0Oo;->OooO0o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;Z)Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object p0

    return-object p0
.end method

.method static OooO0oO(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;I)Lcom/airbnb/lottie/model/OooOO0/OooO0OO;
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/model/OooOO0/OooO0OO;

    new-instance v1, Lcom/airbnb/lottie/o00Ooo/OooOO0o;

    invoke-direct {v1, p2}, Lcom/airbnb/lottie/o00Ooo/OooOO0o;-><init>(I)V

    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/o00Ooo/OooO0Oo;->OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;Lcom/airbnb/lottie/o00Ooo/Oooo0o0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/model/OooOO0/OooO0OO;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static OooO0oo(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;

    sget-object v1, Lcom/airbnb/lottie/o00Ooo/OooOOOO;->OooO00o:Lcom/airbnb/lottie/o00Ooo/OooOOOO;

    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/o00Ooo/OooO0Oo;->OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;Lcom/airbnb/lottie/o00Ooo/Oooo0o0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static OooOO0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/OooOO0/OooO0oO;
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/model/OooOO0/OooO0oO;

    sget-object v1, Lcom/airbnb/lottie/o00Ooo/OooOooo;->OooO00o:Lcom/airbnb/lottie/o00Ooo/OooOooo;

    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/o00Ooo/OooO0Oo;->OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;Lcom/airbnb/lottie/o00Ooo/Oooo0o0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/model/OooOO0/OooO0oO;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static OooOO0O(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/OooOO0/OooO0oo;
    .locals 3

    new-instance v0, Lcom/airbnb/lottie/model/OooOO0/OooO0oo;

    invoke-static {}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0o0()F

    move-result v1

    sget-object v2, Lcom/airbnb/lottie/o00Ooo/Oooo000;->OooO00o:Lcom/airbnb/lottie/o00Ooo/Oooo000;

    invoke-static {p0, v1, p1, v2}, Lcom/airbnb/lottie/o00Ooo/OooO0Oo;->OooO00o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;FLcom/airbnb/lottie/OooOOOO;Lcom/airbnb/lottie/o00Ooo/Oooo0o0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/model/OooOO0/OooO0oo;-><init>(Ljava/util/List;)V

    return-object v0
.end method
