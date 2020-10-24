.class Lcom/android/camera2/autozoom/AutoZoomView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera2/autozoom/AutoZoomView;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/camera2/autozoom/AutoZoomView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/autozoom/AutoZoomView$1;->this$0:Lcom/android/camera2/autozoom/AutoZoomView;

    iput p2, p0, Lcom/android/camera2/autozoom/AutoZoomView$1;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView$1;->this$0:Lcom/android/camera2/autozoom/AutoZoomView;

    iget p0, p0, Lcom/android/camera2/autozoom/AutoZoomView$1;->val$visibility:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
