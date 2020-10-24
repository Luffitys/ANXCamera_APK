.class public final enum Lcom/android/camera2/CameraPreferredMode;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera2/CameraPreferredMode;

.field public static final enum HIGH_QUALITY_MODE:Lcom/android/camera2/CameraPreferredMode;

.field public static final enum PERFORMANCE_MODE:Lcom/android/camera2/CameraPreferredMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/camera2/CameraPreferredMode;

    const-string v1, "HIGH_QUALITY_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera2/CameraPreferredMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera2/CameraPreferredMode;->HIGH_QUALITY_MODE:Lcom/android/camera2/CameraPreferredMode;

    new-instance v0, Lcom/android/camera2/CameraPreferredMode;

    const-string v1, "PERFORMANCE_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/camera2/CameraPreferredMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera2/CameraPreferredMode;->PERFORMANCE_MODE:Lcom/android/camera2/CameraPreferredMode;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/camera2/CameraPreferredMode;

    sget-object v4, Lcom/android/camera2/CameraPreferredMode;->HIGH_QUALITY_MODE:Lcom/android/camera2/CameraPreferredMode;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/camera2/CameraPreferredMode;->$VALUES:[Lcom/android/camera2/CameraPreferredMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera2/CameraPreferredMode;
    .locals 1

    const-class v0, Lcom/android/camera2/CameraPreferredMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/CameraPreferredMode;

    return-object p0
.end method

.method public static values()[Lcom/android/camera2/CameraPreferredMode;
    .locals 1

    sget-object v0, Lcom/android/camera2/CameraPreferredMode;->$VALUES:[Lcom/android/camera2/CameraPreferredMode;

    invoke-virtual {v0}, [Lcom/android/camera2/CameraPreferredMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera2/CameraPreferredMode;

    return-object v0
.end method
