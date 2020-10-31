.class public Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;
.super Ljava/lang/Object;
.source "ChooserLockSettingsHelperWrapper.java"


# instance fields
.field private mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

.field private mMiuiLockPatternUtilsWrapper:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    invoke-direct {v0, p1}, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->mMiuiLockPatternUtilsWrapper:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    return-void
.end method


# virtual methods
.method public isACLockEnabled()Z
    .registers 2

    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->mMiuiLockPatternUtilsWrapper:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    invoke-virtual {v0}, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->savedMiuiLockPatternExists()Z

    move-result v0

    return v0
.end method

.method public setACLockEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, p1}, Landroid/security/ChooseLockSettingsHelper;->setACLockEnabled(Z)V

    return-void
.end method

.method public setPasswordForPrivacyModeEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, p1}, Landroid/security/ChooseLockSettingsHelper;->setPasswordForPrivacyModeEnabled(Z)V

    return-void
.end method

.method public setPrivacyModeEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, p1}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    return-void
.end method

.method public utils()Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;
    .registers 2

    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->mMiuiLockPatternUtilsWrapper:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    return-object v0
.end method
