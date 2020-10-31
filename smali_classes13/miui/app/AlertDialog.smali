.class public Lmiui/app/AlertDialog;
.super Landroid/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/AlertDialog$Builder;
    }
.end annotation


# static fields
.field public static final THEME_DARK:I = 0x2

.field public static final THEME_DARK_EDIT:I = 0x4

.field public static final THEME_DARK_EDIT_DEFAULT:I = 0x6

.field public static final THEME_DAYNIGHT:I = 0x8

.field public static final THEME_DAYNIGHT_EDIT:I = 0x9

.field public static final THEME_DAYNIGHT_EDIT_DEFAULT:I = 0xa

.field public static final THEME_LIGHT:I = 0x3

.field public static final THEME_LIGHT_EDIT:I = 0x5

.field public static final THEME_LIGHT_EDIT_DEFAULT:I = 0x7


# instance fields
.field private mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-static {p1, p2}, Lmiui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/miui/internal/variable/AlertControllerWrapper;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    return-void
.end method

.method static synthetic access$000(Lmiui/app/AlertDialog;)Lcom/miui/internal/variable/AlertControllerWrapper;
    .registers 2

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    return-object v0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .registers 6

    packed-switch p1, :pswitch_data_38

    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_24

    move v0, p1

    goto :goto_37

    :pswitch_9
    sget v0, Lcom/miui/internal/R$style;->Theme_DayNight_Dialog_Edit_Default:I

    goto :goto_37

    :pswitch_c
    sget v0, Lcom/miui/internal/R$style;->Theme_DayNight_Dialog_Edit:I

    goto :goto_37

    :pswitch_f
    sget v0, Lmiui/R$style;->Theme_DayNight_Dialog_Alert:I

    goto :goto_37

    :pswitch_12
    sget v0, Lcom/miui/internal/R$style;->Theme_Light_Dialog_Edit_Default:I

    goto :goto_37

    :pswitch_15
    sget v0, Lcom/miui/internal/R$style;->Theme_Dark_Dialog_Edit_Default:I

    goto :goto_37

    :pswitch_18
    sget v0, Lcom/miui/internal/R$style;->Theme_Light_Dialog_Edit:I

    goto :goto_37

    :pswitch_1b
    sget v0, Lcom/miui/internal/R$style;->Theme_Dark_Dialog_Edit:I

    goto :goto_37

    :pswitch_1e
    sget v0, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    goto :goto_37

    :pswitch_21
    sget v0, Lmiui/R$style;->Theme_Dark_Dialog_Alert:I

    goto :goto_37

    :cond_24
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    move v0, v1

    :goto_37
    return v0

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 3

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItems()[Z
    .registers 2

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getCheckedItems()[Z

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getMiuiActionBar()Lmiui/app/ActionBar;
    .registers 2

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getImpl()Lcom/miui/internal/app/AlertControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/app/AlertControllerImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    invoke-virtual {p0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    iget-boolean v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper;->mHapticFeedbackEnabled:Z

    if-eqz v1, :cond_1f

    const v1, 0x10000009

    invoke-static {v1}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1f
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->installContent()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/variable/AlertControllerWrapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/variable/AlertControllerWrapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->onStop()V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .registers 6

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/miui/internal/variable/AlertControllerWrapper;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method

.method public setHapticFeedbackEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    iput-boolean p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper;->mHapticFeedbackEnabled:Z

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconAttribute(I)V
    .registers 4

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0}, Lmiui/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setIcon(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setView(Landroid/view/View;)V

    return-void
.end method
