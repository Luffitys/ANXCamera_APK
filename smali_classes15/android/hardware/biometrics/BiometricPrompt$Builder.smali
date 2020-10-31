.class public Landroid/hardware/biometrics/BiometricPrompt$Builder;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private mPositiveButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/biometrics/BiometricPrompt;
    .registers 15

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string v2, "negative_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "use_default_title"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string v5, "allow_device_credential"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v5, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string v6, "authenticators_allowed"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v3, :cond_33

    const v6, 0x8000

    and-int/2addr v6, v5

    if-eqz v6, :cond_34

    :cond_33
    const/4 v4, 0x1

    :cond_34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_45

    if-eqz v2, :cond_3d

    goto :goto_45

    :cond_3d
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Title must be set and non-empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_45
    :goto_45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_56

    if-eqz v4, :cond_4e

    goto :goto_56

    :cond_4e
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Negative text must be set and non-empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_56
    :goto_56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_67

    if-nez v4, :cond_5f

    goto :goto_67

    :cond_5f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Can\'t have both negative button behavior and device credential enabled"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_67
    :goto_67
    new-instance v6, Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v9, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    iget-object v10, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    iget-object v11, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPositiveButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    iget-object v12, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    const/4 v13, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Landroid/hardware/biometrics/BiometricPrompt;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$1;)V

    return-object v6
.end method

.method public setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "authenticators_allowed"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "require_confirmation"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "allow_device_credential"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setDisallowBiometricsIfPolicyExists(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "check_dpm"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    if-eqz p2, :cond_21

    if-eqz p3, :cond_19

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "negative_text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    invoke-direct {v0, p2, p3}, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    return-object p0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text must be set and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReceiveSystemEvents(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "receive_system_events"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "subtitle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTextForDeviceCredential(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 6

    if-eqz p1, :cond_9

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "device_credential_title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_9
    if-eqz p2, :cond_12

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "device_credential_subtitle"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_12
    if-eqz p3, :cond_1b

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "device_credential_description"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1b
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setUseDefaultTitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "use_default_title"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method
