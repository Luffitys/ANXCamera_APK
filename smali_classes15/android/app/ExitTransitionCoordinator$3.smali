.class Landroid/app/ExitTransitionCoordinator$3;
.super Ljava/lang/Object;
.source "ExitTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->startExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$3;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$3;->this$0:Landroid/app/ExitTransitionCoordinator;

    # getter for: Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$200(Landroid/app/ExitTransitionCoordinator;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$3;->this$0:Landroid/app/ExitTransitionCoordinator;

    # invokes: Landroid/app/ExitTransitionCoordinator;->beginTransitions()V
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$300(Landroid/app/ExitTransitionCoordinator;)V

    goto :goto_13

    :cond_e
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$3;->this$0:Landroid/app/ExitTransitionCoordinator;

    # invokes: Landroid/app/ExitTransitionCoordinator;->startExitTransition()V
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$400(Landroid/app/ExitTransitionCoordinator;)V

    :goto_13
    return-void
.end method
