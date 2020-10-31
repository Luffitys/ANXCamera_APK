.class Lcom/miui/internal/app/FragmentDelegate$2;
.super Lcom/miui/internal/view/SimpleWindowCallback;
.source "FragmentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/FragmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/FragmentDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/FragmentDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate$2;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-direct {p0}, Lcom/miui/internal/view/SimpleWindowCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$2;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # getter for: Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/miui/internal/app/FragmentDelegate;->access$200(Lcom/miui/internal/app/FragmentDelegate;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0, p1}, Lmiui/app/IFragment;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$2;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # getter for: Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/miui/internal/app/FragmentDelegate;->access$200(Lcom/miui/internal/app/FragmentDelegate;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0, p1}, Lmiui/app/IFragment;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$2;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$2;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
