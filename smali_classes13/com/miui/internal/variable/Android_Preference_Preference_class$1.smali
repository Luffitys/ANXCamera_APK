.class Lcom/miui/internal/variable/Android_Preference_Preference_class$1;
.super Ljava/lang/Object;
.source "Android_Preference_Preference_class.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/variable/Android_Preference_Preference_class;->onBindViewForCheckBoxPreference(Landroid/preference/CheckBoxPreference;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/Android_Preference_Preference_class;

.field final synthetic val$preference:Landroid/preference/CheckBoxPreference;

.field final synthetic val$slidingButton:Lmiui/widget/SlidingButton;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/view/View;Landroid/preference/CheckBoxPreference;Lmiui/widget/SlidingButton;)V
    .registers 5

    iput-object p1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->this$0:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    iput-object p2, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$preference:Landroid/preference/CheckBoxPreference;

    iput-object p4, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$slidingButton:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->this$0:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    iget-object v1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$preference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->getPreferenceScreen(Landroid/preference/Preference;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->this$0:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    iget-object v2, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$preference:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$view:Landroid/view/View;

    # invokes: Lcom/miui/internal/variable/Android_Preference_Preference_class;->clickPreferenceScreen(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z
    invoke-static {v1, v0, v2, v3}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->access$100(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z

    iget-object v1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$preference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eq p2, v1, :cond_2b

    iget-object v1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$slidingButton:Lmiui/widget/SlidingButton;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    :cond_2b
    return-void
.end method
