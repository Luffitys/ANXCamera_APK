.class public final synthetic Lcom/xiaomi/camera/device/callable/OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/xiaomi/camera/device/callable/CameraCallable;

.field public final synthetic OooO0O0:Lcom/xiaomi/camera/device/callable/CallableReturn;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/device/callable/CameraCallable;Lcom/xiaomi/camera/device/callable/CallableReturn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/OooO00o;->OooO00o:Lcom/xiaomi/camera/device/callable/CameraCallable;

    iput-object p2, p0, Lcom/xiaomi/camera/device/callable/OooO00o;->OooO0O0:Lcom/xiaomi/camera/device/callable/CallableReturn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OooO00o;->OooO00o:Lcom/xiaomi/camera/device/callable/CameraCallable;

    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/OooO00o;->OooO0O0:Lcom/xiaomi/camera/device/callable/CallableReturn;

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->OooO0O0(Lcom/xiaomi/camera/device/callable/CallableReturn;)V

    return-void
.end method
