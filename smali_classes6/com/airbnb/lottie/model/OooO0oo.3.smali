.class public Lcom/airbnb/lottie/model/OooO0oo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO0Oo:Ljava/lang/String; = "\r"


# instance fields
.field private final OooO00o:Ljava/lang/String;

.field public final OooO0O0:F

.field public final OooO0OO:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/OooO0oo;->OooO00o:Ljava/lang/String;

    iput p3, p0, Lcom/airbnb/lottie/model/OooO0oo;->OooO0OO:F

    iput p2, p0, Lcom/airbnb/lottie/model/OooO0oo;->OooO0O0:F

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/model/OooO0oo;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/OooO0oo;->OooO00o:Ljava/lang/String;

    sget-object v2, Lcom/airbnb/lottie/model/OooO0oo;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooO0oo;->OooO00o:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2
.end method
