.class Landroid/preference/EditTextPreference$1;
.super Ljava/lang/Object;
.source "EditTextPreference.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Preference_EditTextPreference$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/EditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddEditTextToDialogView(Landroid/preference/EditTextPreference;Landroid/view/View;Landroid/widget/EditText;)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Landroid/preference/EditTextPreference;->originalOnAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    return-void
.end method
