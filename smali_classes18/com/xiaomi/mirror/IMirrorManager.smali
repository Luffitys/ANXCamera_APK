.class public interface abstract Lcom/xiaomi/mirror/IMirrorManager;
.super Ljava/lang/Object;
.source "IMirrorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;,
        Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;,
        Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;
    }
.end annotation


# virtual methods
.method public abstract beginSynergy(Landroid/content/Context;)I
.end method

.method public abstract beginTrackingClickEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract endSynergy(Landroid/content/Context;)I
.end method

.method public abstract endTrackingEvent()V
.end method

.method public abstract getWorkingMasterName()Ljava/lang/String;
.end method

.method public abstract isCurrentClickFromMirror()Z
.end method

.method public abstract isEventFromMirror(Landroid/view/InputEvent;)Z
.end method

.method public abstract isModelSupport()Z
.end method

.method public abstract isWorking()Z
.end method

.method public abstract notifyInputTypeAndPos(III)V
.end method

.method public abstract notifyMoveTaskToBack(Landroid/os/IBinder;Z)V
.end method

.method public abstract notifyStartActivity(Landroid/content/Intent;)V
.end method

.method public abstract notifyStartActivityFromRecents(ILandroid/os/Bundle;)V
.end method

.method public abstract onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V
.end method

.method public abstract performMirrorMenuQuery(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end method

.method public abstract regAcceptInputCallback(Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;)I
.end method

.method public abstract regSecureWinCallback(Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;)I
.end method

.method public abstract sendChineseText(Ljava/lang/String;)I
.end method

.method public abstract sendSynergyOperate(I)I
.end method

.method public abstract setOnMirrorMenuClickListener(Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;)V
.end method

.method public abstract turnOffBacklight(Landroid/content/Context;)I
.end method

.method public abstract unRegAcceptInputCallback()I
.end method

.method public abstract unRegSecureWinCallback()I
.end method
