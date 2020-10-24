.class public Lcom/airbnb/lottie/model/content/OooOO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/model/content/OooO0O0;


# instance fields
.field private final OooO00o:Z

.field private final OooO0O0:Landroid/graphics/Path$FillType;

.field private final OooO0OO:Ljava/lang/String;

.field private final OooO0Oo:Lcom/airbnb/lottie/model/OooOO0/OooO00o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final OooO0o:Z

.field private final OooO0o0:Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/OooOO0/OooO00o;Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;Z)V
    .locals 0
    .param p4    # Lcom/airbnb/lottie/model/OooOO0/OooO00o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0OO:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO00o:Z

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0O0:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0Oo:Lcom/airbnb/lottie/model/OooOO0/OooO00o;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0o0:Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;

    iput-boolean p6, p0, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0o:Z

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;)Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o0;
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;Lcom/airbnb/lottie/model/content/OooOO0o;)V

    return-object v0
.end method

.method public OooO0O0()Lcom/airbnb/lottie/model/OooOO0/OooO00o;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0Oo:Lcom/airbnb/lottie/model/OooOO0/OooO00o;

    return-object p0
.end method

.method public OooO0OO()Landroid/graphics/Path$FillType;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0O0:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0OO:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0o()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0o:Z

    return p0
.end method

.method public OooO0o0()Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO0o0:Lcom/airbnb/lottie/model/OooOO0/OooO0Oo;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/OooOO0o;->OooO00o:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
