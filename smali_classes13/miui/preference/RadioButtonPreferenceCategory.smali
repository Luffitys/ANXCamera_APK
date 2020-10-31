.class public Lmiui/preference/RadioButtonPreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "RadioButtonPreferenceCategory.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioButtonPreferenceCategory"


# instance fields
.field private mCheckedPosition:I

.field private mRadioButtonPreference:Lmiui/preference/RadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    return-void
.end method


# virtual methods
.method public addPreference(Landroid/preference/Preference;)Z
    .registers 4

    instance-of v0, p1, Lmiui/preference/RadioButtonPreference;

    if-eqz v0, :cond_e

    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_d
    return v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only RadioButtonPreference can be added toRadioButtonPreferenceCategory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCheckedPosition()I
    .registers 2

    iget v0, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    return v0
.end method

.method public getCheckedPreference()Landroid/preference/Preference;
    .registers 2

    iget-object v0, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mRadioButtonPreference:Lmiui/preference/RadioButtonPreference;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mRadioButtonPreference:Lmiui/preference/RadioButtonPreference;

    if-eq p1, v0, :cond_7

    invoke-virtual {p0, p1}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    :cond_7
    invoke-virtual {p0}, Lmiui/preference/RadioButtonPreferenceCategory;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public setCheckedPosition(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method public setCheckedPreference(Landroid/preference/Preference;)V
    .registers 6

    invoke-virtual {p0}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1f

    invoke-virtual {p0, v1}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    if-ne v2, p1, :cond_18

    iput-object v2, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mRadioButtonPreference:Lmiui/preference/RadioButtonPreference;

    iput v1, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1c

    :cond_18
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    return-void
.end method

.method public uncheckAllPreference()V
    .registers 5

    invoke-virtual {p0}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_14

    invoke-virtual {p0, v1}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    return-void
.end method
