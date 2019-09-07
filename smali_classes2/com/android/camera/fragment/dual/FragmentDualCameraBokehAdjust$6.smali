.class Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$6;
.super Ljava/lang/Object;
.source "FragmentDualCameraBokehAdjust.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->setFNumberText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$6;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$6;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$6;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;

    invoke-static {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->access$600(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method
