.class public Lmiui/app/AlertDialog;
.super Landroid/app/Dialog;
.source ""

# interfaces
.implements Landroid/content/DialogInterface;


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
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Lmiui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p2, Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p2, p1, p0, v0}, Lcom/miui/internal/variable/AlertControllerWrapper;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p2, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    return-void
.end method

.method static synthetic access$000(Lmiui/app/AlertDialog;)Lcom/miui/internal/variable/AlertControllerWrapper;
    .locals 0

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    return-object p0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    goto :goto_0

    :pswitch_0
    sget p1, Lcom/miui/internal/R$style;->Theme_DayNight_Dialog_Edit_Default:I

    goto :goto_0

    :pswitch_1
    sget p1, Lcom/miui/internal/R$style;->Theme_DayNight_Dialog_Edit:I

    goto :goto_0

    :pswitch_2
    sget p1, Lmiui/R$style;->Theme_DayNight_Dialog_Alert:I

    goto :goto_0

    :pswitch_3
    sget p1, Lcom/miui/internal/R$style;->Theme_Light_Dialog_Edit_Default:I

    goto :goto_0

    :pswitch_4
    sget p1, Lcom/miui/internal/R$style;->Theme_Dark_Dialog_Edit_Default:I

    goto :goto_0

    :pswitch_5
    sget p1, Lcom/miui/internal/R$style;->Theme_Light_Dialog_Edit:I

    goto :goto_0

    :pswitch_6
    sget p1, Lcom/miui/internal/R$style;->Theme_Dark_Dialog_Edit:I

    goto :goto_0

    :pswitch_7
    sget p1, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    goto :goto_0

    :pswitch_8
    sget p1, Lmiui/R$style;->Theme_Dark_Dialog_Alert:I

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x1010309

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getCheckedItems()[Z
    .locals 0

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getCheckedItems()[Z

    move-result-object p0

    return-object p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getListView()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public getMiuiActionBar()Lmiui/app/ActionBar;
    .locals 0

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getImpl()Lcom/miui/internal/app/AlertControllerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/app/AlertControllerImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0}, Lcom/miui/internal/variable/AlertControllerWrapper;->isChecked()Z

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    iget-boolean p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mHapticFeedbackEnabled:Z

    if-eqz p0, :cond_0

    const p0, 0x10000009

    invoke-static {p0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0}, Lcom/miui/internal/variable/AlertControllerWrapper;->installContent()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/variable/AlertControllerWrapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/variable/AlertControllerWrapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0}, Lcom/miui/internal/variable/AlertControllerWrapper;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0}, Lcom/miui/internal/variable/AlertControllerWrapper;->onStop()V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/internal/variable/AlertControllerWrapper;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method

.method public setHapticFeedbackEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    iput-boolean p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->mHapticFeedbackEnabled:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconAttribute(I)V
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/AlertControllerWrapper;->setIcon(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setView(Landroid/view/View;)V

    return-void
.end method
