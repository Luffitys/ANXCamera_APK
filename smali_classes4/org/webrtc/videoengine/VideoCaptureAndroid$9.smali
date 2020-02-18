.class Lorg/webrtc/videoengine/VideoCaptureAndroid$9;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/videoengine/VideoCaptureAndroid;->setExposurePointOfInterest(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;FF)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$9;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iput p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$9;->val$x:F

    iput p3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$9;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$9;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$9;->val$x:F

    iget p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$9;->val$y:F

    invoke-static {v0, v1, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$900(Lorg/webrtc/videoengine/VideoCaptureAndroid;FF)V

    return-void
.end method
