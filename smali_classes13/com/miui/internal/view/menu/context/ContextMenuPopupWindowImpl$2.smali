.class Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$2;
.super Ljava/lang/Object;
.source "ContextMenuPopupWindowImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->prepareMultipleChoiceMenu(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$2;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$2;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    # getter for: Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$100(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$2;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    # getter for: Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$600(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$2;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->dismiss()V

    return-void
.end method
