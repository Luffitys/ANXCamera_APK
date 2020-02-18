.class Lcom/android/camera/CameraPreferenceActivity$3$1;
.super Ljava/lang/Object;
.source "CameraPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraPreferenceActivity$3;->onPackageInstalled(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraPreferenceActivity$3;

.field final synthetic val$scanQRCode:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraPreferenceActivity$3;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraPreferenceActivity$3$1;->this$1:Lcom/android/camera/CameraPreferenceActivity$3;

    iput-object p2, p0, Lcom/android/camera/CameraPreferenceActivity$3$1;->val$scanQRCode:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity$3$1;->val$scanQRCode:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity$3$1;->this$1:Lcom/android/camera/CameraPreferenceActivity$3;

    iget-object v0, v0, Lcom/android/camera/CameraPreferenceActivity$3;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    iget-object p0, p0, Lcom/android/camera/CameraPreferenceActivity$3$1;->val$scanQRCode:Landroid/preference/CheckBoxPreference;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/CameraPreferenceActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    return-void
.end method
