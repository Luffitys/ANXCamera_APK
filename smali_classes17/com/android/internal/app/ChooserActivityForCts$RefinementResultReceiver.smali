.class Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;
.super Landroid/os/ResultReceiver;
.source "ChooserActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivityForCts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefinementResultReceiver"
.end annotation


# instance fields
.field private mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

.field private mSelectedTarget:Lcom/android/internal/app/chooser/TargetInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0, p3}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;->mSelectedTarget:Lcom/android/internal/app/chooser/TargetInfo;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;->mSelectedTarget:Lcom/android/internal/app/chooser/TargetInfo;

    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

    const-string v1, "ChooserActivityForCts"

    if-nez v0, :cond_c

    const-string v0, "Destroyed RefinementResultReceiver received a result"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    if-nez p2, :cond_14

    const-string v0, "RefinementResultReceiver received null resultData"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    const/4 v2, -0x1

    if-eq p1, v2, :cond_37

    if-eqz p1, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown result code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sent to RefinementResultReceiver"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_33
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts;->onRefinementCanceled()V

    goto :goto_52

    :cond_37
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v2, v0, Landroid/content/Intent;

    if-eqz v2, :cond_4c

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;->mSelectedTarget:Lcom/android/internal/app/chooser/TargetInfo;

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ChooserActivityForCts;->onRefinementResult(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)V

    goto :goto_52

    :cond_4c
    const-string v2, "RefinementResultReceiver received RESULT_OK but no Intent in resultData with key Intent.EXTRA_INTENT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_52
    return-void
.end method
