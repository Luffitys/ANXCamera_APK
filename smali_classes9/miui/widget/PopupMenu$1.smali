.class Lmiui/widget/PopupMenu$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;


# instance fields
.field final synthetic this$0:Lmiui/widget/PopupMenu;


# direct methods
.method constructor <init>(Lmiui/widget/PopupMenu;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/PopupMenu$1;->this$0:Lmiui/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lmiui/widget/PopupMenu$1;->this$0:Lmiui/widget/PopupMenu;

    invoke-virtual {p0, p1, p2}, Lmiui/widget/PopupMenu;->onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/PopupMenu$1;->this$0:Lmiui/widget/PopupMenu;

    invoke-virtual {p0, p1}, Lmiui/widget/PopupMenu;->onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V

    return-void
.end method
