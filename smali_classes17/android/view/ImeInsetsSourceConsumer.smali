.class public final Landroid/view/ImeInsetsSourceConsumer;
.super Landroid/view/InsetsSourceConsumer;
.source "ImeInsetsSourceConsumer.java"


# instance fields
.field private mFocusedEditor:Landroid/view/inputmethod/EditorInfo;

.field private mIsRequestedVisibleAwaitingControl:Z

.field private mPreRenderedEditor:Landroid/view/inputmethod/EditorInfo;

.field private mShowOnNextImeRender:Z


# direct methods
.method public constructor <init>(Landroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/view/InsetsController;",
            ")V"
        }
    .end annotation

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/view/InsetsSourceConsumer;-><init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-void
.end method

.method public static areEditorsSimilar(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/EditorInfo;)Z
    .registers 7

    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1a

    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v2

    goto :goto_1b

    :cond_1a
    move v0, v3

    :goto_1b
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v4, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    and-int/2addr v0, v1

    if-nez v0, :cond_2d

    return v3

    :cond_2d
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_35

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_3b

    :cond_35
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v4, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-ne v1, v4, :cond_3c

    :cond_3b
    return v2

    :cond_3c
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_44

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_4c

    :cond_44
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_4d

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_4d

    :cond_4c
    return v3

    :cond_4d
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v4, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-eq v1, v4, :cond_ab

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_ab

    :cond_64
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    iget-object v4, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v4

    if-eq v1, v4, :cond_73

    return v3

    :cond_73
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    return v2

    :cond_86
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iget-object v4, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3

    :cond_ab
    :goto_ab
    return v2
.end method

.method private getImm()Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method private isDummyOrEmptyEditor(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 3

    if-eqz p1, :cond_d

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    if-gtz v0, :cond_b

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-gtz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private isServedEditorRendered()Z
    .registers 3

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mFocusedEditor:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_20

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mPreRenderedEditor:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_20

    invoke-direct {p0, v0}, Landroid/view/ImeInsetsSourceConsumer;->isDummyOrEmptyEditor(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mPreRenderedEditor:Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p0, v0}, Landroid/view/ImeInsetsSourceConsumer;->isDummyOrEmptyEditor(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_20

    :cond_17
    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mFocusedEditor:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mPreRenderedEditor:Landroid/view/inputmethod/EditorInfo;

    invoke-static {v0, v1}, Landroid/view/ImeInsetsSourceConsumer;->areEditorsSimilar(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    return v0

    :cond_20
    :goto_20
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public applyImeVisibility(Z)V
    .registers 3

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->applyImeVisibility(Z)V

    return-void
.end method

.method hide(ZI)V
    .registers 3

    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->hide()V

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->notifyHidden()V

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->removeSurface()V

    :cond_b
    return-void
.end method

.method protected isRequestedVisibleAwaitingControl()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->isRequestedVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method notifyHidden()V
    .registers 3

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->notifyImeHidden(Landroid/os/IBinder;)V

    return-void
.end method

.method public onPerceptible(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->reportPerceptible(Landroid/os/IBinder;Z)V

    :cond_16
    return-void
.end method

.method public onPreRendered(Landroid/view/inputmethod/EditorInfo;)V
    .registers 3

    iput-object p1, p0, Landroid/view/ImeInsetsSourceConsumer;->mPreRenderedEditor:Landroid/view/inputmethod/EditorInfo;

    iget-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mShowOnNextImeRender:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mShowOnNextImeRender:Z

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->isServedEditorRendered()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ImeInsetsSourceConsumer;->applyImeVisibility(Z)V

    :cond_13
    return-void
.end method

.method public onServedEditorChanged(Landroid/view/inputmethod/EditorInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ImeInsetsSourceConsumer;->isDummyOrEmptyEditor(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mShowOnNextImeRender:Z

    :cond_9
    iput-object p1, p0, Landroid/view/ImeInsetsSourceConsumer;->mFocusedEditor:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method

.method public onWindowFocusGained()V
    .registers 2

    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained()V

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->registerImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V

    return-void
.end method

.method public onWindowFocusLost()V
    .registers 2

    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->unregisterImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    return-void
.end method

.method public removeSurface()V
    .registers 3

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->removeImeSurface(Landroid/os/IBinder;)V

    :cond_13
    return-void
.end method

.method public requestShow(Z)I
    .registers 5

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    iput-boolean v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    :cond_9
    if-nez p1, :cond_39

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    if-eqz v0, :cond_22

    goto :goto_39

    :cond_22
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->requestImeShow(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v1, 0x2

    :goto_38
    return v1

    :cond_39
    :goto_39
    const/4 v0, 0x0

    return v0
.end method

.method public setControl(Landroid/view/InsetsSourceControl;[I[I)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)V

    if-nez p1, :cond_f

    iget-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->hide()V

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->removeSurface()V

    :cond_f
    return-void
.end method
