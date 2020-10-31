.class public final synthetic Landroid/app/-$$Lambda$ActivityTransitionState$yioLR6wQWjZ9DcWK5bibElIbsXc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/ActivityTransitionState;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityTransitionState;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$ActivityTransitionState$yioLR6wQWjZ9DcWK5bibElIbsXc;->f$0:Landroid/app/ActivityTransitionState;

    iput-object p2, p0, Landroid/app/-$$Lambda$ActivityTransitionState$yioLR6wQWjZ9DcWK5bibElIbsXc;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/-$$Lambda$ActivityTransitionState$yioLR6wQWjZ9DcWK5bibElIbsXc;->f$0:Landroid/app/ActivityTransitionState;

    iget-object v1, p0, Landroid/app/-$$Lambda$ActivityTransitionState$yioLR6wQWjZ9DcWK5bibElIbsXc;->f$1:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/ActivityTransitionState;->lambda$startExitBackTransition$0$ActivityTransitionState(Landroid/app/Activity;)V

    return-void
.end method
