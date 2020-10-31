.class public Landroid/net/NetworkStatsSysApp;
.super Ljava/lang/Object;
.source "NetworkStatsSysApp.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStatsSysApp$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkStatsSysApp;",
            ">;"
        }
    .end annotation
.end field

.field public static final IFACE_ALL:Ljava/lang/String;

.field public static final PACKAGE_DEFAULT:Ljava/lang/String; = ""


# instance fields
.field private capacity:I

.field private elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private nameOrHashs:[Ljava/lang/String;

.field private rxBytes:[J

.field private rxPackets:[J

.field private size:I

.field private txBytes:[J

.field private txPackets:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Landroid/net/NetworkStatsSysApp;->IFACE_ALL:Ljava/lang/String;

    new-instance v0, Landroid/net/NetworkStatsSysApp$1;

    invoke-direct {v0}, Landroid/net/NetworkStatsSysApp$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStatsSysApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStatsSysApp;->size:I

    if-ltz p3, :cond_25

    iput p3, p0, Landroid/net/NetworkStatsSysApp;->capacity:I

    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    goto :goto_3f

    :cond_25
    iput v0, p0, Landroid/net/NetworkStatsSysApp;->capacity:I

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    :goto_3f
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStatsSysApp;->size:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStatsSysApp;->capacity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    return-void
.end method

.method public static subtract(Landroid/net/NetworkStatsSysApp;Landroid/net/NetworkStatsSysApp;Landroid/net/NetworkStatsSysApp;)Landroid/net/NetworkStatsSysApp;
    .registers 15

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    iget-wide v2, p1, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_d

    const-wide/16 v0, 0x0

    :cond_d
    new-instance v4, Landroid/net/NetworkStatsSysApp$Entry;

    invoke-direct {v4}, Landroid/net/NetworkStatsSysApp$Entry;-><init>()V

    if-eqz p2, :cond_21

    iget v5, p2, Landroid/net/NetworkStatsSysApp;->capacity:I

    iget v6, p0, Landroid/net/NetworkStatsSysApp;->size:I

    if-lt v5, v6, :cond_21

    move-object v5, p2

    const/4 v6, 0x0

    iput v6, v5, Landroid/net/NetworkStatsSysApp;->size:I

    iput-wide v0, v5, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    goto :goto_28

    :cond_21
    new-instance v5, Landroid/net/NetworkStatsSysApp;

    iget v6, p0, Landroid/net/NetworkStatsSysApp;->size:I

    invoke-direct {v5, v0, v1, v6}, Landroid/net/NetworkStatsSysApp;-><init>(JI)V

    :goto_28
    const/4 v6, 0x0

    :goto_29
    iget v7, p0, Landroid/net/NetworkStatsSysApp;->size:I

    if-ge v6, v7, :cond_c8

    iget-object v7, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    aget-object v7, v7, v6

    iput-object v7, v4, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    aget-object v7, v7, v6

    iput-object v7, v4, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    iget-object v7, v4, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    iget-object v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    invoke-virtual {p1, v7, v8, v6}, Landroid/net/NetworkStatsSysApp;->findIndexHinted(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5d

    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    aget-wide v8, v8, v6

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    aget-wide v8, v8, v6

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    aget-wide v8, v8, v6

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    aget-wide v8, v8, v6

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    goto :goto_c1

    :cond_5d
    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    aget-wide v8, v8, v6

    iget-object v10, p1, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    aget-wide v10, v10, v7

    sub-long/2addr v8, v10

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    aget-wide v8, v8, v6

    iget-object v10, p1, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    aget-wide v10, v10, v7

    sub-long/2addr v8, v10

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    aget-wide v8, v8, v6

    iget-object v10, p1, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    aget-wide v10, v10, v7

    sub-long/2addr v8, v10

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    aget-wide v8, v8, v6

    iget-object v10, p1, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    aget-wide v10, v10, v7

    sub-long/2addr v8, v10

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    cmp-long v8, v8, v2

    if-ltz v8, :cond_a1

    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    cmp-long v8, v8, v2

    if-ltz v8, :cond_a1

    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    cmp-long v8, v8, v2

    if-ltz v8, :cond_a1

    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    cmp-long v8, v8, v2

    if-gez v8, :cond_c1

    :cond_a1
    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    :cond_c1
    :goto_c1
    invoke-virtual {v5, v4}, Landroid/net/NetworkStatsSysApp;->addValues(Landroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_29

    :cond_c8
    return-object v5
.end method


# virtual methods
.method public addValues(Landroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp;
    .registers 6

    iget v0, p0, Landroid/net/NetworkStatsSysApp;->size:I

    iget v1, p0, Landroid/net/NetworkStatsSysApp;->capacity:I

    if-lt v0, v1, :cond_46

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    iput v0, p0, Landroid/net/NetworkStatsSysApp;->capacity:I

    :cond_46
    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    iget-object v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    iget-object v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    iget-wide v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    aput-wide v2, v0, v1

    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    iget-wide v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    aput-wide v2, v0, v1

    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    iget-wide v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    aput-wide v2, v0, v1

    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    iget-wide v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    aput-wide v2, v0, v1

    iget v0, p0, Landroid/net/NetworkStatsSysApp;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/NetworkStatsSysApp;->size:I

    return-object p0
.end method

.method public combineValues(Landroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp;
    .registers 8

    iget-object v0, p1, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkStatsSysApp;->findIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    invoke-virtual {p0, p1}, Landroid/net/NetworkStatsSysApp;->addValues(Landroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp;

    goto :goto_33

    :cond_f
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    :goto_33
    return-object p0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "NetworkStatsSysApp: elapsedRealtime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const/4 v0, 0x0

    :goto_e
    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    if-ge v0, v1, :cond_6d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " iface="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " nameOrHashs="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " rxBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " rxPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " txBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " txPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_6d
    return-void
.end method

.method public findIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 v0, -0x1

    return v0
.end method

.method public findIndexHinted(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    if-ge v0, v1, :cond_2d

    div-int/lit8 v2, v0, 0x2

    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_f

    add-int v3, p3, v2

    rem-int/2addr v3, v1

    goto :goto_15

    :cond_f
    add-int v3, v1, p3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    rem-int/2addr v3, v1

    :goto_15
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    return v3

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2d
    const/4 v0, -0x1

    return v0
.end method

.method public getElapsedRealtime()J
    .registers 3

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalPackets()J
    .registers 8

    const-wide/16 v0, 0x0

    iget v2, p0, Landroid/net/NetworkStatsSysApp;->size:I

    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-ltz v2, :cond_15

    iget-object v3, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    aget-wide v3, v3, v2

    iget-object v5, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_15
    return-wide v0
.end method

.method public getTotalRxBytes()J
    .registers 6

    const-wide/16 v0, 0x0

    iget v2, p0, Landroid/net/NetworkStatsSysApp;->size:I

    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-ltz v2, :cond_10

    iget-object v3, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    aget-wide v3, v3, v2

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_10
    return-wide v0
.end method

.method public getTotalTxBytes()J
    .registers 6

    const-wide/16 v0, 0x0

    iget v2, p0, Landroid/net/NetworkStatsSysApp;->size:I

    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-ltz v2, :cond_10

    iget-object v3, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    aget-wide v3, v3, v2

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_10
    return-wide v0
.end method

.method public getValues(ILandroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp$Entry;
    .registers 6

    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/net/NetworkStatsSysApp$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStatsSysApp$Entry;-><init>()V

    :goto_9
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    return-object v0
.end method

.method public internalSize()I
    .registers 2

    iget v0, p0, Landroid/net/NetworkStatsSysApp;->capacity:I

    return v0
.end method

.method public setElapsedRealtime(J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/net/NetworkStatsSysApp;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStatsSysApp;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/NetworkStatsSysApp;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/NetworkStatsSysApp;->capacity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
