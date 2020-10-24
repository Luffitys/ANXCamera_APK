.class public Lmiui/util/async/tasks/listeners/ProgressDialogListener;
.super Lmiui/util/async/tasks/listeners/BaseTaskListener;
.source ""


# static fields
.field static final ALL_LISTENERS:Ljava/util/LinkedHashMap;


# instance fields
.field mCancelable:Z

.field mCurrentProgress:I

.field mCurrentTask:Ljava/lang/ref/WeakReference;

.field mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

.field mFragmentManager:Landroid/app/FragmentManager;

.field mIndeterminate:Z

.field mMaxProgress:I

.field mMessage:Ljava/lang/CharSequence;

.field mMessageId:I

.field mProgressStyle:I

.field mTheme:I

.field mTitle:Ljava/lang/CharSequence;

.field mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->ALL_LISTENERS:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 2

    invoke-direct {p0}, Lmiui/util/async/tasks/listeners/BaseTaskListener;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTheme:I

    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitleId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitle:Ljava/lang/CharSequence;

    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessageId:I

    iput-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessage:Ljava/lang/CharSequence;

    iput-boolean v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCancelable:Z

    iput-boolean v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMaxProgress:I

    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mProgressStyle:I

    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentProgress:I

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public onFinalize(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 1

    iget-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object p1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->ALL_LISTENERS:Ljava/util/LinkedHashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ProgressDialogListener@"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 3

    const-string p1, "ProgressDialogListener"

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgressDialogListener@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->ALL_LISTENERS:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    invoke-direct {v1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;-><init>()V

    iput-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    invoke-virtual {v2, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    iget-object v2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1, v2, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "cannot show dialog"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p2, p0}, Lmiui/util/async/Task;->removeListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;

    :goto_0
    return-void
.end method

.method public onProgress(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;II)V
    .locals 0

    iget-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    iget-boolean p2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    if-gez p3, :cond_0

    if-nez p2, :cond_3

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->setIndeterminate(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-eqz p1, :cond_3

    iget-boolean p0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    invoke-virtual {p1, p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setIndeterminate(Z)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->setIndeterminate(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    invoke-virtual {p1, p2}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setIndeterminate(Z)V

    :cond_1
    iget p2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMaxProgress:I

    if-eq p2, p3, :cond_2

    invoke-virtual {p0, p3}, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->setMaxProgress(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-eqz p1, :cond_2

    iget p2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMaxProgress:I

    invoke-virtual {p1, p2}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setMaxProgress(I)V

    :cond_2
    iget p2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentProgress:I

    if-eq p2, p4, :cond_3

    iput p4, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentProgress:I

    if-eqz p1, :cond_3

    invoke-virtual {p1, p4}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setProgress(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setCancelable(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 0

    iput-boolean p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCancelable:Z

    return-object p0
.end method

.method public setIndeterminate(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 0

    iput-boolean p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    return-object p0
.end method

.method public setMaxProgress(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 0

    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMaxProgress:I

    return-object p0
.end method

.method public setMessage(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 0

    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessageId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 0

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessage:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessageId:I

    return-object p0
.end method

.method public setProgressStyle(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 0

    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mProgressStyle:I

    return-object p0
.end method

.method public setTheme(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 0

    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTheme:I

    return-object p0
.end method

.method public setTitle(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 0

    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitleId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .locals 0

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitle:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitleId:I

    return-object p0
.end method
