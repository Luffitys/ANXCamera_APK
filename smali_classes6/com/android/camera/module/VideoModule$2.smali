.class Lcom/android/camera/module/VideoModule$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {p0, p1}, Lcom/android/camera/module/VideoModule;->access$000(Lcom/android/camera/module/VideoModule;Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera2/autozoom/AutoZoomCaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule$2;->accept(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V

    return-void
.end method
