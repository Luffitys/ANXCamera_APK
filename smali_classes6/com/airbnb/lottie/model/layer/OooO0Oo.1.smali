.class synthetic Lcom/airbnb/lottie/model/layer/OooO0Oo;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic OooO00o:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/lottie/model/layer/OooO0Oo;->OooO00o:[I

    :try_start_0
    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->OooO0O0:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/airbnb/lottie/model/layer/OooO0Oo;->OooO00o:[I

    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->OooO0OO:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
