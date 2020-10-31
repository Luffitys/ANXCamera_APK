.class Landroid/widget/Magnifier$InternalPopupWindow$1;
.super Ljava/lang/Object;
.source "Magnifier.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Magnifier$InternalPopupWindow;->setupOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Magnifier$InternalPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow$1;->this$0:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow$1;->this$0:Landroid/widget/Magnifier$InternalPopupWindow;

    # invokes: Landroid/widget/Magnifier$InternalPopupWindow;->drawOverlay()V
    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->access$2400(Landroid/widget/Magnifier$InternalPopupWindow;)V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow$1;->this$0:Landroid/widget/Magnifier$InternalPopupWindow;

    # getter for: Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;
    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->access$2500(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/widget/Magnifier$Callback;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow$1;->this$0:Landroid/widget/Magnifier$InternalPopupWindow;

    # invokes: Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V
    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->access$2600(Landroid/widget/Magnifier$InternalPopupWindow;)V

    :cond_12
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method
