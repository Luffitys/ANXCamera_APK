.class public Lcom/airbnb/lottie/model/content/OooOOo0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/model/content/OooO0O0;


# instance fields
.field private final OooO00o:Ljava/lang/String;

.field private final OooO0O0:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

.field private final OooO0OO:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

.field private final OooO0Oo:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

.field private final OooO0o:Z

.field private final OooO0o0:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lcom/airbnb/lottie/model/OooOO0/OooO0O0;Lcom/airbnb/lottie/model/OooOO0/OooO0O0;Lcom/airbnb/lottie/model/OooOO0/OooO0O0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/OooOOo0;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/OooOOo0;->OooO0O0:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/OooOOo0;->OooO0OO:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/OooOOo0;->OooO0Oo:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/OooOOo0;->OooO0o0:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    iput-boolean p6, p0, Lcom/airbnb/lottie/model/content/OooOOo0;->OooO0o:Z

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;)Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o0;
    .locals 0

    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo;

    invoke-direct {p1, p2, p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo;-><init>(Lcom/airbnb/lottie/model/layer/OooO0OO;Lcom/airbnb/lottie/model/content/OooOOo0;)V

    return-object p1
.end method

.method public OooO0O0()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/OooOOo0;->OooO0Oo:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    return-object p0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/OooOOo0;->OooO00o:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0Oo()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/OooOOo0;->OooO0o0:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    return-object p0
.end method

.method public OooO0o()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/OooOOo0;->OooO0O0:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-object p0
.end method

.method public OooO0o0()Lcom/airbnb/lottie/model/OooOO0/OooO0O0;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/OooOOo0;->OooO0OO:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    return-object p0
.end method

.method public OooO0oO()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/OooOOo0;->OooO0o:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim Path: {start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/model/content/OooOOo0;->OooO0OO:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/model/content/OooOOo0;->OooO0Oo:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/OooOOo0;->OooO0o0:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
