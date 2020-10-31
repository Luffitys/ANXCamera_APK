.class Landroid/hardware/SystemSensorManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SystemSensorManager;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    if-ne v0, v1, :cond_1a

    const-string v0, "SensorManager"

    const-string v1, "DYNS received DYNAMIC_SENSOR_CHANED broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    const/4 v1, 0x1

    # setter for: Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z
    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager;->access$002(Landroid/hardware/SystemSensorManager;Z)Z

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    # invokes: Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V
    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->access$100(Landroid/hardware/SystemSensorManager;)V

    :cond_1a
    return-void
.end method
