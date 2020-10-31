.class public abstract Lcom/android/internal/app/chooser/NotSelectableTargetInfo;
.super Ljava/lang/Object;
.source "NotSelectableTargetInfo.java"

# interfaces
.implements Lcom/android/internal/app/chooser/ChooserTargetInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllSourceIntents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChooserTarget()Landroid/service/chooser/ChooserTarget;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiedScore()F
    .registers 2

    const v0, -0x42333333    # -0.1f

    return v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolvedComponentName()Landroid/content/ComponentName;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isPinned()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isSuspended()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public startAsCaller(Lcom/android/internal/app/ResolverActivityForCts;Landroid/os/Bundle;I)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method
