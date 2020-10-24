.class Lcom/miui/internal/app/FragmentDelegate$2;
.super Lcom/miui/internal/view/SimpleWindowCallback;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/FragmentDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/FragmentDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate$2;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-direct {p0}, Lcom/miui/internal/view/SimpleWindowCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate$2;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {p0}, Lcom/miui/internal/app/FragmentDelegate;->access$200(Lcom/miui/internal/app/FragmentDelegate;)Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Lmiui/app/IFragment;

    invoke-interface {p0, p1}, Lmiui/app/IFragment;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate$2;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {p0}, Lcom/miui/internal/app/FragmentDelegate;->access$200(Lcom/miui/internal/app/FragmentDelegate;)Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Lmiui/app/IFragment;

    invoke-interface {p0, p1}, Lmiui/app/IFragment;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate$2;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate$2;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/FragmentDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method
