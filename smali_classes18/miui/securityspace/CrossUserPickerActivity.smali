.class public Lmiui/securityspace/CrossUserPickerActivity;
.super Lmiui/app/Activity;
.source "CrossUserPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrossUserPickerActivity"

.field public static final USER_ID_INVALID:I = -0x1


# instance fields
.field private volatile mCrossUserContentResolver:Landroid/content/ContentResolver;

.field private volatile mCrossUserContextWrapper:Landroid/content/ContextWrapper;

.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    return-void
.end method

.method private validateCallingPackage()Z
    .registers 3

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/securityspace/CrossUserUtils;->checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    return v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0
.end method

.method private validateCrossUser()I
    .registers 4

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.picked_user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCallingPackage()Z

    move-result v2

    if-eqz v2, :cond_19

    return v0

    :cond_19
    return v1
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 6

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    if-nez v1, :cond_25

    new-instance v1, Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;

    invoke-super {p0}, Lmiui/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v1, p0, v2, v3}, Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;-><init>(Lmiui/securityspace/CrossUserPickerActivity;Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object v1, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    :cond_25
    monitor-exit v0

    goto :goto_2a

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_27

    throw v1

    :cond_2a
    :goto_2a
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getApplicationContext: WrapperedApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    return-object v0

    :cond_34
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getApplicationContext: NormalApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 4

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_25

    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_20

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1}, Lmiui/securityspace/CrossUserPickerActivity;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    :cond_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_22

    throw v1

    :cond_25
    :goto_25
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getContentResolver: CrossUserContentResolver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    return-object v0

    :cond_2f
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getContentResolver: NormalContentResolver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public isCrossUserPick()Z
    .registers 3

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_f
    invoke-super {p0, p1}, Lmiui/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_f
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 5

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_f
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_f
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
