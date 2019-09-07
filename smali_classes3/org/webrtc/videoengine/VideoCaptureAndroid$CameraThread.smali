.class Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;
.super Ljava/lang/Thread;
.source "VideoCaptureAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/videoengine/VideoCaptureAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraThread"
.end annotation


# instance fields
.field private handlerExchanger:Ljava/util/concurrent/Exchanger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Exchanger<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;


# direct methods
.method public constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Exchanger<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;->handlerExchanger:Ljava/util/concurrent/Exchanger;

    return-void
.end method


# virtual methods
.method public quitLoop()V
    .locals 0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;->handlerExchanger:Ljava/util/concurrent/Exchanger;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$200(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
