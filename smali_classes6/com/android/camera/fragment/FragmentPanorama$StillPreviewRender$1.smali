.class Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender$1;->this$1:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "FragmentPanorama"

    const-string v1, "onDrawFrame first frame"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender$1;->this$1:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentPanorama;->access$800(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender$1;->this$1:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentPanorama;->access$900(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
