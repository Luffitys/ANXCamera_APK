.class Landroidx/fragment/app/DefaultSpecialEffectsController$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$3;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController$3;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    iget-object v1, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$container:Landroid/view/ViewGroup;

    iget-object v0, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->removeCancellationSignal(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    return-void
.end method
