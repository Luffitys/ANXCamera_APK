.class public final enum Lcom/airbnb/lottie/model/content/Mask$MaskMode;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum OooO00o:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public static final enum OooO0O0:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public static final enum OooO0OO:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public static final enum OooO0Oo:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field private static final synthetic OooO0o0:[Lcom/airbnb/lottie/model/content/Mask$MaskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    const-string v1, "MASK_MODE_ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->OooO00o:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    new-instance v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    const-string v1, "MASK_MODE_SUBTRACT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->OooO0O0:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    new-instance v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    const-string v1, "MASK_MODE_INTERSECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->OooO0OO:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    new-instance v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    const-string v1, "MASK_MODE_NONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->OooO0Oo:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    sget-object v6, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->OooO00o:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    aput-object v6, v1, v2

    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->OooO0O0:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->OooO0OO:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->OooO0o0:[Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->OooO0o0:[Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/Mask$MaskMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-object v0
.end method
