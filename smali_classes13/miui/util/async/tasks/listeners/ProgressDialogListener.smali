.class public Lmiui/util/async/tasks/listeners/ProgressDialogListener;
.super Lmiui/util/async/tasks/listeners/BaseTaskListener;
.source "ProgressDialogListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;
    }
.end annotation


# static fields
.field static final ALL_LISTENERS:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lmiui/util/async/tasks/listeners/ProgressDialogListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCancelable:Z

.field mCurrentProgress:I

.field mCurrentTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/util/async/Task<",
            "*>;>;"
        }
    .end annotation
.end field

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
    .registers 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->ALL_LISTENERS:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;)V
    .registers 4

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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->dismiss()V

    :cond_7
    sget-object v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->ALL_LISTENERS:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProgressDialogListener@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "ProgressDialogListener"

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProgressDialogListener@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->ALL_LISTENERS:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    invoke-direct {v2}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;-><init>()V

    iput-object v2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    invoke-virtual {v3, v2}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v3, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    iget-object v4, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3, v4, v1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3e} :catch_3f

    goto :goto_4d

    :catch_3f
    move-exception v1

    const-string v2, "cannot show dialog"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p2, p0}, Lmiui/util/async/Task;->removeListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;

    :goto_4d
    return-void
.end method

.method public onProgress(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;II)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mFragment:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    if-gez p3, :cond_14

    iget-boolean v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    if-nez v1, :cond_3c

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->setIndeterminate(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-eqz v0, :cond_3c

    iget-boolean v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    invoke-virtual {v0, v1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setIndeterminate(Z)V

    goto :goto_3c

    :cond_14
    iget-boolean v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    if-eqz v1, :cond_23

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->setIndeterminate(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-eqz v0, :cond_23

    iget-boolean v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    invoke-virtual {v0, v1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setIndeterminate(Z)V

    :cond_23
    iget v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMaxProgress:I

    if-eq v1, p3, :cond_31

    invoke-virtual {p0, p3}, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->setMaxProgress(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-eqz v0, :cond_31

    iget v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMaxProgress:I

    invoke-virtual {v0, v1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setMaxProgress(I)V

    :cond_31
    iget v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentProgress:I

    if-eq v1, p4, :cond_3c

    iput p4, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCurrentProgress:I

    if-eqz v0, :cond_3c

    invoke-virtual {v0, p4}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setProgress(I)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public setCancelable(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 2

    iput-boolean p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCancelable:Z

    return-object p0
.end method

.method public setIndeterminate(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 2

    iput-boolean p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mIndeterminate:Z

    return-object p0
.end method

.method public setMaxProgress(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 2

    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMaxProgress:I

    return-object p0
.end method

.method public setMessage(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 3

    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessageId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 3

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessage:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessageId:I

    return-object p0
.end method

.method public setProgressStyle(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 2

    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mProgressStyle:I

    return-object p0
.end method

.method public setTheme(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 2

    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTheme:I

    return-object p0
.end method

.method public setTitle(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 3

    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitleId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 3

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitle:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitleId:I

    return-object p0
.end method
