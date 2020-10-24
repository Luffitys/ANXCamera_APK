.class Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiuix/preference/IPreferenceDialogFragment;


# instance fields
.field final synthetic this$0:Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needInputMethod()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBindDialogView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {p0, p1}, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;->access$100(Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {p0, p1}, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;->access$000(Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPrepareDialogBuilder(Lmiui/app/AlertDialog$Builder;)V
    .locals 0

    iget-object p0, p0, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-virtual {p0, p1}, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Lmiui/app/AlertDialog$Builder;)V

    return-void
.end method
