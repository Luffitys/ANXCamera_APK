.class public Landroid/app/servertransaction/FixedRotationAdjustmentsItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "FixedRotationAdjustmentsItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/FixedRotationAdjustmentsItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/FixedRotationAdjustmentsItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mToken:Landroid/os/IBinder;

    sget-object v0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    iput-object v0, p0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/FixedRotationAdjustmentsItem$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(Landroid/os/IBinder;Landroid/view/DisplayAdjustments$FixedRotationAdjustments;)Landroid/app/servertransaction/FixedRotationAdjustmentsItem;
    .registers 4

    const-class v0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;

    if-nez v0, :cond_10

    new-instance v1, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;

    invoke-direct {v1}, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;-><init>()V

    move-object v0, v1

    :cond_10
    iput-object p0, v0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mToken:Landroid/os/IBinder;

    iput-object p1, v0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;

    iget-object v3, p0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mToken:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mToken:Landroid/os/IBinder;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    iget-object v4, v2, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0

    :cond_2c
    :goto_2c
    return v1
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 6

    iget-object v0, p0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    invoke-virtual {p1, v0, v1}, Landroid/app/ClientTransactionHandler;->handleFixedRotationAdjustments(Landroid/os/IBinder;Landroid/view/DisplayAdjustments$FixedRotationAdjustments;)V

    return-void
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public recycle()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
