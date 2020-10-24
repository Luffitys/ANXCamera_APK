.class Lmiui/widget/PopupMenu$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field final synthetic this$0:Lmiui/widget/PopupMenu;


# direct methods
.method constructor <init>(Lmiui/widget/PopupMenu;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/PopupMenu$2;->this$0:Lmiui/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/PopupMenu$2;->this$0:Lmiui/widget/PopupMenu;

    invoke-virtual {p0, p1, p2}, Lmiui/widget/PopupMenu;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 0

    iget-object p0, p0, Lmiui/widget/PopupMenu$2;->this$0:Lmiui/widget/PopupMenu;

    invoke-virtual {p0, p1}, Lmiui/widget/PopupMenu;->onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result p0

    return p0
.end method
