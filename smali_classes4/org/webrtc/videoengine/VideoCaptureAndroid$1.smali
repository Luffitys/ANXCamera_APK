.class Lorg/webrtc/videoengine/VideoCaptureAndroid$1;
.super Landroid/view/OrientationEventListener;
.source "VideoCaptureAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/videoengine/VideoCaptureAndroid;-><init>(Landroid/content/Context;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, "WEBRTC-JC-VideoCaptureAndroid"

    const-string p1, "The device rotation angle is unknown."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Lorg/webrtc/videoengine/VideoCaptureAndroid;)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    invoke-static {v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Lorg/webrtc/videoengine/VideoCaptureAndroid;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$002(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
