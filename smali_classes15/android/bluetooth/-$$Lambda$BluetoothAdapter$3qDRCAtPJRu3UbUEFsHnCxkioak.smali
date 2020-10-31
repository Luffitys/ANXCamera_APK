.class public final synthetic Landroid/bluetooth/-$$Lambda$BluetoothAdapter$3qDRCAtPJRu3UbUEFsHnCxkioak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$3qDRCAtPJRu3UbUEFsHnCxkioak;->f$0:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$3qDRCAtPJRu3UbUEFsHnCxkioak;->f$0:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->lambda$addOnMetadataChangedListener$0(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method
