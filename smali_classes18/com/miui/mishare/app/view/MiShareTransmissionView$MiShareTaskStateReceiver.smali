.class final Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiShareTransmissionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MiShareTaskStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;


# direct methods
.method private constructor <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;Lcom/miui/mishare/app/view/MiShareTransmissionView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.mishare.connectivity.TASK_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "device_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
    invoke-static {v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$700(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->setDeviceState(Ljava/lang/String;I)V

    :cond_24
    return-void
.end method
