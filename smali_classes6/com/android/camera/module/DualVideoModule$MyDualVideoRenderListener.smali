.class Lcom/android/camera/module/DualVideoModule$MyDualVideoRenderListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/DualVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/DualVideoModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/DualVideoModule$MyDualVideoRenderListener;->this$0:Lcom/android/camera/module/DualVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutTypeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/DualVideoModule$MyDualVideoRenderListener;->this$0:Lcom/android/camera/module/DualVideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/DualVideoModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/DualVideoModule$MyDualVideoRenderListener;->this$0:Lcom/android/camera/module/DualVideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/DualVideoModule;->isRecordingPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/DualVideoModule$MyDualVideoRenderListener;->this$0:Lcom/android/camera/module/DualVideoModule;

    invoke-static {p0}, Lcom/android/camera/module/DualVideoModule;->access$200(Lcom/android/camera/module/DualVideoModule;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->hasMiniComposeType()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "value_preview_mini"

    goto :goto_0

    :cond_0
    const-string p0, "value_preview_equal"

    :goto_0
    const-string v0, "attr_compose_type"

    invoke-static {v0, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonAttr(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/android/camera/statistic/CameraStatUtils;->mLayoutType:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onRenderRequestNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/DualVideoModule$MyDualVideoRenderListener;->this$0:Lcom/android/camera/module/DualVideoModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    return-void
.end method

.method public onSubImageAvailable()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/DualVideoModule$MyDualVideoRenderListener;->this$0:Lcom/android/camera/module/DualVideoModule;

    invoke-static {v0}, Lcom/android/camera/module/DualVideoModule;->access$000(Lcom/android/camera/module/DualVideoModule;)Lcom/android/camera/dualvideo/render/RenderTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->subFrameAvailable()V

    iget-object v0, p0, Lcom/android/camera/module/DualVideoModule$MyDualVideoRenderListener;->this$0:Lcom/android/camera/module/DualVideoModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/DualVideoModule;->access$102(Lcom/android/camera/module/DualVideoModule;Z)Z

    iget-object p0, p0, Lcom/android/camera/module/DualVideoModule$MyDualVideoRenderListener;->this$0:Lcom/android/camera/module/DualVideoModule;

    invoke-virtual {p0}, Lcom/android/camera/module/DualVideoModule;->tryAnimBlackCover()V

    return-void
.end method
