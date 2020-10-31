.class public interface abstract Landroid/view/autofill/AutofillManager$AutofillClient;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutofillClient"
.end annotation


# virtual methods
.method public abstract autofillClientAuthenticate(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
.end method

.method public abstract autofillClientDispatchUnhandledKey(Landroid/view/View;Landroid/view/KeyEvent;)V
.end method

.method public abstract autofillClientFindViewByAccessibilityIdTraversal(II)Landroid/view/View;
.end method

.method public abstract autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;
.end method

.method public abstract autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;
.end method

.method public abstract autofillClientGetActivityToken()Landroid/os/IBinder;
.end method

.method public abstract autofillClientGetComponentName()Landroid/content/ComponentName;
.end method

.method public abstract autofillClientGetNextAutofillId()Landroid/view/autofill/AutofillId;
.end method

.method public abstract autofillClientGetViewVisibility([Landroid/view/autofill/AutofillId;)[Z
.end method

.method public abstract autofillClientIsCompatibilityModeEnabled()Z
.end method

.method public abstract autofillClientIsFillUiShowing()Z
.end method

.method public abstract autofillClientIsVisibleForAutofill()Z
.end method

.method public abstract autofillClientRequestHideFillUi()Z
.end method

.method public abstract autofillClientRequestShowFillUi(Landroid/view/View;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)Z
.end method

.method public abstract autofillClientResetableStateAvailable()V
.end method

.method public abstract autofillClientRunOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract isDisablingEnterExitEventForAutofill()Z
.end method
