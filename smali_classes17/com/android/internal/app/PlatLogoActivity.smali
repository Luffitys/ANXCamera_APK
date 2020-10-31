.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/PlatLogoActivity$BigDialView;
    }
.end annotation


# static fields
.field private static final R_EGG_UNLOCK_SETTING:Ljava/lang/String; = "egg_mode_r"

.field static final TOUCH_STATS:Ljava/lang/String; = "touch.stats"

.field private static final UNLOCK_TRIES:I = 0x3

.field private static final WRITE_SETTINGS:Z = true


# instance fields
.field mDialView:Lcom/android/internal/app/PlatLogoActivity$BigDialView;

.field mPressureMax:D

.field mPressureMin:D


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/PlatLogoActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/PlatLogoActivity;->launchNextStage(Z)V

    return-void
.end method

.method private launchNextStage(Z)V
    .registers 7

    const-string v0, "com.android.internal.app.PlatLogoActivity"

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_6
    const-string v2, "egg_mode_r"

    if-eqz p1, :cond_d

    const-wide/16 v3, 0x0

    goto :goto_11

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_11
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v2

    const-string v3, "Can\'t write settings"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    :try_start_1b
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.internal.category.PLATLOGO"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/PlatLogoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_32
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    move-exception v2

    const-string v3, "No more eggs."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void
.end method

.method private measureTouchPressure(Landroid/view/MotionEvent;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_23

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e

    goto :goto_30

    :cond_e
    float-to-double v1, v0

    iget-wide v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_18

    float-to-double v1, v0

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    :cond_18
    float-to-double v1, v0

    iget-wide v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_30

    float-to-double v1, v0

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    goto :goto_30

    :cond_23
    iget-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_30

    float-to-double v1, v0

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    :cond_30
    :goto_30
    return-void
.end method

.method private syncTouchPressure()V
    .registers 10

    const-string/jumbo v0, "touch.stats"

    const-string/jumbo v1, "max"

    const-string/jumbo v2, "min"

    :try_start_9
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    if-eqz v3, :cond_17

    move-object v5, v3

    goto :goto_1a

    :cond_17
    const-string/jumbo v5, "{}"

    :goto_1a
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    :cond_2f
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    :cond_41
    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_5e

    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    invoke-virtual {v4, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    invoke-virtual {v4, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5e} :catch_5f

    :cond_5e
    goto :goto_67

    :catch_5f
    move-exception v0

    const-string v1, "com.android.internal.app.PlatLogoActivity"

    const-string v2, "Can\'t write touch settings"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_67
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    :cond_32
    new-instance v3, Lcom/android/internal/app/PlatLogoActivity$BigDialView;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p0, v4}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mDialView:Lcom/android/internal/app/PlatLogoActivity$BigDialView;

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "egg_mode_r"

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_51

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mDialView:Lcom/android/internal/app/PlatLogoActivity$BigDialView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->setUnlockTries(I)V

    goto :goto_56

    :cond_51
    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mDialView:Lcom/android/internal/app/PlatLogoActivity$BigDialView;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->setUnlockTries(I)V

    :goto_56
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mDialView:Lcom/android/internal/app/PlatLogoActivity$BigDialView;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {p0, v2}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onStart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->syncTouchPressure()V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->syncTouchPressure()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
