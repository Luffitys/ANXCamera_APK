.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$CameraAction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xa1


# virtual methods
.method public abstract isBlockSnap()Z
.end method

.method public abstract isDoingAction()Z
.end method

.method public abstract isRecording()Z
.end method

.method public isRecordingPaused()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCameraPickerClicked(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onReviewCancelClicked()V
.end method

.method public abstract onReviewDoneClicked()V
.end method

.method public abstract onShutterButtonClick(I)V
.end method

.method public abstract onShutterButtonFocus(ZI)V
.end method

.method public abstract onShutterButtonLongClick()Z
.end method

.method public abstract onShutterButtonLongClickCancel(Z)V
.end method

.method public abstract onThumbnailClicked(Landroid/view/View;)V
.end method
