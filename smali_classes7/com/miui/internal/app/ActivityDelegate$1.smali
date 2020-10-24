.class Lcom/miui/internal/app/ActivityDelegate$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/ActivityDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActivityDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->isImmersionMenuEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lcom/miui/internal/app/ActivityDelegate;->access$000(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-static {v1, v3, v2, v0}, Lcom/miui/internal/app/ActivityDelegate;->access$100(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, v2}, Lcom/miui/internal/app/ActionBarDelegateImpl;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    :goto_0
    return-void
.end method
