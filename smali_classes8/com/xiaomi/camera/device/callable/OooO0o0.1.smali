.class public final synthetic Lcom/xiaomi/camera/device/callable/OooO0o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

.field public final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/OooO0o0;->OooO00o:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

    iput-object p2, p0, Lcom/xiaomi/camera/device/callable/OooO0o0;->OooO0O0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OooO0o0;->OooO00o:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/OooO0o0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->OooO0oo(Ljava/lang/String;)V

    return-void
.end method
