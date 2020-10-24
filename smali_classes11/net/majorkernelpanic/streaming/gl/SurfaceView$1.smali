.class Lnet/majorkernelpanic/streaming/gl/SurfaceView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/gl/SurfaceView;


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/gl/SurfaceView;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$1;->this$0:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$1;->this$0:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->access$000(Lnet/majorkernelpanic/streaming/gl/SurfaceView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$1;->this$0:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_0
    return-void
.end method
