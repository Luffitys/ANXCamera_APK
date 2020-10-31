.class public Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "AsyncTaskWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/AsyncTaskWithProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogFragment"
.end annotation


# instance fields
.field private mTask:Lmiui/os/AsyncTaskWithProgress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/os/AsyncTaskWithProgress<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/String;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .registers 4

    new-instance v0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    invoke-direct {v0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "task"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_13

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mCancelable:Z
    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$300(Lmiui/os/AsyncTaskWithProgress;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mListeners:Lmiui/os/AsyncTaskWithProgress$Listeners;
    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$400(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$Listeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/os/AsyncTaskWithProgress$Listeners;->onCancel(Landroid/content/DialogInterface;)V

    :cond_13
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    # getter for: Lmiui/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;
    invoke-static {}, Lmiui/os/AsyncTaskWithProgress;->access$200()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "task"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/os/AsyncTaskWithProgress;

    iput-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_29
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mTheme:I
    invoke-static {v2}, Lmiui/os/AsyncTaskWithProgress;->access$500(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mTitleId:I
    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->access$600(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mTitleId:I
    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->access$600(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setTitle(I)V

    goto :goto_33

    :cond_2a
    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->access$700(Lmiui/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_33
    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mMessageId:I
    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->access$800(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {p0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mMessageId:I
    invoke-static {v2}, Lmiui/os/AsyncTaskWithProgress;->access$800(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_56

    :cond_4d
    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->access$900(Lmiui/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_56
    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mProgressStyle:I
    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->access$1000(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mIndeterminate:Z
    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->access$1100(Lmiui/os/AsyncTaskWithProgress;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mIndeterminate:Z
    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->access$1100(Lmiui/os/AsyncTaskWithProgress;)Z

    move-result v1

    if-nez v1, :cond_82

    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mMaxProgress:I
    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->access$1200(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMax(I)V

    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mCurrentProgress:I
    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->access$1300(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setProgress(I)V

    :cond_82
    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mCancelable:Z
    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->access$300(Lmiui/os/AsyncTaskWithProgress;)Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_a3

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mListeners:Lmiui/os/AsyncTaskWithProgress$Listeners;
    invoke-static {v3}, Lmiui/os/AsyncTaskWithProgress;->access$400(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$Listeners;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_ae

    :cond_a3
    const/4 v1, 0x0

    move-object v3, v1

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1, v3}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    :goto_ae
    return-object v0
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_a

    # setter for: Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
    invoke-static {v0, p0}, Lmiui/os/AsyncTaskWithProgress;->access$102(Lmiui/os/AsyncTaskWithProgress;Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    :cond_a
    return-void
.end method

.method public onStop()V
    .registers 3

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    # setter for: Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
    invoke-static {v0, v1}, Lmiui/os/AsyncTaskWithProgress;->access$102(Lmiui/os/AsyncTaskWithProgress;Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    :cond_8
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method

.method setProgress(I)V
    .registers 4

    invoke-virtual {p0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v1, v0, Lmiui/app/ProgressDialog;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Lmiui/app/ProgressDialog;

    invoke-virtual {v1, p1}, Lmiui/app/ProgressDialog;->setProgress(I)V

    :cond_e
    return-void
.end method
