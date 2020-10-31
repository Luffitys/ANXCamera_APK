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

    iput-object p1, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .registers 4

    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    # getter for: Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->access$000(Lmiui/util/HapticFeedbackUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    const-string v1, "haptic_feedback_level"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v1}, Lmiui/util/HapticFeedbackUtil;->updateSettings()V

    return-void
.end method

.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil;->updateSettings()V

    return-void
.end method

.method unobserve()V
    .registers 2

    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    # getter for: Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->access$000(Lmiui/util/HapticFeedbackUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
