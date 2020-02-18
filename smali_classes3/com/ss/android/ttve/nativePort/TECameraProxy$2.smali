.class Lcom/ss/android/ttve/nativePort/TECameraProxy$2;
.super Ljava/lang/Object;
.source "TECameraProxy.java"

# interfaces
.implements Lcom/ss/android/ttve/utils/CameraInstance$CameraOpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/nativePort/TECameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/nativePort/TECameraProxy;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/TECameraProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TECameraProxy$2;->this$0:Lcom/ss/android/ttve/nativePort/TECameraProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cameraReady()V
    .locals 3

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECameraProxy$2;->this$0:Lcom/ss/android/ttve/nativePort/TECameraProxy;

    invoke-static {}, Lcom/ss/android/ttve/nativePort/TECameraProxy;->access$100()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TECameraProxy;->access$300(Lcom/ss/android/ttve/nativePort/TECameraProxy;JI)I

    return-void
.end method
