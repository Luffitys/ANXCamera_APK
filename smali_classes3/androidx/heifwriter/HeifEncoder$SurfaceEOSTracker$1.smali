.class Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;


# direct methods
.method constructor <init>(Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;)V
    .locals 0

    iput-object p1, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker$1;->this$1:Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker$1;->this$1:Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;

    iget-object p0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->this$0:Landroidx/heifwriter/HeifEncoder;

    iget-object p0, p0, Landroidx/heifwriter/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    :cond_0
    return-void
.end method
