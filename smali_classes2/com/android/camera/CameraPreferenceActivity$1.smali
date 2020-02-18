.class Lcom/android/camera/CameraPreferenceActivity$1;
.super Ljava/lang/Object;
.source "CameraPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraPreferenceActivity;->bringUpDoubleConfirmDlg(Landroid/preference/Preference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraPreferenceActivity;

.field final synthetic val$boolValue:Z

.field final synthetic val$preference:Landroid/preference/Preference;

.field final synthetic val$snapItem:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraPreferenceActivity;Ljava/lang/String;Landroid/preference/Preference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    iput-object p2, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$snapItem:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$preference:Landroid/preference/Preference;

    iput-boolean p4, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$boolValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    invoke-static {p2, p1}, Lcom/android/camera/CameraPreferenceActivity;->access$002(Lcom/android/camera/CameraPreferenceActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object p1, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$snapItem:Ljava/lang/String;

    const-string p2, "pref_camera_snap_key"

    invoke-static {p2, p1}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$preference:Landroid/preference/Preference;

    instance-of p2, p1, Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iget-boolean p2, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$boolValue:Z

    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/android/camera/ui/PreviewListPreference;

    iget-object p2, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$snapItem:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$snapItem:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getMiuiSettingsKeyForStreetSnap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "key_long_press_volume_down"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    invoke-static {p2}, Lcom/android/camera/CameraPreferenceActivity;->access$000(Lcom/android/camera/CameraPreferenceActivity;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    iget-object p0, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    invoke-static {p0, p1}, Lcom/android/camera/CameraPreferenceActivity;->access$002(Lcom/android/camera/CameraPreferenceActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_3
    :goto_1
    return-void
.end method
