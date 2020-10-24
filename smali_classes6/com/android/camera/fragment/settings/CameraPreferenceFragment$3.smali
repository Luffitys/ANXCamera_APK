.class Lcom/android/camera/fragment/settings/CameraPreferenceFragment$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

.field final synthetic val$boolValue:Z

.field final synthetic val$preference:Landroidx/preference/Preference;

.field final synthetic val$snapItem:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Ljava/lang/String;Landroidx/preference/Preference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$3;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    iput-object p2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$3;->val$snapItem:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$3;->val$preference:Landroidx/preference/Preference;

    iput-boolean p4, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$3;->val$boolValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$3;->val$snapItem:Ljava/lang/String;

    const-string v1, "pref_camera_snap_key"

    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$3;->val$preference:Landroidx/preference/Preference;

    instance-of v1, v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$3;->val$boolValue:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/camera/ui/PreviewListPreference;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$3;->val$snapItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$3;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$3;->val$snapItem:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getMiuiSettingsKeyForStreetSnap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_long_press_volume_down"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
