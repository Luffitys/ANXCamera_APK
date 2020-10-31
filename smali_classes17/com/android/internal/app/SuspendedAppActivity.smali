.class public Lcom/android/internal/app/SuspendedAppActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SuspendedAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final EXTRA_ACTIVITY_OPTIONS:Ljava/lang/String; = "com.android.internal.app.extra.ACTIVITY_OPTIONS"

.field public static final EXTRA_DIALOG_INFO:Ljava/lang/String; = "com.android.internal.app.extra.DIALOG_INFO"

.field public static final EXTRA_SUSPENDED_PACKAGE:Ljava/lang/String; = "com.android.internal.app.extra.SUSPENDED_PACKAGE"

.field public static final EXTRA_SUSPENDING_PACKAGE:Ljava/lang/String; = "com.android.internal.app.extra.SUSPENDING_PACKAGE"

.field public static final EXTRA_UNSUSPEND_INTENT:Ljava/lang/String; = "com.android.internal.app.extra.UNSUSPEND_INTENT"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.internal.app"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMoreDetailsIntent:Landroid/content/Intent;

.field private mNeutralButtonAction:I

.field private mOnUnsuspend:Landroid/content/IntentSender;

.field private mOptions:Landroid/os/Bundle;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

.field private mSuspendedPackage:Ljava/lang/String;

.field private mSuspendingAppResources:Landroid/content/res/Resources;

.field private mSuspendingPackage:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/internal/app/SuspendedAppActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createSuspendedAppInterceptIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Landroid/content/Intent;
    .registers 9

    invoke-static {p2}, Lcom/android/internal/app/SuspendedAppActivityInjector;->ensureJumpToAppTimer(Landroid/content/pm/SuspendDialogInfo;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/android/internal/app/SuspendedAppActivityInjector;->getTimerTargetIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/internal/app/SuspendedAppActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.internal.app.extra.SUSPENDED_PACKAGE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.internal.app.extra.DIALOG_INFO"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.internal.app.extra.SUSPENDING_PACKAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.internal.app.extra.UNSUSPEND_INTENT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.internal.app.extra.ACTIVITY_OPTIONS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    sget-object v1, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method private getMoreDetailsActivity()Landroid/content/Intent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_SUSPENDED_APP_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.permission.SEND_SHOW_SUSPENDED_APP_DETAILS"

    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mPm:Landroid/content/pm/PackageManager;

    iget v3, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    const/high16 v4, 0xc0000

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_39

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_39

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const-string v4, "android.permission.SEND_SHOW_SUSPENDED_APP_DETAILS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendedPackage:Ljava/lang/String;

    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x14000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0

    :cond_39
    const/4 v3, 0x0

    return-object v3
.end method

.method private requestDismissKeyguardIfNeeded(Ljava/lang/CharSequence;)V
    .registers 4

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/SuspendedAppActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Lcom/android/internal/app/SuspendedAppActivity$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/SuspendedAppActivity$1;-><init>(Lcom/android/internal/app/SuspendedAppActivity;)V

    invoke-virtual {v0, p0, p1, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    :cond_16
    return-void
.end method

.method private resolveDialogMessage()Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendedPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/app/SuspendedAppActivity;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Landroid/content/pm/SuspendDialogInfo;->getDialogMessageResId()I

    move-result v1

    iget-object v4, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v4}, Landroid/content/pm/SuspendDialogInfo;->getDialogMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_3d

    iget-object v5, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingAppResources:Landroid/content/res/Resources;

    if-eqz v5, :cond_3d

    :try_start_1c
    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v5, v1, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_24} :catch_25

    return-object v2

    :catch_25
    move-exception v5

    sget-object v6, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not resolve string resource id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :cond_3d
    if-eqz v4, :cond_58

    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v5, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_58
    :goto_58
    const v1, 0x1040139

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    iget-object v3, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingPackage:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/app/SuspendedAppActivity;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/app/SuspendedAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private resolveIcon()Landroid/graphics/drawable/Drawable;
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/pm/SuspendDialogInfo;->getIconResId()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    nop

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingAppResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_31

    :try_start_11
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_19} :catch_1a

    return-object v1

    :catch_1a
    move-exception v1

    sget-object v2, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not resolve drawable resource id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v1, 0x0

    return-object v1
.end method

.method private resolveNeutralButtonText()Ljava/lang/String;
    .registers 7

    iget v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mNeutralButtonAction:I

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    const/4 v2, 0x1

    if-eq v0, v2, :cond_21

    sget-object v0, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown neutral button action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/app/SuspendedAppActivity;->mNeutralButtonAction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_21
    const v0, 0x104013c

    goto :goto_2e

    :cond_25
    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mMoreDetailsIntent:Landroid/content/Intent;

    if-nez v0, :cond_2a

    return-object v1

    :cond_2a
    const v0, 0x104013a

    nop

    :goto_2e
    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/content/pm/SuspendDialogInfo;->getNeutralButtonTextResId()I

    move-result v1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    if-eqz v1, :cond_5a

    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingAppResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_5a

    :try_start_3e
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3e .. :try_end_42} :catch_43

    return-object v2

    :catch_43
    move-exception v2

    sget-object v3, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not resolve string resource id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    invoke-virtual {p0, v0}, Lcom/android/internal/app/SuspendedAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private resolveTitle()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/pm/SuspendDialogInfo;->getTitleResId()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    nop

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingAppResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_2d

    :try_start_11
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    move-exception v1

    sget-object v2, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not resolve string resource id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const v1, 0x104013b

    invoke-virtual {p0, v1}, Lcom/android/internal/app/SuspendedAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 13

    const/4 v0, -0x3

    if-eq p2, v0, :cond_5

    goto/16 :goto_d1

    :cond_5
    iget v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mNeutralButtonAction:I

    if-eqz v0, :cond_b9

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    sget-object v0, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected action on neutral button: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mNeutralButtonAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d1

    :cond_26
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    :try_start_2a
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendedPackage:Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingPackage:Ljava/lang/String;

    iget v9, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    move-object v2, v0

    invoke-interface/range {v2 .. v9}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendedPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    sget-object v2, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not unsuspend "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendedPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_5e} :catch_b0

    goto/16 :goto_d1

    :cond_60
    nop

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_UNSUSPENDED_MANUALLY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendedPackage:Ljava/lang/String;

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/SuspendedAppActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v3, p0, Lcom/android/internal/app/SuspendedAppActivity;->mOnUnsuspend:Landroid/content/IntentSender;

    if-eqz v3, :cond_d1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    :try_start_92
    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_95
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_af

    :catch_96
    move-exception v2

    sget-object v3, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while starting intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/app/SuspendedAppActivity;->mOnUnsuspend:Landroid/content/IntentSender;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_af
    goto :goto_d1

    :catch_b0
    move-exception v1

    sget-object v2, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t talk to system process"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d1

    :cond_b9
    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mMoreDetailsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_c9

    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mOptions:Landroid/os/Bundle;

    iget v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/SuspendedAppActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_d1

    :cond_c9
    sget-object v0, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    const-string v1, "Neutral button should not have existed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_d1
    :goto_d1
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.internal.app.extra.ACTIVITY_OPTIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mOptions:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.USER_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    if-gez v1, :cond_45

    sget-object v1, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->finish()V

    return-void

    :cond_45
    const-string v1, "com.android.internal.app.extra.SUSPENDED_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendedPackage:Ljava/lang/String;

    const-string v1, "com.android.internal.app.extra.SUSPENDING_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingPackage:Ljava/lang/String;

    const-string v1, "com.android.internal.app.extra.DIALOG_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SuspendDialogInfo;

    iput-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    const-string v1, "com.android.internal.app.extra.UNSUSPEND_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    iput-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mOnUnsuspend:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    if-eqz v1, :cond_93

    :try_start_6d
    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingPackage:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingAppResources:Landroid/content/res/Resources;
    :try_end_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6d .. :try_end_79} :catch_7a

    goto :goto_93

    :catch_7a
    move-exception v1

    sget-object v2, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_93
    :goto_93
    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    if-eqz v1, :cond_9c

    invoke-virtual {v1}, Landroid/content/pm/SuspendDialogInfo;->getNeutralButtonAction()I

    move-result v1

    goto :goto_9d

    :cond_9c
    const/4 v1, 0x0

    :goto_9d
    iput v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mNeutralButtonAction:I

    if-nez v1, :cond_a6

    invoke-direct {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getMoreDetailsActivity()Landroid/content/Intent;

    move-result-object v1

    goto :goto_a7

    :cond_a6
    const/4 v1, 0x0

    :goto_a7
    iput-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mMoreDetailsIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/android/internal/app/SuspendedAppActivity;->resolveIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/app/SuspendedAppActivity;->resolveTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/internal/app/SuspendedAppActivity;->resolveDialogMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/android/internal/app/SuspendedAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/internal/app/SuspendedAppActivity;->resolveNeutralButtonText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, v2}, Lcom/android/internal/app/SuspendedAppActivity;->requestDismissKeyguardIfNeeded(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->setupAlert()V

    return-void
.end method
