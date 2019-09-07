.class Lorg/webrtc/videoengine/VideoCaptureAndroid$10;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/videoengine/VideoCaptureAndroid;->setFlashState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Z)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$10;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iput-boolean p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$10;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$10;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iget-boolean p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$10;->val$state:Z

    invoke-static {v0, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$1000(Lorg/webrtc/videoengine/VideoCaptureAndroid;Z)V

    return-void
.end method
