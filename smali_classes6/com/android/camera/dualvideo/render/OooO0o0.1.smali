.class public final synthetic Lcom/android/camera/dualvideo/render/OooO0o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/dualvideo/render/CameraItemManager;

.field public final synthetic OooO0O0:Landroid/util/SparseIntArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItemManager;Landroid/util/SparseIntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/OooO0o0;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItemManager;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/OooO0o0;->OooO0O0:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/OooO0o0;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItemManager;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/OooO0o0;->OooO0O0:Landroid/util/SparseIntArray;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooO0O0(Landroid/util/SparseIntArray;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method
