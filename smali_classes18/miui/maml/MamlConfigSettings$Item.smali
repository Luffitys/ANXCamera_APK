.class abstract Lmiui/maml/MamlConfigSettings$Item;
.super Ljava/lang/Object;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Item"
.end annotation


# instance fields
.field protected mDefaultValue:Ljava/lang/String;

.field protected mId:Ljava/lang/String;

.field protected mPreference:Landroid/preference/Preference;

.field protected mSummary:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;

.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$Item;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$Item;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method public abstract OnValueChange(Ljava/lang/Object;)Z
.end method

.method public final build(Landroid/preference/PreferenceCategory;Lorg/w3c/dom/Element;)Z
    .registers 6

    const-string v0, "id"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mId:Ljava/lang/String;

    const-string v0, "text"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mTitle:Ljava/lang/String;

    const-string v0, "summary"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mSummary:Ljava/lang/String;

    const-string v0, "default"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mDefaultValue:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-virtual {p0, v0}, Lmiui/maml/MamlConfigSettings$Item;->createPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    return v1

    :cond_2c
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$Item;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$Item;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$Item;->mId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$Item;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual {p0, p2}, Lmiui/maml/MamlConfigSettings$Item;->onBuild(Lorg/w3c/dom/Element;)V

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings$Item;->updateValue()V

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract createPreference(Landroid/content/Context;)Landroid/preference/Preference;
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .registers 2

    return-void
.end method

.method public onClick()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected setValuePreview(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_a

    const-string v1, ""

    goto :goto_b

    :cond_a
    move-object v1, p1

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$Item;->mSummary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$Item;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public abstract updateValue()V
.end method
