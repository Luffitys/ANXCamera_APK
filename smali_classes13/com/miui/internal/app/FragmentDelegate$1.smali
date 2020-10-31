.class Lcom/miui/internal/app/FragmentDelegate$1;
.super Ljava/lang/Object;
.source "FragmentDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/FragmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/FragmentDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/FragmentDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # getter for: Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B
    invoke-static {v1}, Lcom/miui/internal/app/FragmentDelegate;->access$000(Lcom/miui/internal/app/FragmentDelegate;)B

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # setter for: Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v1, v3}, Lcom/miui/internal/app/FragmentDelegate;->access$102(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;

    :cond_11
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # getter for: Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lcom/miui/internal/app/FragmentDelegate;->access$100(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v1}, Lcom/miui/internal/app/FragmentDelegate;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v4

    # setter for: Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v1, v4}, Lcom/miui/internal/app/FragmentDelegate;->access$102(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # getter for: Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lcom/miui/internal/app/FragmentDelegate;->access$100(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/miui/internal/app/FragmentDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    :cond_2d
    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # getter for: Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lcom/miui/internal/app/FragmentDelegate;->access$100(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/internal/app/FragmentDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    :cond_39
    if-eqz v0, :cond_45

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # getter for: Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lcom/miui/internal/app/FragmentDelegate;->access$100(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/app/FragmentDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_4f

    :cond_45
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v1, v3}, Lcom/miui/internal/app/FragmentDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # setter for: Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v1, v3}, Lcom/miui/internal/app/FragmentDelegate;->access$102(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;

    :goto_4f
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    const/16 v2, -0x12

    # &= operator for: Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B
    invoke-static {v1, v2}, Lcom/miui/internal/app/FragmentDelegate;->access$072(Lcom/miui/internal/app/FragmentDelegate;I)B

    return-void
.end method
