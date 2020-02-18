.class public Lcom/android/camera/preferences/ResetPreferenceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ResetPreferenceBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "miui.intent.action.RESET_CAMERA_PREF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "ResetPreference"

    const-string p1, "receive ACTION_RESET_CAMERA_PREF action, reset camera settings!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/camera/CameraPreferenceActivity;->resetPreferences(Z)V

    return-void
.end method
