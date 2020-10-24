.class public final synthetic Lcom/xiaomi/camera/device/OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final synthetic OooO00o:Lcom/xiaomi/camera/device/OooO0OO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/device/OooO0OO;

    invoke-direct {v0}, Lcom/xiaomi/camera/device/OooO0OO;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/device/OooO0OO;->OooO00o:Lcom/xiaomi/camera/device/OooO0OO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/camera/device/CameraService;->OooO00o(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
