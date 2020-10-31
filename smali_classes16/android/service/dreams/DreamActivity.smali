.class public Landroid/service/dreams/DreamActivity;
.super Landroid/app/Activity;
.source "DreamActivity.java"


# static fields
.field static final EXTRA_CALLBACK:Ljava/lang/String; = "binder"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finishAndRemoveTask()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    const/4 v0, 0x0

    const v1, 0x10a002f

    invoke-virtual {p0, v0, v1}, Landroid/service/dreams/DreamActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    nop

    invoke-virtual {p0}, Landroid/service/dreams/DreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "binder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p0}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->onActivityCreated(Landroid/service/dreams/DreamActivity;)V

    :cond_15
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/service/dreams/DreamActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    const v0, 0x10a0030

    const v1, 0x10a0031

    invoke-virtual {p0, v0, v1}, Landroid/service/dreams/DreamActivity;->overridePendingTransition(II)V

    return-void
.end method
