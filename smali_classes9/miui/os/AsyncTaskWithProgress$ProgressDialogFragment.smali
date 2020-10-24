.class public Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source ""


# instance fields
.field private mTask:Lmiui/os/AsyncTaskWithProgress;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/String;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 3

    new-instance v0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    invoke-direct {v0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "task"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$300(Lmiui/os/AsyncTaskWithProgress;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$400(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$Listeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/os/AsyncTaskWithProgress$Listeners;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lmiui/os/AsyncTaskWithProgress;->access$200()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "task"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/os/AsyncTaskWithProgress;

    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->access$500(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$600(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$600(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$700(Lmiui/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$800(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->access$800(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$900(Lmiui/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$1000(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$1100(Lmiui/os/AsyncTaskWithProgress;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$1100(Lmiui/os/AsyncTaskWithProgress;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$1200(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$1300(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setProgress(I)V

    :cond_3
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$300(Lmiui/os/AsyncTaskWithProgress;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object p0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {p0}, Lmiui/os/AsyncTaskWithProgress;->access$400(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$Listeners;

    move-result-object p0

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

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lmiui/os/AsyncTaskWithProgress;->access$102(Lmiui/os/AsyncTaskWithProgress;Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiui/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/AsyncTaskWithProgress;->access$102(Lmiui/os/AsyncTaskWithProgress;Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

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
