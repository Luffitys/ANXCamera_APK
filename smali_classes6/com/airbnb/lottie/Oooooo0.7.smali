.class Lcom/airbnb/lottie/Oooooo0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic OooO00o:Lcom/airbnb/lottie/OoooooO;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/OoooooO;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/Oooooo0;->OooO00o:Lcom/airbnb/lottie/OoooooO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)I
    .locals 0

    iget-object p0, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget-object p1, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p2, p1, p0

    if-lez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/core/util/Pair;

    check-cast p2, Landroidx/core/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/Oooooo0;->OooO00o(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)I

    move-result p0

    return p0
.end method
