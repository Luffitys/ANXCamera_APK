.class Landroidx/fragment/app/FragmentManagerImpl$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroidx/fragment/app/FragmentManagerImpl$3;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManagerImpl$3;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$3$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$3$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$3;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl$3;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$3$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$3;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl$3;->val$fragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl$3$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$3;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$3;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl$3;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    :cond_0
    return-void
.end method
