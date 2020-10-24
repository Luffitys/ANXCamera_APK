.class public Lcom/airbnb/lottie/model/OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final OooO00o:Landroid/graphics/PointF;

.field private final OooO0O0:Landroid/graphics/PointF;

.field private final OooO0OO:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/OooO00o;->OooO00o:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/OooO00o;->OooO0O0:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/OooO00o;->OooO0OO:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/OooO00o;->OooO00o:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/airbnb/lottie/model/OooO00o;->OooO0O0:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/airbnb/lottie/model/OooO00o;->OooO0OO:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public OooO00o()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooO00o;->OooO00o:Landroid/graphics/PointF;

    return-object p0
.end method

.method public OooO0O0()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooO00o;->OooO0O0:Landroid/graphics/PointF;

    return-object p0
.end method

.method public OooO0OO()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooO00o;->OooO0OO:Landroid/graphics/PointF;

    return-object p0
.end method

.method public OooO0Oo(FF)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooO00o;->OooO00o:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public OooO0o(FF)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooO00o;->OooO0OO:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public OooO0o0(FF)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooO00o;->OooO0O0:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method
