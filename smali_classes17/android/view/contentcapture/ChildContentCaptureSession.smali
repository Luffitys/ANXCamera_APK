.class final Landroid/view/contentcapture/ChildContentCaptureSession;
.super Landroid/view/contentcapture/ContentCaptureSession;
.source "ChildContentCaptureSession.java"


# instance fields
.field private final mParent:Landroid/view/contentcapture/ContentCaptureSession;


# direct methods
.method protected constructor <init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/contentcapture/ContentCaptureContext;)V
    .registers 3

    invoke-direct {p0, p2}, Landroid/view/contentcapture/ContentCaptureSession;-><init>(Landroid/view/contentcapture/ContentCaptureContext;)V

    iput-object p1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    return-void
.end method


# virtual methods
.method flush(I)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->flush(I)V

    return-void
.end method

.method getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    instance-of v1, v0, Landroid/view/contentcapture/MainContentCaptureSession;

    if-eqz v1, :cond_9

    check-cast v0, Landroid/view/contentcapture/MainContentCaptureSession;

    return-object v0

    :cond_9
    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    return-object v0
.end method

.method internalNotifySessionPaused()V
    .registers 2

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->notifySessionPaused()V

    return-void
.end method

.method internalNotifySessionResumed()V
    .registers 2

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->notifySessionResumed()V

    return-void
.end method

.method internalNotifyViewAppeared(Landroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    return-void
.end method

.method internalNotifyViewDisappeared(Landroid/view/autofill/AutofillId;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V

    return-void
.end method

.method internalNotifyViewInsetsChanged(Landroid/graphics/Insets;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewInsetsChanged(ILandroid/graphics/Insets;)V

    return-void
.end method

.method internalNotifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public internalNotifyViewTreeEvent(Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewTreeEvent(IZ)V

    return-void
.end method

.method isContentCaptureEnabled()Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
    .registers 6

    new-instance v0, Landroid/view/contentcapture/ChildContentCaptureSession;

    invoke-direct {v0, p0, p1}, Landroid/view/contentcapture/ChildContentCaptureSession;-><init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/contentcapture/ContentCaptureContext;)V

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    iget v3, v0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v1, v2, v3, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V

    return-object v0
.end method

.method onDestroy()V
    .registers 4

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    iget v1, v1, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    iget v2, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyChildSessionFinished(II)V

    return-void
.end method

.method public updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V

    return-void
.end method
