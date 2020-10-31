.class public Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "ProgressDialogListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/tasks/listeners/ProgressDialogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogFragment"
.end annotation


# instance fields
.field private mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-eqz v0, :cond_19

    iget-boolean v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCancelable:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-object v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lmiui/util/async/Task;->cancel()V

    :cond_19
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v2, v2, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTheme:I

    invoke-direct {v0, v1, v2}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitleId:I

    if-eqz v1, :cond_24

    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitleId:I

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setTitle(I)V

    goto :goto_2b

    :cond_24
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-object v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2b
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessageId:I

    if-eqz v1, :cond_39

    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessageId:I

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setTitle(I)V

    goto :goto_40

    :cond_39
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-object v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_40
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mProgressStyle:I

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-boolean v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-boolean v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    if-eqz v1, :cond_62

    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMaxProgress:I

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMax(I)V

    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentProgress:I

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setProgress(I)V

    :cond_62
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-boolean v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCancelable:Z

    const/4 v2, -0x2

    if-eqz v1, :cond_7b

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v2, v1, p0}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_86

    :cond_7b
    const/4 v1, 0x0

    move-object v3, v1

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1, v3}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    :goto_86
    return-object v0
.end method

.method public onResume()V
    .registers 6

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    sget-object v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->ALL_LISTENERS:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ProgressDialogListener"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_58

    :cond_28
    iput-object p0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-object v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lmiui/util/async/Task;

    :cond_40
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Lmiui/util/async/Task;->isRunning()Z

    move-result v3

    if-nez v3, :cond_58

    :cond_48
    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->dismiss()V

    sget-object v3, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->ALL_LISTENERS:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    :goto_58
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    iput-object v1, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iput-object v1, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragmentManager:Landroid/app/FragmentManager;

    iput-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    :cond_10
    return-void
.end method

.method setIndeterminate(Z)V
    .registers 4

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v1, v0, Lmiui/app/ProgressDialog;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Lmiui/app/ProgressDialog;

    invoke-virtual {v1, p1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    :cond_e
    return-void
.end method

.method setMaxProgress(I)V
    .registers 4

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v1, v0, Lmiui/app/ProgressDialog;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Lmiui/app/ProgressDialog;

    invoke-virtual {v1, p1}, Lmiui/app/ProgressDialog;->setMax(I)V

    :cond_e
    return-void
.end method

.method setProgress(I)V
    .registers 4

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v1, v0, Lmiui/app/ProgressDialog;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Lmiui/app/ProgressDialog;

    invoke-virtual {v1, p1}, Lmiui/app/ProgressDialog;->setProgress(I)V

    :cond_e
    return-void
.end method
