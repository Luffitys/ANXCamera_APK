.class Lmiui/os/AsyncTaskWithProgress$Listeners;
.super Ljava/lang/Object;
.source "AsyncTaskWithProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/AsyncTaskWithProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listeners"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/os/AsyncTaskWithProgress;


# direct methods
.method private constructor <init>(Lmiui/os/AsyncTaskWithProgress;)V
    .registers 2

    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiui/os/AsyncTaskWithProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/os/AsyncTaskWithProgress;Lmiui/os/AsyncTaskWithProgress$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/os/AsyncTaskWithProgress$Listeners;-><init>(Lmiui/os/AsyncTaskWithProgress;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lmiui/os/AsyncTaskWithProgress$Listeners;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$100(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiui/os/AsyncTaskWithProgress;

    # getter for: Lmiui/os/AsyncTaskWithProgress;->mFragment:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->access$100(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1f

    if-ne p1, v0, :cond_1f

    const/4 v1, -0x2

    if-ne p2, v1, :cond_1f

    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiui/os/AsyncTaskWithProgress;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/os/AsyncTaskWithProgress;->cancel(Z)Z

    :cond_1f
    return-void
.end method
