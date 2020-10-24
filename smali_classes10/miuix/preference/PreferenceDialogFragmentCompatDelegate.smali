.class Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mFragmentCompat:Landroidx/preference/PreferenceDialogFragment;

.field private mInternal:Lmiuix/preference/IPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Lmiuix/preference/IPreferenceDialogFragment;Landroidx/preference/PreferenceDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mInternal:Lmiuix/preference/IPreferenceDialogFragment;

    iput-object p2, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mFragmentCompat:Landroidx/preference/PreferenceDialogFragment;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    iget-object p1, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mFragmentCompat:Landroidx/preference/PreferenceDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mFragmentCompat:Landroidx/preference/PreferenceDialogFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lmiuix/preference/BuilderDelegate;

    invoke-direct {v2, p1, v1}, Lmiuix/preference/BuilderDelegate;-><init>(Landroid/content/Context;Lmiui/app/AlertDialog$Builder;)V

    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/preference/BuilderDelegate;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/preference/BuilderDelegate;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mFragmentCompat:Landroidx/preference/PreferenceDialogFragment;

    invoke-virtual {v2, v3, v4}, Lmiuix/preference/BuilderDelegate;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mFragmentCompat:Landroidx/preference/PreferenceDialogFragment;

    invoke-virtual {v2, v3, v4}, Lmiuix/preference/BuilderDelegate;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mInternal:Lmiuix/preference/IPreferenceDialogFragment;

    invoke-interface {v3, p1}, Lmiuix/preference/IPreferenceDialogFragment;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mInternal:Lmiuix/preference/IPreferenceDialogFragment;

    invoke-interface {v0, p1}, Lmiuix/preference/IPreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    invoke-virtual {v2, p1}, Lmiuix/preference/BuilderDelegate;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Lmiuix/preference/BuilderDelegate;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    iget-object p1, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mInternal:Lmiuix/preference/IPreferenceDialogFragment;

    invoke-interface {p1, v1}, Lmiuix/preference/IPreferenceDialogFragment;->onPrepareDialogBuilder(Lmiui/app/AlertDialog$Builder;)V

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p1

    iget-object p0, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mInternal:Lmiuix/preference/IPreferenceDialogFragment;

    invoke-interface {p0}, Lmiuix/preference/IPreferenceDialogFragment;->needInputMethod()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    return-object p1
.end method
