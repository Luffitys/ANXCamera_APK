.class public Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "Android_Preference_EditTextPreference_class.java"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;
.implements Lcom/miui/internal/variable/api/Overridable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy<",
        "Landroid/preference/EditTextPreference;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;",
        "Lcom/miui/internal/variable/api/Overridable<",
        "Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;",
        ">;"
    }
.end annotation


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Landroid/preference/EditTextPreference;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    new-instance v0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$1;-><init>(Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;

    return-object v0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .registers 3

    const-string v0, "onAddEditTextToDialogView"

    const-string v1, "(Landroid/view/View;Landroid/widget/EditText;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalOnAddEditTextToDialogView(JLandroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;

    if-eqz v0, :cond_8

    invoke-interface {v0, p3, p4, p5}, Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;->onAddEditTextToDialogView(Landroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V

    return-void

    :cond_8
    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->originalOnAddEditTextToDialogView(JLandroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V

    return-void
.end method

.method protected handle()V
    .registers 7

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->handleOnAddEditTextToDialogView(JLandroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V

    return-void
.end method

.method protected handleOnAddEditTextToDialogView(JLandroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V
    .registers 9

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->callOriginalOnAddEditTextToDialogView(JLandroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V

    sget v0, Lcom/miui/internal/R$id;->edittext_container:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p5, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_12
    return-void
.end method

.method protected onClassProxyDisabled()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Extension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalOnAddEditTextToDialogView(JLandroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V
    .registers 8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.Android_Preference_EditTextPreference_class.originalOnAddEditTextToDialogView(long, EditTextPreference, View, EditText)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
