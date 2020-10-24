.class public Lcom/airbnb/lottie/model/OooO0Oo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final OooO00o:Ljava/util/List;

.field private final OooO0O0:C

.field private final OooO0OO:D

.field private final OooO0Oo:D

.field private final OooO0o:Ljava/lang/String;

.field private final OooO0o0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/OooO0Oo;->OooO00o:Ljava/util/List;

    iput-char p2, p0, Lcom/airbnb/lottie/model/OooO0Oo;->OooO0O0:C

    iput-wide p3, p0, Lcom/airbnb/lottie/model/OooO0Oo;->OooO0OO:D

    iput-wide p5, p0, Lcom/airbnb/lottie/model/OooO0Oo;->OooO0Oo:D

    iput-object p7, p0, Lcom/airbnb/lottie/model/OooO0Oo;->OooO0o0:Ljava/lang/String;

    iput-object p8, p0, Lcom/airbnb/lottie/model/OooO0Oo;->OooO0o:Ljava/lang/String;

    return-void
.end method

.method public static OooO0o0(CLjava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public OooO00o()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooO0Oo;->OooO00o:Ljava/util/List;

    return-object p0
.end method

.method OooO0O0()D
    .locals 2

    iget-wide v0, p0, Lcom/airbnb/lottie/model/OooO0Oo;->OooO0OO:D

    return-wide v0
.end method

.method OooO0OO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooO0Oo;->OooO0o0:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0Oo()D
    .locals 2

    iget-wide v0, p0, Lcom/airbnb/lottie/model/OooO0Oo;->OooO0Oo:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-char v0, p0, Lcom/airbnb/lottie/model/OooO0Oo;->OooO0O0:C

    iget-object v1, p0, Lcom/airbnb/lottie/model/OooO0Oo;->OooO0o:Ljava/lang/String;

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooO0Oo;->OooO0o0:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/airbnb/lottie/model/OooO0Oo;->OooO0o0(CLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
