.class public final synthetic Lcom/xiaomi/camera/device/callable/OooO0Oo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

.field public final synthetic OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/OooO0Oo;->OooO00o:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

    iput-object p2, p0, Lcom/xiaomi/camera/device/callable/OooO0Oo;->OooO0O0:Ljava/lang/String;

    iput p3, p0, Lcom/xiaomi/camera/device/callable/OooO0Oo;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OooO0Oo;->OooO00o:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OooO0Oo;->OooO0O0:Ljava/lang/String;

    iget p0, p0, Lcom/xiaomi/camera/device/callable/OooO0Oo;->OooO0OO:I

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->OooO0o(Ljava/lang/String;I)V

    return-void
.end method
