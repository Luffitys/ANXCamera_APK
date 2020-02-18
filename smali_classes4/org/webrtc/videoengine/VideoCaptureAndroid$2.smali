.class Lorg/webrtc/videoengine/VideoCaptureAndroid$2;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/videoengine/VideoCaptureAndroid;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    invoke-static {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$100(Lorg/webrtc/videoengine/VideoCaptureAndroid;)Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;

    move-result-object p0

    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;->quitLoop()V

    return-void
.end method
