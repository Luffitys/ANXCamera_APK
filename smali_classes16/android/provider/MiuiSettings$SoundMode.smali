.class public final Landroid/provider/MiuiSettings$SoundMode;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoundMode"
.end annotation


# static fields
.field private static final MIUI_RINGER_MODE_OFF:I = 0x2

.field private static final MIUI_RINGER_MODE_SILENT:I = 0x0

.field private static final MIUI_RINGER_MODE_VIBRATE:I = 0x1

.field private static final MIUI_ZEN_MODE_OFF:I = 0x0

.field private static final MIUI_ZEN_MODE_ON:I = 0x1

.field private static final SUPPRESSED_EFFECT_DEFAULT:I = 0x8d


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSilenceModeOn(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method public static isZenModeOn(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method public static setSilenceModeOn(Landroid/content/Context;Z)V
    .registers 7

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz p1, :cond_20

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x3

    const-string/jumbo v3, "vibrate_in_silent"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_24

    :cond_20
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :goto_24
    return-void
.end method

.method public static setZenModeForDuration(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    nop

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object v1

    iget-object v1, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, p2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static setZenModeOn(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 15

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    move v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    if-eqz p1, :cond_2a

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    iget v3, v2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/16 v4, 0x8d

    if-eq v3, v4, :cond_2a

    new-instance v3, Landroid/app/NotificationManager$Policy;

    iget v6, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v7, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v8, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    const/16 v9, 0x8d

    iget v10, v2, Landroid/app/NotificationManager$Policy;->state:I

    iget v11, v2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    :cond_2a
    return-void
.end method
