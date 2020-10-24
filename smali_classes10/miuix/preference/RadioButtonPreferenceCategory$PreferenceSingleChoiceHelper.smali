.class Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;
.super Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
.source ""


# instance fields
.field mPreference:Lmiuix/preference/RadioButtonPreference;

.field final synthetic this$0:Lmiuix/preference/RadioButtonPreferenceCategory;


# direct methods
.method constructor <init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreference;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-direct {p0, p1, p2}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Landroid/widget/Checkable;)V

    iput-object p2, p0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/RadioButtonPreference;

    return-void
.end method


# virtual methods
.method public getPreference()Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/RadioButtonPreference;

    return-object p0
.end method

.method public setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .locals 0

    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p0, p1}, Lmiuix/preference/RadioButtonPreference;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    return-void
.end method
