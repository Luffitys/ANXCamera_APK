.class Landroid/app/ExitTransitionCoordinator$6;
.super Ljava/lang/Object;
.source "ExitTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->startExit(ILandroid/content/Intent;)V
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

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$6;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$6;->this$0:Landroid/app/ExitTransitionCoordinator;

    # invokes: Landroid/app/ExitTransitionCoordinator;->startExitTransition()V
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$400(Landroid/app/ExitTransitionCoordinator;)V

    return-void
.end method
