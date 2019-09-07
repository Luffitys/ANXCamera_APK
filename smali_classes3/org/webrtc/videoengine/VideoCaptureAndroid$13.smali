.class Lorg/webrtc/videoengine/VideoCaptureAndroid$13;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/videoengine/VideoCaptureAndroid;->setPreviewRotation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;I)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$13;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iput p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$13;->val$rotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$13;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iget p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$13;->val$rotation:I

    invoke-static {v0, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$1200(Lorg/webrtc/videoengine/VideoCaptureAndroid;I)V

    return-void
.end method
