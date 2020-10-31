.class Lcom/miui/internal/app/AlertControllerImpl$2;
.super Ljava/lang/Object;
.source "AlertControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/AlertControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/AlertControllerImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/AlertControllerImpl;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # invokes: Lcom/miui/internal/app/AlertControllerImpl;->onCreatePanelMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    invoke-static {v1, v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$1100(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # invokes: Lcom/miui/internal/app/AlertControllerImpl;->onPreparePanelMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    invoke-static {v1, v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$1200(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # invokes: Lcom/miui/internal/app/AlertControllerImpl;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    invoke-static {v1, v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$1300(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_22

    :cond_1c
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    const/4 v2, 0x0

    # invokes: Lcom/miui/internal/app/AlertControllerImpl;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    invoke-static {v1, v2}, Lcom/miui/internal/app/AlertControllerImpl;->access$1300(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)V

    :goto_22
    return-void
.end method
