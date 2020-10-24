.class Lcom/android/camera/fragment/settings/CameraPreferenceFragment$12$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/settings/CameraPreferenceFragment$12;

.field final synthetic val$scanQRCode:Landroidx/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment$12;Landroidx/preference/CheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$12$1;->this$1:Lcom/android/camera/fragment/settings/CameraPreferenceFragment$12;

    iput-object p2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$12$1;->val$scanQRCode:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$12$1;->val$scanQRCode:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$12$1;->this$1:Lcom/android/camera/fragment/settings/CameraPreferenceFragment$12;

    iget-object v0, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$12;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    iget-object p0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$12$1;->val$scanQRCode:Landroidx/preference/CheckBoxPreference;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    return-void
.end method
