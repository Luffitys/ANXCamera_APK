.class Lcom/milink/api/v1/MilinkClientManager$1$1;
.super Ljava/lang/Object;
.source "MilinkClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/milink/api/v1/MilinkClientManager$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/milink/api/v1/MilinkClientManager$1;


# direct methods
.method constructor <init>(Lcom/milink/api/v1/MilinkClientManager$1;)V
    .registers 2

    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager$1$1;->this$1:Lcom/milink/api/v1/MilinkClientManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager$1$1;->this$1:Lcom/milink/api/v1/MilinkClientManager$1;

    iget-object v0, v0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;
    invoke-static {v0}, Lcom/milink/api/v1/MilinkClientManager;->access$100(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager$1$1;->this$1:Lcom/milink/api/v1/MilinkClientManager$1;

    iget-object v0, v0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;
    invoke-static {v0}, Lcom/milink/api/v1/MilinkClientManager;->access$100(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/milink/api/v1/MilinkClientManagerDelegate;->onOpen()V

    :cond_15
    return-void
.end method
