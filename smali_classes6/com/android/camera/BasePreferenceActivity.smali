.class public abstract Lcom/android/camera/BasePreferenceActivity;
.super Lmiui/app/Activity;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mPreferenceFragment:Lcom/android/camera/fragment/settings/BasePreferenceFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/BasePreferenceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lmiui/app/Activity;->onBackPressed()V

    iget-object p0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceFragment:Lcom/android/camera/fragment/settings/BasePreferenceFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object p0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceFragment:Lcom/android/camera/fragment/settings/BasePreferenceFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onRestart()V

    :cond_0
    return-void
.end method
