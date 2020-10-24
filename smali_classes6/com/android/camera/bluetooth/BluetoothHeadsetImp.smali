.class public Lcom/android/camera/bluetooth/BluetoothHeadsetImp;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

.field private mConnectStateRef:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Lcom/android/camera/bluetooth/BluetoothScoManager;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/bluetooth/BluetoothScoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mConnectStateRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;
    .locals 1

    new-instance v0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;

    invoke-direct {v0, p0}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private onBluetoothHeadsetConnected()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mConnectStateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onBluetoothHeadsetConnected()V

    return-void
.end method

.method private onBluetoothHeadsetConnecting()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mConnectStateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onBluetoothHeadsetConnecting()V

    return-void
.end method

.method private onBluetoothHeadsetDisconnected()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mConnectStateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onBluetoothHeadsetDisconnected()V

    return-void
.end method

.method private registerBluetoothHeadsetReceiver(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->isSupportBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->TAG:Ljava/lang/String;

    const-string p1, "Bluetooth is not supported"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unregisterBluetoothHeadsetReceiver(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->isSupportBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->TAG:Ljava/lang/String;

    const-string p1, "Bluetooth is not supported"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isSupportBluetooth()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportBluetoothSco(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/bluetooth/BluetoothScoManager;->supportBluetoothSco(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->onBluetoothHeadsetConnected()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->onBluetoothHeadsetConnecting()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->onBluetoothHeadsetDisconnected()V

    :cond_4
    :goto_0
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->registerBluetoothHeadsetReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public startBluetoothSco(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/bluetooth/BluetoothScoManager;->startBluetoothSco(I)V

    :cond_0
    return-void
.end method

.method public stopBluetoothSco(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/bluetooth/BluetoothScoManager;->stopBluetoothSco(I)V

    :cond_0
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->unregisterBluetoothHeadsetReceiver(Landroid/content/Context;)V

    return-void
.end method
