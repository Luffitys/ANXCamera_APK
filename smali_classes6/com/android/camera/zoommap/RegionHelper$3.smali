.class Lcom/android/camera/zoommap/RegionHelper$3;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/zoommap/RegionHelper;

.field final synthetic val$hidden:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/android/camera/zoommap/RegionHelper;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/zoommap/RegionHelper$3;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    iput-object p2, p0, Lcom/android/camera/zoommap/RegionHelper$3;->val$hidden:Ljava/lang/Boolean;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper$3;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    invoke-static {p1, p3}, Lcom/android/camera/zoommap/RegionHelper;->access$202(Lcom/android/camera/zoommap/RegionHelper;I)I

    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper$3;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    invoke-static {p1}, Lcom/android/camera/zoommap/RegionHelper;->access$300(Lcom/android/camera/zoommap/RegionHelper;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/zoommap/RegionHelper$3;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    invoke-static {p2}, Lcom/android/camera/zoommap/RegionHelper;->access$200(Lcom/android/camera/zoommap/RegionHelper;)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper$3;->val$hidden:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    const-string p1, "RegionHelper"

    const-string p2, "hidden zoom map view"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/zoommap/RegionHelper$3;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    invoke-static {p0}, Lcom/android/camera/zoommap/RegionHelper;->access$300(Lcom/android/camera/zoommap/RegionHelper;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
