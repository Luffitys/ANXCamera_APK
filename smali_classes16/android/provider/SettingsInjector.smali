.class public final Landroid/provider/SettingsInjector;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# static fields
.field public static final ELDER_RINGTONE_ALT:Ljava/lang/String; = "elder-ringtone"

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static elderAltSettingName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    const-string/jumbo v0, "ringtone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "elder-ringtone"

    :cond_12
    return-object p0
.end method
