.class Lmiui/preference/ButtonPreference$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lmiui/preference/ButtonPreference;


# direct methods
.method constructor <init>(Lmiui/preference/ButtonPreference;)V
    .locals 0

    iput-object p1, p0, Lmiui/preference/ButtonPreference$1;->this$0:Lmiui/preference/ButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lmiui/preference/ButtonPreference$1;->this$0:Lmiui/preference/ButtonPreference;

    invoke-static {p1}, Lmiui/preference/ButtonPreference;->access$000(Lmiui/preference/ButtonPreference;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/preference/ButtonPreference$1;->this$0:Lmiui/preference/ButtonPreference;

    invoke-static {p1}, Lmiui/preference/ButtonPreference;->access$000(Lmiui/preference/ButtonPreference;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    iget-object p0, p0, Lmiui/preference/ButtonPreference$1;->this$0:Lmiui/preference/ButtonPreference;

    invoke-interface {p1, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method
