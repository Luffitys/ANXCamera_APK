.class Lcom/android/camera/ui/zoom/ZoomRatioToggleView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$1;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ZoomRatioToggleView"

    const-string v1, "Macro mode not change"

    invoke-static {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$1;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-static {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->access$200(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V

    const-string p0, "run index updater "

    invoke-static {v0, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
