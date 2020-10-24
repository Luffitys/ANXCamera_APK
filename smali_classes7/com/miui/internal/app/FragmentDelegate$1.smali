.class Lcom/miui/internal/app/FragmentDelegate$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/FragmentDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/FragmentDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0}, Lcom/miui/internal/app/FragmentDelegate;->access$000(Lcom/miui/internal/app/FragmentDelegate;)B

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0, v2}, Lcom/miui/internal/app/FragmentDelegate;->access$102(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0}, Lcom/miui/internal/app/FragmentDelegate;->access$100(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/internal/app/FragmentDelegate;->access$102(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0}, Lcom/miui/internal/app/FragmentDelegate;->access$100(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/miui/internal/app/FragmentDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0}, Lcom/miui/internal/app/FragmentDelegate;->access$100(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Lcom/miui/internal/app/FragmentDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/miui/internal/app/FragmentDelegate;->access$100(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Lcom/miui/internal/app/ActionBarDelegateImpl;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0, v2}, Lcom/miui/internal/app/FragmentDelegate;->access$102(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;

    :goto_0
    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    const/16 v0, -0x12

    invoke-static {p0, v0}, Lcom/miui/internal/app/FragmentDelegate;->access$072(Lcom/miui/internal/app/FragmentDelegate;I)B

    return-void
.end method
