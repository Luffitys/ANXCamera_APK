.class public abstract Lmiui/os/AsyncTaskWithProgress;
.super Landroid/os/AsyncTask;
.source ""


# static fields
.field private static final sAllTasks:Ljava/util/HashMap;


# instance fields
.field private mCancelable:Z

.field private mCurrentProgress:I

.field private volatile mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mIndeterminate:Z

.field private final mListeners:Lmiui/os/AsyncTaskWithProgress$Listeners;

.field private mMaxProgress:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageId:I

.field private mProgressStyle:I

.field private mTheme:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mTheme:I

    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mTitleId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mMessageId:I

    iput-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    iput-boolean v0, p0, Lmiui/os/AsyncTaskWithProgress;->mCancelable:Z

    iput-boolean v0, p0, Lmiui/os/AsyncTaskWithProgress;->mIndeterminate:Z

    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mMaxProgress:I

    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mProgressStyle:I

    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mCurrentProgress:I

    iput-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    new-instance v0, Lmiui/os/AsyncTaskWithProgress$Listeners;

    invoke-direct {v0, p0, v1}, Lmiui/os/AsyncTaskWithProgress$Listeners;-><init>(Lmiui/os/AsyncTaskWithProgress;Lmiui/os/AsyncTaskWithProgress$1;)V

    iput-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mListeners:Lmiui/os/AsyncTaskWithProgress$Listeners;

    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method

.method static synthetic access$100(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 0

    iget-object p0, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    return-object p0
.end method

.method static synthetic access$1000(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 0

    iget p0, p0, Lmiui/os/AsyncTaskWithProgress;->mProgressStyle:I

    return p0
.end method

.method static synthetic access$102(Lmiui/os/AsyncTaskWithProgress;Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 0

    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    return-object p1
.end method

.method static synthetic access$1100(Lmiui/os/AsyncTaskWithProgress;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/os/AsyncTaskWithProgress;->mIndeterminate:Z

    return p0
.end method

.method static synthetic access$1200(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 0

    iget p0, p0, Lmiui/os/AsyncTaskWithProgress;->mMaxProgress:I

    return p0
.end method

.method static synthetic access$1300(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 0

    iget p0, p0, Lmiui/os/AsyncTaskWithProgress;->mCurrentProgress:I

    return p0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmiui/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/os/AsyncTaskWithProgress;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/os/AsyncTaskWithProgress;->mCancelable:Z

    return p0
.end method

.method static synthetic access$400(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$Listeners;
    .locals 0

    iget-object p0, p0, Lmiui/os/AsyncTaskWithProgress;->mListeners:Lmiui/os/AsyncTaskWithProgress$Listeners;

    return-object p0
.end method

.method static synthetic access$500(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 0

    iget p0, p0, Lmiui/os/AsyncTaskWithProgress;->mTheme:I

    return p0
.end method

.method static synthetic access$600(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 0

    iget p0, p0, Lmiui/os/AsyncTaskWithProgress;->mTitleId:I

    return p0
.end method

.method static synthetic access$700(Lmiui/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lmiui/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 0

    iget p0, p0, Lmiui/os/AsyncTaskWithProgress;->mMessageId:I

    return p0
.end method

.method static synthetic access$900(Lmiui/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lmiui/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private dismissDialog()V
    .locals 3

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mFragmentManager:Landroid/app/FragmentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTaskWithProgress@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCancelled()V
    .locals 3

    sget-object v0, Lmiui/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTaskWithProgress@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lmiui/os/AsyncTaskWithProgress;->dismissDialog()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    sget-object p1, Lmiui/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTaskWithProgress@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lmiui/os/AsyncTaskWithProgress;->dismissDialog()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTaskWithProgress@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmiui/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->mFragmentManager:Landroid/app/FragmentManager;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->newInstance(Ljava/lang/String;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget-boolean v2, p0, Lmiui/os/AsyncTaskWithProgress;->mCancelable:Z

    invoke-virtual {v1, v2}, Landroid/app/DialogFragment;->setCancelable(Z)V

    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget-object p0, p0, Lmiui/os/AsyncTaskWithProgress;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1, p0, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->mCurrentProgress:I

    iget-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget p0, p0, Lmiui/os/AsyncTaskWithProgress;->mCurrentProgress:I

    invoke-virtual {p1, p0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->setProgress(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setCancelable(Z)Lmiui/os/AsyncTaskWithProgress;
    .locals 0

    iput-boolean p1, p0, Lmiui/os/AsyncTaskWithProgress;->mCancelable:Z

    return-object p0
.end method

.method public setIndeterminate(Z)Lmiui/os/AsyncTaskWithProgress;
    .locals 0

    iput-boolean p1, p0, Lmiui/os/AsyncTaskWithProgress;->mIndeterminate:Z

    return-object p0
.end method

.method public setMaxProgress(I)Lmiui/os/AsyncTaskWithProgress;
    .locals 0

    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->mMaxProgress:I

    return-object p0
.end method

.method public setMessage(I)Lmiui/os/AsyncTaskWithProgress;
    .locals 0

    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->mMessageId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiui/os/AsyncTaskWithProgress;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mMessageId:I

    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setProgressStyle(I)Lmiui/os/AsyncTaskWithProgress;
    .locals 0

    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->mProgressStyle:I

    return-object p0
.end method

.method public setTheme(I)Lmiui/os/AsyncTaskWithProgress;
    .locals 0

    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->mTheme:I

    return-object p0
.end method

.method public setTitle(I)Lmiui/os/AsyncTaskWithProgress;
    .locals 0

    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->mTitleId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lmiui/os/AsyncTaskWithProgress;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->mTitleId:I

    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
