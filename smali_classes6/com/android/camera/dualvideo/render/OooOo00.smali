.class public final synthetic Lcom/android/camera/dualvideo/render/OooOo00;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/dualvideo/render/CameraItemManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/OooOo00;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItemManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/OooOo00;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItemManager;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooOOO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method
