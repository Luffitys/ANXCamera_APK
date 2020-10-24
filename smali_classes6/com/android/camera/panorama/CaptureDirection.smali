.class public final enum Lcom/android/camera/panorama/CaptureDirection;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/panorama/CaptureDirection;

.field public static final enum HORIZONTAL:Lcom/android/camera/panorama/CaptureDirection;

.field public static final enum VERTICAL:Lcom/android/camera/panorama/CaptureDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/camera/panorama/CaptureDirection;

    const-string v1, "VERTICAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/panorama/CaptureDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/panorama/CaptureDirection;->VERTICAL:Lcom/android/camera/panorama/CaptureDirection;

    new-instance v0, Lcom/android/camera/panorama/CaptureDirection;

    const-string v1, "HORIZONTAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/camera/panorama/CaptureDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/panorama/CaptureDirection;->HORIZONTAL:Lcom/android/camera/panorama/CaptureDirection;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/camera/panorama/CaptureDirection;

    sget-object v4, Lcom/android/camera/panorama/CaptureDirection;->VERTICAL:Lcom/android/camera/panorama/CaptureDirection;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/camera/panorama/CaptureDirection;->$VALUES:[Lcom/android/camera/panorama/CaptureDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/panorama/CaptureDirection;
    .locals 1

    const-class v0, Lcom/android/camera/panorama/CaptureDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/panorama/CaptureDirection;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/panorama/CaptureDirection;
    .locals 1

    sget-object v0, Lcom/android/camera/panorama/CaptureDirection;->$VALUES:[Lcom/android/camera/panorama/CaptureDirection;

    invoke-virtual {v0}, [Lcom/android/camera/panorama/CaptureDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/panorama/CaptureDirection;

    return-object v0
.end method
