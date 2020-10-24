.class final Lcom/airbnb/lottie/parser/moshi/OooOOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field OooO:I

.field OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

.field OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

.field OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

.field OooO0Oo:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

.field final OooO0o:Ljava/lang/Object;

.field OooO0o0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

.field final OooO0oO:I

.field OooO0oo:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oO:I

    iput-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0Oo:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    return-void
.end method

.method constructor <init>(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Ljava/lang/Object;ILcom/airbnb/lottie/parser/moshi/OooOOO0;Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object p2, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o:Ljava/lang/Object;

    iput p3, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oO:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    iput-object p4, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0Oo:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object p5, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object p0, p5, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0Oo:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object p0, p4, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    return-void
.end method


# virtual methods
.method public OooO00o()Lcom/airbnb/lottie/parser/moshi/OooOOO0;
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public OooO0O0()Lcom/airbnb/lottie/parser/moshi/OooOOO0;
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oo:Ljava/lang/Object;

    if-nez p0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o:Ljava/lang/Object;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oo:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oo:Ljava/lang/Object;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int p0, v0, v1

    return p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oo:Ljava/lang/Object;

    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oo:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oo:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
