.class Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;
.super Lmiui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbStorageSwitchCommand"
.end annotation


# instance fields
.field private mConnected:Z

.field private mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .registers 5

    const-string v0, "usb_mode"

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/ActionCommand$NotificationReceiver;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    return-void
.end method

.method static synthetic access$300(Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method


# virtual methods
.method protected doPerform()V
    .registers 6

    iget-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v2, v2, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v2, :cond_14

    xor-int/lit8 v2, v0, 0x1

    move v1, v2

    goto :goto_1f

    :cond_14
    iget-object v2, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v2, v2, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-ne v2, v0, :cond_1b

    return-void

    :cond_1b
    iget-object v2, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v2, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    :goto_1f
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    move v2, v1

    new-instance v3, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;

    const-string v4, "StorageSwitchThread"

    invoke-direct {v3, p0, v4, v2}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;-><init>(Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;Ljava/lang/String;Z)V

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->start()V

    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 6

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    :cond_e
    invoke-super {p0, p1, p2, p3}, Lmiui/maml/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method

.method protected update()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_1c

    const-string v0, "ActionCommand"

    const-string v1, "Failed to get StorageManager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    iget-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    if-eqz v1, :cond_2c

    if-eqz v0, :cond_2a

    const/4 v1, 0x2

    goto :goto_2d

    :cond_2a
    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    invoke-virtual {p0, v1}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    return-void
.end method
