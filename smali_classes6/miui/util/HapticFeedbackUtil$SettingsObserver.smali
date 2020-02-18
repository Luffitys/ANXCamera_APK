.class Lmiui/util/HapticFeedbackUtil$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HapticFeedbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/HapticFeedbackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method constructor <init>(Lmiui/util/HapticFeedbackUtil;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 243
    iput-object p1, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    .line 244
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 245
    return-void
.end method


# virtual methods
.method observe()V
    .registers 4

    .line 248
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    # getter for: Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->access$000(Lmiui/util/HapticFeedbackUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 249
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 250
    const-string v1, "haptic_feedback_level"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 249
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 251
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v1}, Lmiui/util/HapticFeedbackUtil;->updateSettings()V

    .line 252
    return-void
.end method

.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 261
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil;->updateSettings()V

    .line 262
    return-void
.end method

.method unobserve()V
    .registers 2

    .line 255
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    # getter for: Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->access$000(Lmiui/util/HapticFeedbackUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 256
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 257
    return-void
.end method
