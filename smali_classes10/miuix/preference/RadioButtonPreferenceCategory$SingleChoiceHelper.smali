.class abstract Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field mCheckable:Landroid/widget/Checkable;

.field final synthetic this$0:Lmiuix/preference/RadioButtonPreferenceCategory;


# direct methods
.method constructor <init>(Lmiuix/preference/RadioButtonPreferenceCategory;Landroid/widget/Checkable;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->mCheckable:Landroid/widget/Checkable;

    return-void
.end method


# virtual methods
.method abstract getPreference()Landroidx/preference/Preference;
.end method

.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {p0}, Landroid/widget/Checkable;->isChecked()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {p0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method abstract setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    return-void
.end method
