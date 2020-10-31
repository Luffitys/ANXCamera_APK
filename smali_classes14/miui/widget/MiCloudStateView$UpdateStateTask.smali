.class Lmiui/widget/MiCloudStateView$UpdateStateTask;
.super Landroid/os/AsyncTask;
.source "MiCloudStateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/MiCloudStateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateStateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field enabled:Z

.field syncing:Z

.field final synthetic this$0:Lmiui/widget/MiCloudStateView;

.field unsyncedCounts:[I


# direct methods
.method private constructor <init>(Lmiui/widget/MiCloudStateView;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/MiCloudStateView;Lmiui/widget/MiCloudStateView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/widget/MiCloudStateView$UpdateStateTask;-><init>(Lmiui/widget/MiCloudStateView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudStateView$UpdateStateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    iget-object v0, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    invoke-virtual {v0}, Lmiui/widget/MiCloudStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iput-boolean v1, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->enabled:Z

    iput-boolean v1, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->syncing:Z

    goto :goto_33

    :cond_12
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;
    invoke-static {v2}, Lmiui/widget/MiCloudStateView;->access$100(Lmiui/widget/MiCloudStateView;)Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    move-result-object v2

    invoke-interface {v2}, Lmiui/widget/MiCloudStateView$ISyncInfoProvider;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    iput-boolean v1, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->enabled:Z

    iput-boolean v1, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->syncing:Z

    goto :goto_33

    :cond_27
    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->enabled:Z

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->syncing:Z

    :goto_33
    iget-object v1, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    iget-boolean v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->syncing:Z

    # setter for: Lmiui/widget/MiCloudStateView;->mSyncing:Z
    invoke-static {v1, v2}, Lmiui/widget/MiCloudStateView;->access$202(Lmiui/widget/MiCloudStateView;Z)Z

    iget-boolean v1, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->enabled:Z

    if-eqz v1, :cond_54

    iget-boolean v1, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->syncing:Z

    if-nez v1, :cond_54

    iget-object v1, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;
    invoke-static {v1}, Lmiui/widget/MiCloudStateView;->access$100(Lmiui/widget/MiCloudStateView;)Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    invoke-virtual {v2}, Lmiui/widget/MiCloudStateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/widget/MiCloudStateView$ISyncInfoProvider;->getUnsyncedCount(Landroid/content/Context;)[I

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->unsyncedCounts:[I

    :cond_54
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudStateView$UpdateStateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    const/4 v1, 0x0

    # setter for: Lmiui/widget/MiCloudStateView;->mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;
    invoke-static {v0, v1}, Lmiui/widget/MiCloudStateView;->access$302(Lmiui/widget/MiCloudStateView;Lmiui/widget/MiCloudStateView$UpdateStateTask;)Lmiui/widget/MiCloudStateView$UpdateStateTask;

    iget-object v0, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    invoke-virtual {v0}, Lmiui/widget/MiCloudStateView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    iget-boolean v1, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->enabled:Z

    iget-boolean v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->syncing:Z

    iget-object v3, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->unsyncedCounts:[I

    # invokes: Lmiui/widget/MiCloudStateView;->updateLayout(ZZ[I)V
    invoke-static {v0, v1, v2, v3}, Lmiui/widget/MiCloudStateView;->access$400(Lmiui/widget/MiCloudStateView;ZZ[I)V

    iget-object v0, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z
    invoke-static {v0}, Lmiui/widget/MiCloudStateView;->access$500(Lmiui/widget/MiCloudStateView;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    const/4 v1, 0x0

    # setter for: Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z
    invoke-static {v0, v1}, Lmiui/widget/MiCloudStateView;->access$502(Lmiui/widget/MiCloudStateView;Z)Z

    iget-object v0, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/MiCloudStateView;->updateState(Z)V

    :cond_31
    return-void
.end method
