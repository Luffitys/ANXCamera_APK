.class Lmiui/bluetooth/ble/MiBlePayProfile$1;
.super Ljava/lang/Object;
.source "MiBlePayProfile.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/bluetooth/ble/MiBlePayProfile;->registerRssiChangedListener(Lmiui/bluetooth/ble/MiBlePayProfile$OnRSSIChangedListerner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/bluetooth/ble/MiBlePayProfile;

.field final synthetic val$listener:Lmiui/bluetooth/ble/MiBlePayProfile$OnRSSIChangedListerner;


# direct methods
.method constructor <init>(Lmiui/bluetooth/ble/MiBlePayProfile;Lmiui/bluetooth/ble/MiBlePayProfile$OnRSSIChangedListerner;)V
    .registers 3

    iput-object p1, p0, Lmiui/bluetooth/ble/MiBlePayProfile$1;->this$0:Lmiui/bluetooth/ble/MiBlePayProfile;

    iput-object p2, p0, Lmiui/bluetooth/ble/MiBlePayProfile$1;->val$listener:Lmiui/bluetooth/ble/MiBlePayProfile$OnRSSIChangedListerner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyProperty(I[B)V
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    if-eqz p2, :cond_15

    array-length v1, p2

    if-ne v1, v0, :cond_15

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBlePayProfile$1;->val$listener:Lmiui/bluetooth/ble/MiBlePayProfile$OnRSSIChangedListerner;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-interface {v0, v1}, Lmiui/bluetooth/ble/MiBlePayProfile$OnRSSIChangedListerner;->onRssi(I)V

    :cond_15
    return-void
.end method
