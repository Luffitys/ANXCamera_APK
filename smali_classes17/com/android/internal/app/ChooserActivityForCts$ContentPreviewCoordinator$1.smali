.class Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$1;
.super Landroid/os/Handler;
.source "ChooserActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    goto :goto_74

    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_74

    :cond_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$LoadUriTask;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->mParentView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->access$100(Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;)Landroid/view/View;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$LoadUriTask;->mImageResourceId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;

    iget-object v4, v0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    if-nez v4, :cond_35

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    # invokes: Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->maybeHideContentPreview()V
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->access$000(Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;)V

    return-void

    :cond_35
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    # setter for: Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->mAtLeastOneLoaded:Z
    invoke-static {v4, v1}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->access$202(Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;Z)Z

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-array v1, v2, [F

    fill-array-data v1, :array_76

    const-string v2, "alpha"

    invoke-static {v3, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget v2, v0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    if-lez v2, :cond_74

    iget v2, v0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setExtraImageCount(I)V

    goto :goto_74

    :cond_6e
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    # invokes: Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->maybeHideContentPreview()V
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->access$000(Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;)V

    nop

    :cond_74
    :goto_74
    return-void

    nop

    :array_76
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
