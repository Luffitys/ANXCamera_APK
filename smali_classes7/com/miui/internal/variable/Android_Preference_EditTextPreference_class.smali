.class public Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;
.super Lcom/miui/internal/util/ClassProxy;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;
.implements Lcom/miui/internal/variable/api/Overridable;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Landroid/preference/EditTextPreference;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    new-instance v0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$1;-><init>(Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;

    return-object p0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;

    move-result-object p0

    return-object p0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .locals 2

    const-string v0, "onAddEditTextToDialogView"

    const-string v1, "(Landroid/view/View;Landroid/widget/EditText;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalOnAddEditTextToDialogView(JLandroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p4, p5}, Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;->onAddEditTextToDialogView(Landroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->originalOnAddEditTextToDialogView(JLandroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V

    return-void
.end method

.method protected handle()V
    .locals 6

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->handleOnAddEditTextToDialogView(JLandroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V

    return-void
.end method

.method protected handleOnAddEditTextToDialogView(JLandroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->callOriginalOnAddEditTextToDialogView(JLandroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V

    sget p0, Lcom/miui/internal/R$id;->edittext_container:I

    invoke-virtual {p4, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 p1, -0x1

    const/4 p2, -0x2

    invoke-virtual {p0, p5, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method protected onClassProxyDisabled()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/AbstractExtension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalOnAddEditTextToDialogView(JLandroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.Android_Preference_EditTextPreference_class.originalOnAddEditTextToDialogView(long, EditTextPreference, View, EditText)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
