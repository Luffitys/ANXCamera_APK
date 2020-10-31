.class Landroid/app/ActivityTransitionState$1;
.super Ljava/lang/Object;
.source "ActivityTransitionState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityTransitionState;->onResume(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityTransitionState;


# direct methods
.method constructor <init>(Landroid/app/ActivityTransitionState;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$ActivityTransitionState$1()V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    const/4 v1, 0x0

    # setter for: Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;
    invoke-static {v0, v1}, Landroid/app/ActivityTransitionState;->access$002(Landroid/app/ActivityTransitionState;Landroid/app/EnterTransitionCoordinator;)Landroid/app/EnterTransitionCoordinator;

    return-void
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    # getter for: Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->access$000(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    # getter for: Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->access$000(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isWaitingForRemoteExit()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_30

    :cond_15
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    # getter for: Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->access$000(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    # getter for: Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->access$000(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;

    move-result-object v0

    new-instance v1, Landroid/app/-$$Lambda$ActivityTransitionState$1$fqoR3vg9Harhjtb0p87HpKinLK8;

    invoke-direct {v1, p0}, Landroid/app/-$$Lambda$ActivityTransitionState$1$fqoR3vg9Harhjtb0p87HpKinLK8;-><init>(Landroid/app/ActivityTransitionState$1;)V

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator;->runAfterTransitionsComplete(Ljava/lang/Runnable;)V

    goto :goto_3a

    :cond_30
    :goto_30
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    # invokes: Landroid/app/ActivityTransitionState;->restoreExitedViews()V
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->access$100(Landroid/app/ActivityTransitionState;)V

    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    # invokes: Landroid/app/ActivityTransitionState;->restoreReenteringViews()V
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->access$200(Landroid/app/ActivityTransitionState;)V

    :cond_3a
    :goto_3a
    return-void
.end method
