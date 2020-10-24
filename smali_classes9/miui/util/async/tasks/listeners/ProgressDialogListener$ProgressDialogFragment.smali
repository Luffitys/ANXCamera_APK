.class public Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCancelable:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/util/async/Task;->cancel()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTheme:I

    invoke-direct {p1, v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitleId:I

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lmiui/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessageId:I

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mProgressStyle:I

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-boolean v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-boolean v1, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    if-eqz v1, :cond_3

    iget v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMaxProgress:I

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentProgress:I

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setProgress(I)V

    :cond_3
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-boolean v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCancelable:Z

    const/4 v1, -0x2

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v1, v0, p0}, Lmiui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    invoke-virtual {p1, v1, p0, p0}, Lmiui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p0, 0x0

    :goto_2
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    sget-object v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->ALL_LISTENERS:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ProgressDialogListener"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_0
    iput-object p0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-object v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lmiui/util/async/Task;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lmiui/util/async/Task;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    sget-object v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->ALL_LISTENERS:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    iput-object v0, p1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragmentManager:Landroid/app/FragmentManager;

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->mListener:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    :cond_0
    return-void
.end method

.method setIndeterminate(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    instance-of v0, p0, Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    check-cast p0, Lmiui/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    :cond_0
    return-void
.end method

.method setMaxProgress(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    instance-of v0, p0, Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    check-cast p0, Lmiui/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lmiui/app/ProgressDialog;->setMax(I)V

    :cond_0
    return-void
.end method

.method setProgress(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    instance-of v0, p0, Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    check-cast p0, Lmiui/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lmiui/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method
