.class abstract Lmiui/maml/MamlConfigSettings$PickerItem;
.super Lmiui/maml/MamlConfigSettings$Item;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PickerItem"
.end annotation


# instance fields
.field protected mRequestCode:I

.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$PickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$Item;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$PickerItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .registers 3

    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onActivityResult(ILandroid/content/Intent;)Z
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$PickerItem;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$PickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$PickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    # invokes: Lmiui/maml/MamlConfigSettings;->getNextRequestCode()I
    invoke-static {v0}, Lmiui/maml/MamlConfigSettings;->access$1400(Lmiui/maml/MamlConfigSettings;)I

    move-result v0

    iput v0, p0, Lmiui/maml/MamlConfigSettings$PickerItem;->mRequestCode:I

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$PickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    # invokes: Lmiui/maml/MamlConfigSettings;->putRequestCodeObj(ILjava/lang/Object;)V
    invoke-static {v1, v0, p0}, Lmiui/maml/MamlConfigSettings;->access$1500(Lmiui/maml/MamlConfigSettings;ILjava/lang/Object;)V

    return-void
.end method
