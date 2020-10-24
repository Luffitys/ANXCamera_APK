.class Lnet/majorkernelpanic/streaming/Session$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/Session;

.field final synthetic val$view:Lnet/majorkernelpanic/streaming/gl/SurfaceView;


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/Session;Lnet/majorkernelpanic/streaming/gl/SurfaceView;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/Session$1;->this$0:Lnet/majorkernelpanic/streaming/Session;

    iput-object p2, p0, Lnet/majorkernelpanic/streaming/Session$1;->val$view:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$1;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/Session;->access$000(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$1;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/Session;->access$000(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/Session$1;->val$view:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-virtual {v0, p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->setSurfaceView(Lnet/majorkernelpanic/streaming/gl/SurfaceView;)V

    :cond_0
    return-void
.end method
