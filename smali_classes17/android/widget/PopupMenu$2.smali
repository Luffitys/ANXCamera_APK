.class Landroid/widget/PopupMenu$2;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroid/widget/PopupMenu;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/PopupMenu$2;->this$0:Landroid/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    iget-object v0, p0, Landroid/widget/PopupMenu$2;->this$0:Landroid/widget/PopupMenu;

    # getter for: Landroid/widget/PopupMenu;->mOnDismissListener:Landroid/widget/PopupMenu$OnDismissListener;
    invoke-static {v0}, Landroid/widget/PopupMenu;->access$100(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/PopupMenu$2;->this$0:Landroid/widget/PopupMenu;

    # getter for: Landroid/widget/PopupMenu;->mOnDismissListener:Landroid/widget/PopupMenu$OnDismissListener;
    invoke-static {v0}, Landroid/widget/PopupMenu;->access$100(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/PopupMenu$2;->this$0:Landroid/widget/PopupMenu;

    invoke-interface {v0, v1}, Landroid/widget/PopupMenu$OnDismissListener;->onDismiss(Landroid/widget/PopupMenu;)V

    :cond_13
    return-void
.end method
