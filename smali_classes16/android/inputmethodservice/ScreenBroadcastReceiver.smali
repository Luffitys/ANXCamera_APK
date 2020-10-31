.class Landroid/inputmethodservice/ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenBroadcastReceiver.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-boolean v1, Landroid/inputmethodservice/InputMethodUtil;->sCanShowMiuiBottom:Z

    if-eqz v1, :cond_13

    invoke-static {p1}, Landroid/inputmethodservice/InputMethodUtil;->resetMoveCursorParams(Landroid/content/Context;)V

    :cond_13
    return-void
.end method
