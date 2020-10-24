.class final Lcom/airbnb/lottie/parser/moshi/OooO;
.super Ljava/util/AbstractSet;
.source ""


# instance fields
.field final synthetic OooO00o:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/OooO;->OooO00o:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooO;->OooO00o:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooO;->OooO00o:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO0o0(Ljava/util/Map$Entry;)Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/OooO0oo;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/OooO0oo;-><init>(Lcom/airbnb/lottie/parser/moshi/OooO;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooO;->OooO00o:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO0o0(Ljava/util/Map$Entry;)Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooO;->OooO00o:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO0oo(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Z)V

    return v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooO;->OooO00o:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    return p0
.end method
