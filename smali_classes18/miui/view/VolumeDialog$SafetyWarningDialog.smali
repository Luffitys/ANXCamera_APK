.class final Lmiui/view/VolumeDialog$SafetyWarningDialog;
.super Landroid/app/AlertDialog;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SafetyWarningDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method public constructor <init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lmiui/view/VolumeDialog$SafetyWarningDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lmiui/view/VolumeDialog$SafetyWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lmiui/view/VolumeDialog$SafetyWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, 0x110e0026

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/view/VolumeDialog$SafetyWarningDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x1040013

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmiui/view/VolumeDialog$SafetyWarningDialog$1;

    invoke-direct {v1, p0, p1}, Lmiui/view/VolumeDialog$SafetyWarningDialog$1;-><init>(Lmiui/view/VolumeDialog$SafetyWarningDialog;Lmiui/view/VolumeDialog;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lmiui/view/VolumeDialog$SafetyWarningDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x1040009

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x2

    invoke-virtual {p0, v2, v0, v1}, Lmiui/view/VolumeDialog$SafetyWarningDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x1010355

    invoke-virtual {p0, v0}, Lmiui/view/VolumeDialog$SafetyWarningDialog;->setIconAttribute(I)V

    new-instance v0, Lmiui/view/VolumeDialog$SafetyWarningDialog$2;

    invoke-direct {v0, p0, p1}, Lmiui/view/VolumeDialog$SafetyWarningDialog$2;-><init>(Lmiui/view/VolumeDialog$SafetyWarningDialog;Lmiui/view/VolumeDialog;)V

    invoke-virtual {p0, v0}, Lmiui/view/VolumeDialog$SafetyWarningDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x18

    if-eq v0, p1, :cond_e

    const/16 v0, 0x19

    if-ne v0, p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_e
    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x18

    if-eq v0, p1, :cond_e

    const/16 v0, 0x19

    if-ne v0, p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_e
    :goto_e
    const/4 v0, 0x1

    return v0
.end method
