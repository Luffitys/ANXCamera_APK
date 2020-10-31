.class Landroid/app/Activity$1;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Landroid/view/Window$WindowControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterPictureInPictureModeIfPossible()V
    .registers 2

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->enterPictureInPictureMode()V

    :cond_f
    return-void
.end method

.method public isTaskRoot()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/app/Activity;->access$000(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityTaskManager;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_14

    if-ltz v1, :cond_13

    move v0, v3

    :cond_13
    return v0

    :catch_14
    move-exception v1

    return v0
.end method

.method public toggleFreeformWindowingMode()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/app/Activity;->access$000(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    return-void
.end method

.method public updateNavigationBarColor(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;
    invoke-static {v0}, Landroid/app/Activity;->access$100(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;
    invoke-static {v0}, Landroid/app/Activity;->access$100(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public updateStatusBarColor(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;
    invoke-static {v0}, Landroid/app/Activity;->access$100(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;
    invoke-static {v0}, Landroid/app/Activity;->access$100(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method
