.class Lcom/miui/internal/app/ActionBarImpl$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$3;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$3;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->access$200(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/view/menu/PhoneActionMenuView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$3;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->access$200(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/view/menu/PhoneActionMenuView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl$3;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p0}, Lcom/miui/internal/app/ActionBarImpl;->access$200(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/view/menu/PhoneActionMenuView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getPresenter()Lcom/miui/internal/view/menu/ActionMenuPresenter;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    :cond_0
    return-void
.end method
