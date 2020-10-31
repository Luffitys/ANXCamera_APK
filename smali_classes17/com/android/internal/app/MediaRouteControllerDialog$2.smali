.class Lcom/android/internal/app/MediaRouteControllerDialog$2;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MediaRouteControllerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mStopTrackingTouch:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/app/MediaRouteControllerDialog$2$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$2$1;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog$2;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->mStopTrackingTouch:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    if-eqz p3, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    # getter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$100(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    :cond_b
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    # getter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$300(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    # getter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$500(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->mStopTrackingTouch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1a

    :cond_14
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z
    invoke-static {v0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$302(Lcom/android/internal/app/MediaRouteControllerDialog;Z)Z

    :goto_1a
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    # getter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$500(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->mStopTrackingTouch:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
