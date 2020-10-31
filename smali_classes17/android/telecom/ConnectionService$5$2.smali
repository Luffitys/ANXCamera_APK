.class Landroid/telecom/ConnectionService$5$2;
.super Landroid/telecom/Logging/Runnable;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService$5;->onError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/ConnectionService$5;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService$5;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Landroid/telecom/ConnectionService$5$2;->this$1:Landroid/telecom/ConnectionService$5;

    invoke-direct {p0, p2, p3}, Landroid/telecom/Logging/Runnable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public loggedRun()V
    .registers 3

    iget-object v0, p0, Landroid/telecom/ConnectionService$5$2;->this$1:Landroid/telecom/ConnectionService$5;

    iget-object v0, v0, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    const/4 v1, 0x1

    # setter for: Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z
    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->access$302(Landroid/telecom/ConnectionService;Z)Z

    return-void
.end method
