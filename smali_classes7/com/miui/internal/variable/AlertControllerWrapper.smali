.class public Lcom/miui/internal/variable/AlertControllerWrapper;
.super Lcom/android/internal/app/AlertController;
.source ""


# instance fields
.field mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

.field public mHapticFeedbackEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    new-instance v0, Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/internal/app/AlertControllerImpl;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getCheckedItems()[Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0}, Lcom/miui/internal/app/AlertControllerImpl;->getCheckedItems()[Z

    move-result-object p0

    return-object p0
.end method

.method public getImpl()Lcom/miui/internal/app/AlertControllerImpl;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    return-object p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0}, Lcom/miui/internal/app/AlertControllerImpl;->getListView()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0}, Lcom/miui/internal/app/AlertControllerImpl;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public installContent()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0}, Lcom/miui/internal/app/AlertControllerImpl;->installContent()V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0}, Lcom/miui/internal/app/AlertControllerImpl;->isChecked()Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/AlertControllerImpl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/AlertControllerImpl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0}, Lcom/miui/internal/app/AlertControllerImpl;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0}, Lcom/miui/internal/app/AlertControllerImpl;->onStop()V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/app/AlertControllerImpl;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/AlertControllerImpl;->setCheckBox(ZLjava/lang/CharSequence;)V

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mAlertControllerImpl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setView(Landroid/view/View;)V

    return-void
.end method
