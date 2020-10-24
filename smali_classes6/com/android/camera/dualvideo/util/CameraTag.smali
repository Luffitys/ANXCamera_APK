.class public final enum Lcom/android/camera/dualvideo/util/CameraTag;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/dualvideo/util/CameraTag;

.field public static final enum MAIN:Lcom/android/camera/dualvideo/util/CameraTag;

.field public static final enum SUB:Lcom/android/camera/dualvideo/util/CameraTag;


# instance fields
.field private mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/camera/dualvideo/util/CameraTag;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/dualvideo/util/CameraTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/util/CameraTag;->MAIN:Lcom/android/camera/dualvideo/util/CameraTag;

    new-instance v0, Lcom/android/camera/dualvideo/util/CameraTag;

    const-string v1, "SUB"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/android/camera/dualvideo/util/CameraTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/util/CameraTag;->SUB:Lcom/android/camera/dualvideo/util/CameraTag;

    new-array v1, v4, [Lcom/android/camera/dualvideo/util/CameraTag;

    sget-object v4, Lcom/android/camera/dualvideo/util/CameraTag;->MAIN:Lcom/android/camera/dualvideo/util/CameraTag;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/camera/dualvideo/util/CameraTag;->$VALUES:[Lcom/android/camera/dualvideo/util/CameraTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/camera/dualvideo/util/CameraTag;->mIndex:I

    return-void
.end method

.method static synthetic OooO00o(ILcom/android/camera/dualvideo/util/CameraTag;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/CameraTag;->getIndex()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getTagByIndex(I)Lcom/android/camera/dualvideo/util/CameraTag;
    .locals 2

    invoke-static {}, Lcom/android/camera/dualvideo/util/CameraTag;->values()[Lcom/android/camera/dualvideo/util/CameraTag;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/util/OooO0OO;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/util/OooO0OO;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/util/CameraTag;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/dualvideo/util/CameraTag;
    .locals 1

    const-class v0, Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/util/CameraTag;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/dualvideo/util/CameraTag;
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/util/CameraTag;->$VALUES:[Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-virtual {v0}, [Lcom/android/camera/dualvideo/util/CameraTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/dualvideo/util/CameraTag;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/util/CameraTag;->mIndex:I

    return p0
.end method
