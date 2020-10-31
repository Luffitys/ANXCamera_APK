.class public final synthetic Landroid/telecom/-$$Lambda$cyYWqCYT05eM23eLVm4oQ5DrYjw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/telecom/-$$Lambda$cyYWqCYT05eM23eLVm4oQ5DrYjw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telecom/-$$Lambda$cyYWqCYT05eM23eLVm4oQ5DrYjw;

    invoke-direct {v0}, Landroid/telecom/-$$Lambda$cyYWqCYT05eM23eLVm4oQ5DrYjw;-><init>()V

    sput-object v0, Landroid/telecom/-$$Lambda$cyYWqCYT05eM23eLVm4oQ5DrYjw;->INSTANCE:Landroid/telecom/-$$Lambda$cyYWqCYT05eM23eLVm4oQ5DrYjw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
