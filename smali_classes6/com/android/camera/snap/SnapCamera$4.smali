.class Lcom/android/camera/snap/SnapCamera$4;
.super Landroid/view/OrientationEventListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapCamera;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera$4;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera$4;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {p0}, Lcom/android/camera/snap/SnapCamera;->access$700(Lcom/android/camera/snap/SnapCamera;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/snap/SnapCamera;->access$702(Lcom/android/camera/snap/SnapCamera;I)I

    return-void
.end method
