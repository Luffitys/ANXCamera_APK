.class public final synthetic Lcom/android/camera/zoommap/OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/zoommap/ZoomMapController;

.field public final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/zoommap/ZoomMapController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/zoommap/OooO00o;->OooO00o:Lcom/android/camera/zoommap/ZoomMapController;

    iput-boolean p2, p0, Lcom/android/camera/zoommap/OooO00o;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/zoommap/OooO00o;->OooO00o:Lcom/android/camera/zoommap/ZoomMapController;

    iget-boolean p0, p0, Lcom/android/camera/zoommap/OooO00o;->OooO0O0:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/zoommap/ZoomMapController;->OooO0oo(Z)V

    return-void
.end method
