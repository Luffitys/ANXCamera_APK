.class Lmiui/maml/MamlConfigSettings$NumberInputItem;
.super Lmiui/maml/MamlConfigSettings$VariableItem;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberInputItem"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$VariableItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$NumberInputItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method

.method private getValueString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_8

    move-wide v0, v2

    goto :goto_9

    :catch_8
    move-exception v2

    :goto_9
    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .registers 7

    const-wide/16 v0, 0x0

    :try_start_2
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_9} :catch_23

    move-wide v0, v2

    nop

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->this$0:Lmiui/maml/MamlConfigSettings;

    # getter for: Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    invoke-static {v3}, Lmiui/maml/MamlConfigSettings;->access$1100(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lmiui/maml/MamlConfigSettings$NumberInputItem;->setValuePreview(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :catch_23
    move-exception v2

    const/4 v3, 0x0

    return v3
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .registers 3

    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .registers 4

    invoke-super {p0, p1}, Lmiui/maml/MamlConfigSettings$VariableItem;->onBuild(Lorg/w3c/dom/Element;)V

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setValue(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$NumberInputItem;->getValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmiui/maml/MamlConfigSettings$NumberInputItem;->setValuePreview(Ljava/lang/String;)V

    return-void
.end method
