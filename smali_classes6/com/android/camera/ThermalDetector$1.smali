.class Lcom/android/camera/ThermalDetector$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ThermalDetector;


# direct methods
.method constructor <init>(Lcom/android/camera/ThermalDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ThermalDetector$1;->this$0:Lcom/android/camera/ThermalDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "camera.test.auto"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/camera/ThermalDetector;->ACTION_TEMP_CHANGED:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    sget-object p1, Lcom/android/camera/ThermalDetector;->EXTRA_TEMP_STAGE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/android/camera/ThermalDetector;->access$200()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive stage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    rem-int/lit8 p1, p1, 0xa

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooO0oo()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p2

    const/16 v1, 0xa3

    if-eq p2, v1, :cond_3

    const/16 v1, 0xa5

    if-eq p2, v1, :cond_3

    const/16 v1, 0xa7

    if-eq p2, v1, :cond_3

    const/16 v1, 0xaf

    if-eq p2, v1, :cond_3

    const/16 v1, 0xb1

    if-eq p2, v1, :cond_3

    const/16 v1, 0xb6

    if-eq p2, v1, :cond_3

    const/16 v1, 0xb8

    if-eq p2, v1, :cond_3

    const/16 v1, 0xba

    if-eq p2, v1, :cond_3

    const/16 v1, 0xcd

    if-eq p2, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x4

    if-eq p1, p2, :cond_5

    :cond_4
    :goto_0
    move v0, p1

    :cond_5
    iget-object p1, p0, Lcom/android/camera/ThermalDetector$1;->this$0:Lcom/android/camera/ThermalDetector;

    invoke-static {p1}, Lcom/android/camera/ThermalDetector;->access$300(Lcom/android/camera/ThermalDetector;)I

    move-result p1

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/camera/ThermalDetector$1;->this$0:Lcom/android/camera/ThermalDetector;

    invoke-static {p1, v0}, Lcom/android/camera/ThermalDetector;->access$302(Lcom/android/camera/ThermalDetector;I)I

    iget-object p0, p0, Lcom/android/camera/ThermalDetector$1;->this$0:Lcom/android/camera/ThermalDetector;

    invoke-static {p0}, Lcom/android/camera/ThermalDetector;->access$300(Lcom/android/camera/ThermalDetector;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/ThermalDetector;->access$400(Lcom/android/camera/ThermalDetector;I)V

    :cond_6
    return-void
.end method
