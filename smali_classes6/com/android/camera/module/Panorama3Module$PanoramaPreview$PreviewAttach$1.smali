.class Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$1;->this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    iput p2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$1;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$1;->this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$1;->val$resultCode:I

    invoke-static {v0, p0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->access$5500(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;I)V

    return-void
.end method
