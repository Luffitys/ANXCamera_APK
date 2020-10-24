.class Lcom/miui/internal/app/AlertControllerImpl$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/AlertControllerImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/AlertControllerImpl;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v1, v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$1100(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v1, v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$1200(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$1300(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)V

    return-void
.end method
