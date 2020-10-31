.class Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

.field final synthetic this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->changeMenuMode()V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    invoke-interface {v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    # setter for: Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenu:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;
    invoke-static {v1, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$602(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;)Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    :cond_24
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v2, 0x0

    # setter for: Lcom/miui/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    invoke-static {v1, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$902(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-void
.end method
