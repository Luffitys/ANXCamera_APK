.class public Landroid/provider/SystemSettings$Secure;
.super Ljava/lang/Object;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Secure"
.end annotation


# static fields
.field public static final PRIVACY_MODE_ENABLED:Ljava/lang/String; = "privacy_mode_enabled"

.field public static final SCREEN_BUTTONS_STATE:Ljava/lang/String; = "screen_buttons_state"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPrivacyAndReturnCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "privacy_mode_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_f

    move v1, v2

    :cond_f
    move v0, v1

    .line 128
    .local v0, "enabled":Z
    if-eqz v0, :cond_1e

    .line 129
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v1

    .line 133
    :cond_1e
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isCtaSupported(Landroid/content/ContentResolver;)Z
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 122
    const/4 v0, 0x0

    return v0
.end method
