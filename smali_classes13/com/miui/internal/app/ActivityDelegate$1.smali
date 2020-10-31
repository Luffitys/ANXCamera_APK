.class Lcom/miui/internal/app/ActivityDelegate$1;
.super Ljava/lang/Object;
.source "ActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/ActivityDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActivityDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v1}, Lcom/miui/internal/app/ActivityDelegate;->isImmersionMenuEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    const/4 v3, 0x0

    # invokes: Lcom/miui/internal/app/ActivityDelegate;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z
    invoke-static {v1, v3, v0}, Lcom/miui/internal/app/ActivityDelegate;->access$000(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    # invokes: Lcom/miui/internal/app/ActivityDelegate;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    invoke-static {v1, v3, v2, v0}, Lcom/miui/internal/app/ActivityDelegate;->access$100(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v1, v0}, Lcom/miui/internal/app/ActivityDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_2b

    :cond_26
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v1, v2}, Lcom/miui/internal/app/ActivityDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    :goto_2b
    return-void
.end method
