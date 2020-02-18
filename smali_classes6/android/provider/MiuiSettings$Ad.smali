.class public final Landroid/provider/MiuiSettings$Ad;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ad"
.end annotation


# static fields
.field private static final AAID:Ljava/lang/String; = "ad_aaid"

.field public static final ACTION_AAID_RESET:Ljava/lang/String; = "miui.intent.action.ad.AAID_RESET"

.field private static final BIT_FLAG_PERSONALIZED_AD_DIALOG_PROMOTED:I = 0x2

.field private static final BIT_FLAG_PERSONALIZED_AD_ENABLE:I = 0x1

.field public static final EXTRA_KEY_NEW_AAID:Ljava/lang/String; = "new_aaid"

.field public static final EXTRA_KEY_OLD_AAID:Ljava/lang/String; = "old_aaid"

.field private static final PERSONALIZED_AD_SETTINGS:Ljava/lang/String; = "personalized_ad_enabled"

.field private static final PERSONALIZED_AD_TIME:Ljava/lang/String; = "personalized_ad_time"

.field private static final TAG:Ljava/lang/String; = "Ad"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAaid(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6539
    const-string v0, "ad_aaid"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPersonalizedAdEnableTime(Landroid/content/ContentResolver;)J
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6595
    const-string/jumbo v0, "personalized_ad_time"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 6596
    .local v0, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPersonalizedAdEnableTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6597
    return-wide v0
.end method

.method private static getPersonizedAdSettings(Landroid/content/ContentResolver;)I
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6605
    const-string/jumbo v0, "personalized_ad_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isPersonalizedAdDialogPromoted(Landroid/content/ContentResolver;)Z
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6572
    invoke-static {p0}, Landroid/provider/MiuiSettings$Ad;->getPersonizedAdSettings(Landroid/content/ContentResolver;)I

    move-result v0

    .line 6573
    .local v0, "adSettings":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPersonalizedAdDialogPromoted getAdSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6574
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public static isPersonalizedAdEnabled(Landroid/content/ContentResolver;)Z
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6556
    invoke-static {p0}, Landroid/provider/MiuiSettings$Ad;->getPersonizedAdSettings(Landroid/content/ContentResolver;)I

    move-result v0

    .line 6557
    .local v0, "adSettings":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPersonalizedAdEnabled getAdSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6558
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public static resetAaid(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6543
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Ad;->getAaid(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 6544
    .local v0, "oldAaid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 6545
    const-string v0, ""

    .line 6547
    :cond_10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6548
    .local v1, "newAaid":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ad_aaid"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6549
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.ad.AAID_RESET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6550
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "old_aaid"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6551
    const-string/jumbo v3, "new_aaid"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6552
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6553
    return-void
.end method

.method public static setPersonalizedAdDialogPromoted(Landroid/content/ContentResolver;Z)V
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6579
    invoke-static {p0}, Landroid/provider/MiuiSettings$Ad;->getPersonizedAdSettings(Landroid/content/ContentResolver;)I

    move-result v0

    .line 6580
    .local v0, "oldAdSettings":I
    if-eqz p1, :cond_9

    or-int/lit8 v1, v0, 0x2

    goto :goto_b

    .line 6581
    :cond_9
    and-int/lit8 v1, v0, -0x3

    :goto_b
    nop

    .line 6582
    .local v1, "newAdSettings":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPersonalizedAdDialogPromoted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", oldAdSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newAdSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6584
    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$Ad;->setPersonizedAdSettings(Landroid/content/ContentResolver;I)V

    .line 6585
    return-void
.end method

.method public static setPersonalizedAdEnable(Landroid/content/ContentResolver;Z)V
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6563
    invoke-static {p0}, Landroid/provider/MiuiSettings$Ad;->getPersonizedAdSettings(Landroid/content/ContentResolver;)I

    move-result v0

    .line 6564
    .local v0, "oldAdSettings":I
    if-eqz p1, :cond_9

    or-int/lit8 v1, v0, 0x1

    goto :goto_b

    .line 6565
    :cond_9
    and-int/lit8 v1, v0, -0x2

    :goto_b
    nop

    .line 6566
    .local v1, "newAdSettigns":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPersonalizedAdEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", oldAdSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newAdSettigns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6568
    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$Ad;->setPersonizedAdSettings(Landroid/content/ContentResolver;I)V

    .line 6569
    return-void
.end method

.method public static setPersonalizedAdEnableTime(Landroid/content/ContentResolver;J)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPersonalizedAdEnableTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6590
    const-string/jumbo v0, "personalized_ad_time"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 6591
    return-void
.end method

.method private static setPersonizedAdSettings(Landroid/content/ContentResolver;I)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "adSettings"    # I

    .line 6601
    const-string/jumbo v0, "personalized_ad_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6602
    return-void
.end method
