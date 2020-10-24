.class public Lmiui/preference/RadioButtonPreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioButtonPreferenceCategory"


# instance fields
.field private mCheckedPosition:I

.field private mRadioButtonPreference:Lmiui/preference/RadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    return-void
.end method


# virtual methods
.method public addPreference(Landroid/preference/Preference;)Z
    .locals 1

    instance-of v0, p1, Lmiui/preference/RadioButtonPreference;

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only RadioButtonPreference can be added toRadioButtonPreferenceCategory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCheckedPosition()I
    .locals 0

    iget p0, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    return p0
.end method

.method public getCheckedPreference()Landroid/preference/Preference;
    .locals 0

    iget-object p0, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mRadioButtonPreference:Lmiui/preference/RadioButtonPreference;

    return-object p0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p2, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mRadioButtonPreference:Lmiui/preference/RadioButtonPreference;

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setCheckedPosition(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method public setCheckedPreference(Landroid/preference/Preference;)V
    .locals 5

    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lmiui/preference/RadioButtonPreference;

    if-ne v3, p1, :cond_0

    iput-object v3, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mRadioButtonPreference:Lmiui/preference/RadioButtonPreference;

    iput v2, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public uncheckAllPreference()V
    .locals 4

    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
