.class public Lcom/airbnb/lottie/o00Ooo/Oooo000;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/o00Ooo/Oooo0o0;


# static fields
.field public static final OooO00o:Lcom/airbnb/lottie/o00Ooo/Oooo000;

.field private static final OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooO00o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/airbnb/lottie/o00Ooo/Oooo000;

    invoke-direct {v0}, Lcom/airbnb/lottie/o00Ooo/Oooo000;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/o00Ooo/Oooo000;->OooO00o:Lcom/airbnb/lottie/o00Ooo/Oooo000;

    const-string v0, "c"

    const-string v1, "v"

    const-string v2, "i"

    const-string v3, "o"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/OooO00o;->OooO00o([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/OooO00o;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/o00Ooo/Oooo000;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooO00o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00Ooo/Oooo000;->OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;F)Lcom/airbnb/lottie/model/content/OooOO0O;

    move-result-object p0

    return-object p0
.end method

.method public OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;F)Lcom/airbnb/lottie/model/content/OooOO0O;
    .locals 11

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOO()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->OooO00o:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0O0()V

    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0OO()V

    const/4 p0, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v1

    move v3, v0

    :goto_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0oO()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    sget-object v4, Lcom/airbnb/lottie/o00Ooo/Oooo000;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooO00o;

    invoke-virtual {p1, v4}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOOo(Lcom/airbnb/lottie/parser/moshi/OooO00o;)I

    move-result v4

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOo0()V

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOo()V

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lcom/airbnb/lottie/o00Ooo/OooOOo0;->OooO0o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;F)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/airbnb/lottie/o00Ooo/OooOOo0;->OooO0o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;F)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Lcom/airbnb/lottie/o00Ooo/OooOOo0;->OooO0o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;F)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0oo()Z

    move-result v3

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0o0()V

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOO()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object p2

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne p2, v4, :cond_6

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0Oo()V

    :cond_6
    if-eqz p0, :cond_a

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p0, Lcom/airbnb/lottie/model/content/OooOO0O;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/airbnb/lottie/model/content/OooOO0O;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v5

    :goto_1
    if-ge v6, p1, :cond_8

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    add-int/lit8 v8, v6, -0x1

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    invoke-static {v9, v8}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooO00o(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {v7, v10}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooO00o(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v9

    new-instance v10, Lcom/airbnb/lottie/model/OooO00o;

    invoke-direct {v10, v8, v9, v7}, Lcom/airbnb/lottie/model/OooO00o;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    sub-int/2addr p1, v5

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-static {p0, p1}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooO00o(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {v6, v0}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooO00o(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    new-instance v0, Lcom/airbnb/lottie/model/OooO00o;

    invoke-direct {v0, p0, p1, v6}, Lcom/airbnb/lottie/model/OooO00o;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance p0, Lcom/airbnb/lottie/model/content/OooOO0O;

    invoke-direct {p0, p2, v3, v4}, Lcom/airbnb/lottie/model/content/OooOO0O;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Shape data was missing information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
