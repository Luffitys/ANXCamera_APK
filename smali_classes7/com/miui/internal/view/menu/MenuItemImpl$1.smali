.class Lcom/miui/internal/view/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/MenuItemImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl$1;->this$0:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl$1;->this$0:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-static {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->access$000(Lcom/miui/internal/view/menu/MenuItemImpl;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/internal/view/menu/MenuItemImpl$1;->this$0:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lcom/miui/internal/view/menu/MenuItemImpl;)V

    return-void
.end method
