.class public Lcom/miui/internal/variable/v16/Android_App_Activity_class;
.super Lcom/miui/internal/variable/Android_App_Activity_class;
.source "Android_App_Activity_class.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_App_Activity_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .registers 3

    const-string v0, "setProgressBarVisibility"

    const-string v1, "(Z)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "setProgressBarIndeterminateVisibility"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "setProgressBarIndeterminate"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "setProgress"

    const-string v1, "(I)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected handle()V
    .registers 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->handleSetProgressBarVisibility(JLandroid/app/Activity;Z)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->handleSetProgressBarIndeterminateVisibility(JLandroid/app/Activity;Z)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->handleSetProgressBarIndeterminate(JLandroid/app/Activity;Z)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->handleSetProgress(JLandroid/app/Activity;I)V

    return-void
.end method

.method protected handleSetProgress(JLandroid/app/Activity;I)V
    .registers 6

    instance-of v0, p3, Lmiui/app/Activity;

    if-eqz v0, :cond_11

    move-object v0, p3

    check-cast v0, Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, p4}, Lmiui/app/ActionBar;->setProgress(I)V

    :cond_10
    goto :goto_14

    :cond_11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->originalSetProgress(JLandroid/app/Activity;I)V

    :goto_14
    return-void
.end method

.method protected handleSetProgressBarIndeterminate(JLandroid/app/Activity;Z)V
    .registers 6

    instance-of v0, p3, Lmiui/app/Activity;

    if-eqz v0, :cond_11

    move-object v0, p3

    check-cast v0, Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, p4}, Lmiui/app/ActionBar;->setProgressBarIndeterminate(Z)V

    :cond_10
    goto :goto_14

    :cond_11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->originalSetProgressBarIndeterminate(JLandroid/app/Activity;Z)V

    :goto_14
    return-void
.end method

.method protected handleSetProgressBarIndeterminateVisibility(JLandroid/app/Activity;Z)V
    .registers 6

    instance-of v0, p3, Lmiui/app/Activity;

    if-eqz v0, :cond_11

    move-object v0, p3

    check-cast v0, Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, p4}, Lmiui/app/ActionBar;->setProgressBarIndeterminateVisibility(Z)V

    :cond_10
    goto :goto_14

    :cond_11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->originalSetProgressBarIndeterminateVisibility(JLandroid/app/Activity;Z)V

    :goto_14
    return-void
.end method

.method protected handleSetProgressBarVisibility(JLandroid/app/Activity;Z)V
    .registers 6

    instance-of v0, p3, Lmiui/app/Activity;

    if-eqz v0, :cond_11

    move-object v0, p3

    check-cast v0, Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, p4}, Lmiui/app/ActionBar;->setProgressBarVisibility(Z)V

    :cond_10
    goto :goto_14

    :cond_11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->originalSetProgressBarVisibility(JLandroid/app/Activity;Z)V

    :goto_14
    return-void
.end method

.method protected originalSetProgress(JLandroid/app/Activity;I)V
    .registers 7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_App_Activity_class.originalSetProgress(long, Activity, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected originalSetProgressBarIndeterminate(JLandroid/app/Activity;Z)V
    .registers 7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_App_Activity_class.originalSetProgressBarIndeterminate(long, Activity, boolean)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected originalSetProgressBarIndeterminateVisibility(JLandroid/app/Activity;Z)V
    .registers 7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_App_Activity_class.originalSetProgressBarIndeterminateVisibility(long, Activity, boolean)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected originalSetProgressBarVisibility(JLandroid/app/Activity;Z)V
    .registers 7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_App_Activity_class.originalSetProgressBarVisibility(long, Activity, boolean)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
