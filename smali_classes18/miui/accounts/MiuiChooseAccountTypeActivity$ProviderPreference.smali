.class Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
.super Landroid/preference/Preference;
.source "MiuiChooseAccountTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/accounts/MiuiChooseAccountTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderPreference"
.end annotation


# instance fields
.field private mAccountType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->setPersistent(Z)V

    invoke-virtual {p0, p4}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method
