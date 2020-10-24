.class public Lcom/airbnb/lottie/model/content/OooOOO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/model/content/OooO0O0;


# instance fields
.field private final OooO00o:Ljava/lang/String;

.field private final OooO0O0:I

.field private final OooO0OO:Lcom/airbnb/lottie/model/OooOO0/OooO0oo;

.field private final OooO0Oo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/airbnb/lottie/model/OooOO0/OooO0oo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/OooOOO;->OooO00o:Ljava/lang/String;

    iput p2, p0, Lcom/airbnb/lottie/model/content/OooOOO;->OooO0O0:I

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/OooOOO;->OooO0OO:Lcom/airbnb/lottie/model/OooOO0/OooO0oo;

    iput-boolean p4, p0, Lcom/airbnb/lottie/model/content/OooOOO;->OooO0Oo:Z

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;)Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o0;
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo0O;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;Lcom/airbnb/lottie/model/content/OooOOO;)V

    return-object v0
.end method

.method public OooO0O0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/OooOOO;->OooO00o:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0OO()Lcom/airbnb/lottie/model/OooOO0/OooO0oo;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/OooOOO;->OooO0OO:Lcom/airbnb/lottie/model/OooOO0/OooO0oo;

    return-object p0
.end method

.method public OooO0Oo()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/OooOOO;->OooO0Oo:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapePath{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/model/content/OooOOO;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/airbnb/lottie/model/content/OooOOO;->OooO0O0:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
