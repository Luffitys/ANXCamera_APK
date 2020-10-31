.class Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string v0, "whetstone.activity"

    :try_start_2
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    # getter for: Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->access$000(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/PowerManager;

    move-result-object v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    # setter for: Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->access$002(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    :cond_17
    const-class v1, Landroid/os/PowerManager;

    const-string v2, "isDeviceIdleMode"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    # getter for: Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->access$000(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/PowerManager;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceIdleMode changed to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    # getter for: Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;
    invoke-static {v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->access$100(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "updateAllPartialWakeLockDisableState"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5c} :catch_5e

    nop

    goto :goto_66

    :catch_5e
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_66
    return-void
.end method
