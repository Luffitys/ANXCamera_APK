.class public Lcom/xiaomi/camera/device/CameraHandlerThread;
.super Landroid/os/HandlerThread;
.source ""


# instance fields
.field private final mCookieStore:Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Lcom/xiaomi/camera/device/CameraHandlerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;-><init>(Lcom/xiaomi/camera/device/CameraHandlerThread$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/device/CameraHandlerThread;->mCookieStore:Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    return-void
.end method


# virtual methods
.method public getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraHandlerThread;->mCookieStore:Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    return-object p0
.end method
