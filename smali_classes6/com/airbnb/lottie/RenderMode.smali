.class public final enum Lcom/airbnb/lottie/RenderMode;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum OooO00o:Lcom/airbnb/lottie/RenderMode;

.field public static final enum OooO0O0:Lcom/airbnb/lottie/RenderMode;

.field public static final enum OooO0OO:Lcom/airbnb/lottie/RenderMode;

.field private static final synthetic OooO0Oo:[Lcom/airbnb/lottie/RenderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/airbnb/lottie/RenderMode;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/RenderMode;->OooO00o:Lcom/airbnb/lottie/RenderMode;

    new-instance v0, Lcom/airbnb/lottie/RenderMode;

    const-string v1, "HARDWARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/RenderMode;->OooO0O0:Lcom/airbnb/lottie/RenderMode;

    new-instance v0, Lcom/airbnb/lottie/RenderMode;

    const-string v1, "SOFTWARE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/airbnb/lottie/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/RenderMode;->OooO0OO:Lcom/airbnb/lottie/RenderMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/airbnb/lottie/RenderMode;

    sget-object v5, Lcom/airbnb/lottie/RenderMode;->OooO00o:Lcom/airbnb/lottie/RenderMode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/airbnb/lottie/RenderMode;->OooO0O0:Lcom/airbnb/lottie/RenderMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/airbnb/lottie/RenderMode;->OooO0Oo:[Lcom/airbnb/lottie/RenderMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/RenderMode;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/RenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/RenderMode;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/RenderMode;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/RenderMode;->OooO0Oo:[Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/RenderMode;

    return-object v0
.end method
