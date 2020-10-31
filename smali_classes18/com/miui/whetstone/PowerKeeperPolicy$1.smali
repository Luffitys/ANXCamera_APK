.class Lcom/miui/whetstone/PowerKeeperPolicy$1;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;->offerPowerKeeperIBinder(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

.field final synthetic val$b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/IBinder;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->val$b:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->val$b:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    const/4 v1, 0x0

    # setter for: Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;
    invoke-static {v0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$002(Lcom/miui/whetstone/PowerKeeperPolicy;Lcom/miui/whetstone/IPowerKeeperClient;)Lcom/miui/whetstone/IPowerKeeperClient;

    const-string v0, "PowerKeeperPolicy"

    const-string v1, "powerkeeper died, reset handle to null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->restoreFakeGpsStatus()V
    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$100(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->restoreAlarm()V
    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$200(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->restoreBlockedWakelock()V
    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$300(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    return-void
.end method
