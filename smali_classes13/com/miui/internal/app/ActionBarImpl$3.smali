.class Lcom/miui/internal/app/ActionBarImpl$3;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$3;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$3;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    # getter for: Lcom/miui/internal/app/ActionBarImpl;->mSplitMenuView:Lcom/miui/internal/view/menu/PhoneActionMenuView;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->access$200(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/view/menu/PhoneActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$3;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    # getter for: Lcom/miui/internal/app/ActionBarImpl;->mSplitMenuView:Lcom/miui/internal/view/menu/PhoneActionMenuView;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->access$200(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/view/menu/PhoneActionMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$3;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    # getter for: Lcom/miui/internal/app/ActionBarImpl;->mSplitMenuView:Lcom/miui/internal/view/menu/PhoneActionMenuView;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->access$200(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/view/menu/PhoneActionMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getPresenter()Lcom/miui/internal/view/menu/ActionMenuPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    :cond_22
    return-void
.end method
