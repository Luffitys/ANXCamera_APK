.class Lcom/android/camera/ThermalDetector$InstanceHolder;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sInstance:Lcom/android/camera/ThermalDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/camera/ThermalDetector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/ThermalDetector;-><init>(Lcom/android/camera/ThermalDetector$1;)V

    sput-object v0, Lcom/android/camera/ThermalDetector$InstanceHolder;->sInstance:Lcom/android/camera/ThermalDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/camera/ThermalDetector;
    .locals 1

    sget-object v0, Lcom/android/camera/ThermalDetector$InstanceHolder;->sInstance:Lcom/android/camera/ThermalDetector;

    return-object v0
.end method
