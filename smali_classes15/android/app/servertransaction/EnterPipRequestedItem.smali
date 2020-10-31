.class public final Landroid/app/servertransaction/EnterPipRequestedItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "EnterPipRequestedItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/EnterPipRequestedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/servertransaction/EnterPipRequestedItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/EnterPipRequestedItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/EnterPipRequestedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/servertransaction/EnterPipRequestedItem$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/servertransaction/EnterPipRequestedItem;-><init>()V

    return-void
.end method

.method public static obtain()Landroid/app/servertransaction/EnterPipRequestedItem;
    .registers 2

    const-class v0, Landroid/app/servertransaction/EnterPipRequestedItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/EnterPipRequestedItem;

    if-nez v0, :cond_10

    new-instance v1, Landroid/app/servertransaction/EnterPipRequestedItem;

    invoke-direct {v1}, Landroid/app/servertransaction/EnterPipRequestedItem;-><init>()V

    move-object v0, v1

    :cond_10
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/app/ClientTransactionHandler;->handlePictureInPictureRequested(Landroid/os/IBinder;)V

    return-void
.end method

.method public recycle()V
    .registers 1

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "EnterPipRequestedItem{}"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    return-void
.end method
