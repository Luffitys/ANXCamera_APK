.class Lcom/android/camera/dualvideo/render/RegionHelper$4;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/render/RegionHelper;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/render/RegionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper$4;->this$0:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper$4;->this$0:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-static {p1, p3}, Lcom/android/camera/dualvideo/render/RegionHelper;->access$402(Lcom/android/camera/dualvideo/render/RegionHelper;I)I

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RegionHelper$4;->this$0:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-static {p0}, Lcom/android/camera/dualvideo/render/RegionHelper;->access$300(Lcom/android/camera/dualvideo/render/RegionHelper;)Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;->onUpdated()V

    return-void
.end method
