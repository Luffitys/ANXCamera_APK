.class public Lcom/miui/internal/server/Receiver;
.super Landroid/content/BroadcastReceiver;
.source "Receiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static isActionEquals(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/miui/internal/server/DropBoxManagerService;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p1, p2}, Lcom/miui/internal/server/AssetsExtractReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p1, p2}, Lcom/miui/internal/server/TelocationUpdateReceiver;->onReceiveIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
