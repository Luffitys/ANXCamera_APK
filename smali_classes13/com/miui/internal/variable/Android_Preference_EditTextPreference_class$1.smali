.class Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$1;
.super Ljava/lang/Object;
.source "Android_Preference_EditTextPreference_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$1;->this$0:Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddEditTextToDialogView(Landroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V
    .registers 10

    iget-object v0, p0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$1;->this$0:Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->handleOnAddEditTextToDialogView(JLandroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V

    return-void
.end method
