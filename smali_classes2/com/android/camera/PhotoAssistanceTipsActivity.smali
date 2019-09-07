.class public Lcom/android/camera/PhotoAssistanceTipsActivity;
.super Lcom/android/camera/BasePreferenceActivity;
.source "PhotoAssistanceTipsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoAssistanceTipsActivity"


# instance fields
.field protected mPreferenceGroup:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;-><init>()V

    return-void
.end method

.method private filterByFeature()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Zb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoAssistanceTipsActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_pic_flaw_tip"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Pb()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoAssistanceTipsActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_lens_dirty_tip"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Rc()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoAssistanceTipsActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_lying_tip_switch_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method private initializeActivity()V
    .locals 2

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoAssistanceTipsActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/camera/PhotoAssistanceTipsActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PhotoAssistanceTipsActivity;->getPreferenceXml()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoAssistanceTipsActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/camera/PhotoAssistanceTipsActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/camera/PhotoAssistanceTipsActivity;->TAG:Ljava/lang/String;

    const-string v1, "fail to init PreferenceGroup"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoAssistanceTipsActivity;->filterByFeature()V

    iget-object v0, p0, Lcom/android/camera/PhotoAssistanceTipsActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0, p0}, Lcom/android/camera/BasePreferenceActivity;->registerListener(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/camera/PhotoAssistanceTipsActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PhotoAssistanceTipsActivity;->updatePreferences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    return-void
.end method


# virtual methods
.method protected getPreferenceXml()I
    .locals 0

    const p0, 0x7f120001

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "StartActivityWhenLocked"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":miui:starting_window_label"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f0f01a6

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoAssistanceTipsActivity;->initializeActivity()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected updateConflictPreference(Landroid/preference/Preference;)V
    .locals 0

    return-void
.end method

.method public updatePreferences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v4, v3, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-interface {p2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    goto :goto_1

    :cond_1
    instance-of v4, v3, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_2

    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v3, p2}, Lcom/android/camera/PhotoAssistanceTipsActivity;->updatePreferences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/android/camera/PhotoAssistanceTipsActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no need update preference for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
