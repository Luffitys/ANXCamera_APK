.class Landroid/inputmethodservice/InputMethodAlertDialog;
.super Landroid/widget/PopupWindow;
.source "InputMethodAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodAlertDialog$ConfirmListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodAlertDialog"


# instance fields
.field private mConfirmListener:Landroid/inputmethodservice/InputMethodAlertDialog$ConfirmListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodAlertDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public initPopupWindow(Landroid/view/View;)V
    .registers 11

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodAlertDialog;->setHeight(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodAlertDialog;->setWidth(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodAlertDialog;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodAlertDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x110b0018

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x11090089

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x1109006e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x110900cd

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x110e00be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x11090084

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x110e00bd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x11090032

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x1109004d

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x110f000d

    invoke-virtual {p0, v8}, Landroid/inputmethodservice/InputMethodAlertDialog;->setAnimationStyle(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodAlertDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p1, v1, v1, v1}, Landroid/inputmethodservice/InputMethodAlertDialog;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v8, 0x3e99999a    # 0.3f

    invoke-static {v1, v8}, Landroid/inputmethodservice/InputMethodPopupWindowHelper;->changeWindowBackground(Landroid/view/View;F)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x11090032

    if-eq v0, v1, :cond_24

    const v1, 0x1109004d

    if-eq v0, v1, :cond_1b

    const v1, 0x11090089

    if-eq v0, v1, :cond_24

    const-string v0, "InputMethodAlertDialog"

    const-string v1, "click inputmethod alert dialog error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_1b
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodAlertDialog;->mConfirmListener:Landroid/inputmethodservice/InputMethodAlertDialog$ConfirmListener;

    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodAlertDialog$ConfirmListener;->onConfirm()V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodAlertDialog;->dismiss()V

    goto :goto_28

    :cond_24
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodAlertDialog;->dismiss()V

    nop

    :goto_28
    return-void
.end method

.method public setConfirmListener(Landroid/inputmethodservice/InputMethodAlertDialog$ConfirmListener;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodAlertDialog;->mConfirmListener:Landroid/inputmethodservice/InputMethodAlertDialog$ConfirmListener;

    return-void
.end method
