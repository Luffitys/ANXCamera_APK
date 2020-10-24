.class Lmiuix/preference/ListPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiuix/preference/IPreferenceDialogFragment;


# instance fields
.field final synthetic this$0:Lmiuix/preference/ListPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Lmiuix/preference/ListPreferenceDialogFragmentCompat;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/ListPreferenceDialogFragmentCompat;

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

    iget-object p0, p0, Lmiuix/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/ListPreferenceDialogFragmentCompat;

    invoke-static {p0, p1}, Lmiuix/preference/ListPreferenceDialogFragmentCompat;->access$100(Lmiuix/preference/ListPreferenceDialogFragmentCompat;Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/ListPreferenceDialogFragmentCompat;

    invoke-static {p0, p1}, Lmiuix/preference/ListPreferenceDialogFragmentCompat;->access$000(Lmiuix/preference/ListPreferenceDialogFragmentCompat;Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPrepareDialogBuilder(Lmiui/app/AlertDialog$Builder;)V
    .locals 0

    iget-object p0, p0, Lmiuix/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/ListPreferenceDialogFragmentCompat;

    invoke-virtual {p0, p1}, Lmiuix/preference/ListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Lmiui/app/AlertDialog$Builder;)V

    return-void
.end method
