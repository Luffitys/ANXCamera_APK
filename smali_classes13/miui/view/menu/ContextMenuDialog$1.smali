.class Lmiui/view/menu/ContextMenuDialog$1;
.super Ljava/lang/Object;
.source "ContextMenuDialog.java"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/menu/ContextMenuDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/menu/ContextMenuDialog;


# direct methods
.method constructor <init>(Lmiui/view/menu/ContextMenuDialog;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/menu/ContextMenuDialog$1;->this$0:Lmiui/view/menu/ContextMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lmiui/view/menu/ContextMenuDialog$1;->this$0:Lmiui/view/menu/ContextMenuDialog;

    # getter for: Lmiui/view/menu/ContextMenuDialog;->mMenuRunnables:Ljava/util/List;
    invoke-static {v1}, Lmiui/view/menu/ContextMenuDialog;->access$000(Lmiui/view/menu/ContextMenuDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x1

    return v1
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 2

    return-void
.end method
