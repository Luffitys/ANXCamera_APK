.class public Lcom/airbnb/lottie/OoooooO;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO00o:Z

.field private final OooO0O0:Ljava/util/Set;

.field private final OooO0OO:Ljava/util/Map;

.field private final OooO0Oo:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/OoooooO;->OooO00o:Z

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/OoooooO;->OooO0O0:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/OoooooO;->OooO0OO:Ljava/util/Map;

    new-instance v0, Lcom/airbnb/lottie/Oooooo0;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/Oooooo0;-><init>(Lcom/airbnb/lottie/OoooooO;)V

    iput-object v0, p0, Lcom/airbnb/lottie/OoooooO;->OooO0Oo:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/airbnb/lottie/Oooooo;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/OoooooO;->OooO0O0:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0O0()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/OoooooO;->OooO0OO:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public OooO0OO()Ljava/util/List;
    .locals 5

    iget-boolean v0, p0, Lcom/airbnb/lottie/OoooooO;->OooO00o:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/OoooooO;->OooO0OO:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/airbnb/lottie/OoooooO;->OooO0OO:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Landroidx/core/util/Pair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/o00o0O/OooO0o;

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00o0O/OooO0o;->OooO0O0()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/OoooooO;->OooO0Oo:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public OooO0Oo()V
    .locals 6

    iget-boolean v0, p0, Lcom/airbnb/lottie/OoooooO;->OooO00o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/OoooooO;->OooO0OO()Ljava/util/List;

    move-result-object p0

    const-string v0, "LOTTIE"

    const-string v1, "Render times:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Pair;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    aput-object v5, v4, v1

    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "\t\t%30s:%.2f"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public OooO0o(Lcom/airbnb/lottie/Oooooo;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/OoooooO;->OooO0O0:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0o0(Ljava/lang/String;F)V
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/OoooooO;->OooO00o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/OoooooO;->OooO0OO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o00o0O/OooO0o;

    if-nez v0, :cond_1

    new-instance v0, Lcom/airbnb/lottie/o00o0O/OooO0o;

    invoke-direct {v0}, Lcom/airbnb/lottie/o00o0O/OooO0o;-><init>()V

    iget-object v1, p0, Lcom/airbnb/lottie/OoooooO;->OooO0OO:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/o00o0O/OooO0o;->OooO00o(F)V

    const-string v0, "__container"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/airbnb/lottie/OoooooO;->OooO0O0:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/Oooooo;

    invoke-interface {p1, p2}, Lcom/airbnb/lottie/Oooooo;->OooO00o(F)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method OooO0oO(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/OoooooO;->OooO00o:Z

    return-void
.end method
