.class Lmiui/view/menu/ContextMenuDialog$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;


# instance fields
.field final synthetic this$0:Lmiui/view/menu/ContextMenuDialog;


# direct methods
.method constructor <init>(Lmiui/view/menu/ContextMenuDialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/view/menu/ContextMenuDialog$1;->this$0:Lmiui/view/menu/ContextMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object p0, p0, Lmiui/view/menu/ContextMenuDialog$1;->this$0:Lmiui/view/menu/ContextMenuDialog;

    invoke-static {p0}, Lmiui/view/menu/ContextMenuDialog;->access$000(Lmiui/view/menu/ContextMenuDialog;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method
