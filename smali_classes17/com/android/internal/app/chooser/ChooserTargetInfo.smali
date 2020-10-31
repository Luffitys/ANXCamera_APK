.class public interface abstract Lcom/android/internal/app/chooser/ChooserTargetInfo;
.super Ljava/lang/Object;
.source "ChooserTargetInfo.java"

# interfaces
.implements Lcom/android/internal/app/chooser/TargetInfo;


# virtual methods
.method public abstract getChooserTarget()Landroid/service/chooser/ChooserTarget;
.end method

.method public abstract getModifiedScore()F
.end method

.method public isSimilar(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-interface {p0}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v2

    if-eqz v1, :cond_3e

    if-nez v2, :cond_11

    goto :goto_3e

    :cond_11
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {p0}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {p0}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v0, 0x1

    return v0

    :cond_3d
    return v0

    :cond_3e
    :goto_3e
    return v0
.end method
