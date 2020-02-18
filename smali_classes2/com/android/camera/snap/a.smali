.class public final synthetic Lcom/android/camera/snap/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/snap/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/snap/a;

    invoke-direct {v0}, Lcom/android/camera/snap/a;-><init>()V

    sput-object v0, Lcom/android/camera/snap/a;->INSTANCE:Lcom/android/camera/snap/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onThermalNotification(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/camera/snap/SnapService;->i(I)V

    return-void
.end method
